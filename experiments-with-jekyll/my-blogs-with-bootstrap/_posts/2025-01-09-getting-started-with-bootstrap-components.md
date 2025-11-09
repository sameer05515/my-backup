---
layout: post
title: "Getting Started with Bootstrap 5 Components"
date: 2025-01-09
categories: [bootstrap, web-development]
tags: [bootstrap, css, components, responsive]
excerpt: "Learn how to use Bootstrap 5 components effectively in your Jekyll site."
---

Bootstrap 5 provides a comprehensive set of components that make building responsive websites easy. Let's explore some key components.

## Cards

Cards are perfect for displaying blog posts:

```html
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Card Title</h5>
    <p class="card-text">Card content goes here.</p>
    <a href="#" class="btn btn-primary">Learn More</a>
  </div>
</div>
```

## Navigation

Bootstrap's navbar component provides responsive navigation:

```html
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand" href="#">Brand</a>
    <!-- Navigation items -->
  </div>
</nav>
```

## Forms

Bootstrap forms are styled and accessible:

```html
<form>
  <div class="mb-3">
    <label class="form-label">Email</label>
    <input type="email" class="form-control">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
```

## Utilities

Bootstrap's utility classes provide quick styling:

- Spacing: `m-3`, `p-4`, `mt-5`
- Colors: `text-primary`, `bg-light`
- Display: `d-flex`, `d-none`, `d-md-block`
- Flexbox: `justify-content-center`, `align-items-center`

## Responsive Design

Bootstrap's breakpoints make responsive design easy:

- `sm`: ≥576px
- `md`: ≥768px
- `lg`: ≥992px
- `xl`: ≥1200px
- `xxl`: ≥1400px

Use them like: `col-md-6`, `d-lg-none`, `text-xl-start`

## Icons

This site includes Bootstrap Icons:

```html
<i class="bi bi-heart"></i>
<i class="bi bi-github"></i>
<i class="bi bi-calendar3"></i>
```

Explore the [Bootstrap Icons](https://icons.getbootstrap.com/) library for more options!

