---
layout: post
title: "Welcome to Jekyll with Bootstrap 5"
date: 2025-01-10
categories: [jekyll, bootstrap]
tags: [jekyll, bootstrap, docker, web-development]
excerpt: "Get started with Jekyll and Bootstrap 5 for building modern, responsive static websites."
---

Welcome to your new Jekyll blog powered by Bootstrap 5! This post will guide you through the features and setup.

## Features

This setup includes:

- **Jekyll 4.3** - Modern static site generator
- **Bootstrap 5** - Popular CSS framework for responsive design
- **Docker** - Containerized development environment
- **Dark Mode** - Built-in theme toggle
- **Best Practices** - Clean structure and configuration

## Getting Started

To start developing:

```bash
docker-compose up --build
```

The site will be available at `http://localhost:4000`.

## Bootstrap Components

This site uses Bootstrap 5's powerful component system:

### Cards

```html
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Card Title</h5>
    <p class="card-text">Card content</p>
  </div>
</div>
```

### Buttons

```html
<button class="btn btn-primary">Primary Button</button>
<button class="btn btn-outline-secondary">Outline Button</button>
```

### Grid System

Bootstrap's responsive grid makes layout easy:

```html
<div class="row">
  <div class="col-md-6">Column 1</div>
  <div class="col-md-6">Column 2</div>
</div>
```

## Writing Posts

Create new posts in the `_posts` directory with the format:

```
YYYY-MM-DD-post-title.md
```

## Styling

This site uses Bootstrap 5 via CDN, so no build step is needed. You can:

1. Use Bootstrap utility classes directly
2. Customize with `assets/css/custom.css`
3. Override Bootstrap variables if needed

## Dark Mode

Click the sun/moon icon in the navigation to toggle between light and dark themes. Your preference is saved automatically.

Happy blogging!

