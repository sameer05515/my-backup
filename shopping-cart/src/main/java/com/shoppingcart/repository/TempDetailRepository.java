package com.shoppingcart.repository;

import com.shoppingcart.entity.TempDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TempDetailRepository extends JpaRepository<TempDetail, Long> {
}

