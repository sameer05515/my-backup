package com.shoppingcart.service;

import com.shoppingcart.dto.*;
import com.shoppingcart.entity.Book;
import com.shoppingcart.entity.Order;
import com.shoppingcart.entity.OrderDetail;
import com.shoppingcart.repository.BookRepository;
import com.shoppingcart.repository.OrderDetailRepository;
import com.shoppingcart.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Autowired
    private BookRepository bookRepository;

    public OrderResponseDTO createOrder(OrderRequestDTO orderRequest) {
        // Create order
        Order order = new Order();
        order.setUserId(orderRequest.getUserId());
        order.setOrderDate(LocalDate.now().format(DateTimeFormatter.ofPattern("yyyyMMdd")));
        order.setTotalAmount(BigDecimal.ZERO);

        // Calculate total and validate books
        BigDecimal totalAmount = BigDecimal.ZERO;
        for (OrderItemDTO item : orderRequest.getItems()) {
            Book book = bookRepository.findById(item.getBookId())
                    .orElseThrow(() -> new RuntimeException("Book not found with id: " + item.getBookId()));
            
            if (book.getQuantity() < item.getQuantity()) {
                throw new RuntimeException("Insufficient stock for book: " + book.getTitle());
            }
            
            BigDecimal itemTotal = book.getPrice().multiply(BigDecimal.valueOf(item.getQuantity()));
            totalAmount = totalAmount.add(itemTotal);
        }

        order.setTotalAmount(totalAmount);
        Order savedOrder = orderRepository.save(order);

        // Create order details and update book quantities
        for (OrderItemDTO item : orderRequest.getItems()) {
            Book book = bookRepository.findById(item.getBookId()).orElseThrow();
            
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setOrderId(savedOrder.getOrderId());
            orderDetail.setBookId(item.getBookId());
            orderDetail.setQuantity(item.getQuantity());
            orderDetailRepository.save(orderDetail);

            // Update book quantity
            book.setQuantity(book.getQuantity() - item.getQuantity());
            bookRepository.save(book);
        }

        return getOrderById(savedOrder.getOrderId());
    }

    public OrderResponseDTO getOrderById(Integer orderId) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new RuntimeException("Order not found with id: " + orderId));
        
        List<OrderDetail> orderDetails = orderDetailRepository.findByOrderId(orderId);
        
        OrderResponseDTO response = new OrderResponseDTO();
        response.setOrderId(order.getOrderId());
        response.setUserId(order.getUserId());
        response.setTotalAmount(order.getTotalAmount());
        response.setOrderDate(order.getOrderDate());
        
        List<OrderItemResponseDTO> items = orderDetails.stream().map(detail -> {
            Book book = bookRepository.findById(detail.getBookId()).orElseThrow();
            OrderItemResponseDTO itemDTO = new OrderItemResponseDTO();
            itemDTO.setBookId(detail.getBookId());
            itemDTO.setBookTitle(book.getTitle());
            itemDTO.setQuantity(detail.getQuantity());
            itemDTO.setPrice(book.getPrice());
            itemDTO.setSubtotal(book.getPrice().multiply(BigDecimal.valueOf(detail.getQuantity())));
            return itemDTO;
        }).collect(Collectors.toList());
        
        response.setItems(items);
        return response;
    }

    public List<OrderResponseDTO> getOrdersByUserId(String userId) {
        List<Order> orders = orderRepository.findByUserId(userId);
        return orders.stream()
                .map(order -> getOrderById(order.getOrderId()))
                .collect(Collectors.toList());
    }

    public List<OrderResponseDTO> getAllOrders() {
        return orderRepository.findAll().stream()
                .map(order -> getOrderById(order.getOrderId()))
                .collect(Collectors.toList());
    }
}

