---
layout: post
title: "Using Jekyll with Tailwind CSS: A Modern Static Site Setup"
date: 2025-01-10
categories: [jekyll, tailwind, web-development]
tags: [jekyll, tailwind, css, static-site, docker, postcss]
excerpt: "Learn how to combine Jekyll's powerful static site generation with Tailwind CSS's utility-first approach for a modern, efficient development workflow."
---

Combining Jekyll's powerful static site generation with Tailwind CSS's utility-first approach creates a modern, efficient development workflow. This post explores how to integrate these two technologies effectively.

## Why Jekyll + Tailwind CSS?

**Jekyll** is a static site generator that transforms your plain text into a static website. It's perfect for blogs, documentation, and portfolio sites.

**Tailwind CSS** is a utility-first CSS framework that allows you to rapidly build modern user interfaces without writing custom CSS.

Together, they provide:
- **Fast Development**: Write content in Markdown, style with utility classes
- **Performance**: Static sites load quickly, Tailwind's purging keeps CSS small
- **Maintainability**: No complex CSS architecture needed
- **Flexibility**: Full control over styling without theme limitations

## How It Works

### 1. PostCSS Integration

Tailwind CSS is processed through PostCSS, which runs before Jekyll builds your site:

```bash
npm run build:css  # Compiles Tailwind CSS
jekyll build       # Generates static site
```

### 2. File Structure

```
my-blogs/
├── assets/
│   └── css/
│       ├── main.css      # Tailwind source file
│       └── style.css     # Compiled CSS (generated)
├── _layouts/
│   └── default.html      # Layout with Tailwind classes
└── _posts/
    └── *.md              # Markdown posts
```

### 3. Tailwind Configuration

The `tailwind.config.js` file tells Tailwind where to look for classes:

```javascript
module.exports = {
  content: [
    './_layouts/**/*.html',
    './_posts/**/*.{md,html}',
    './*.{md,html}',
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

## Key Benefits

### 1. **No Custom CSS Needed**

Instead of writing CSS, use utility classes directly in your HTML:

```html
<div class="max-w-4xl mx-auto px-4 py-8">
  <h1 class="text-4xl font-bold text-gray-900 mb-4">Title</h1>
  <p class="text-gray-700">Content here</p>
</div>
```

### 2. **Responsive by Default**

Tailwind's responsive utilities make mobile-first design easy:

```html
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
  <!-- Responsive grid -->
</div>
```

### 3. **Consistent Design System**

Tailwind provides a consistent spacing, color, and typography scale:

- Spacing: `p-4`, `m-8`, `gap-6`
- Colors: `bg-blue-600`, `text-gray-700`, `border-gray-200`
- Typography: `text-xl`, `font-bold`, `leading-relaxed`

## Docker Integration

Using Docker Compose makes the setup seamless:

```yaml
services:
  jekyll:
    build: .
    volumes:
      - .:/srv/jekyll
    ports:
      - "4000:4000"
    command: >
      sh -c "
        npm run build:css &&
        jekyll serve --host 0.0.0.0 --force_polling --livereload
      "
```

The CSS is built automatically when the container starts, and Jekyll serves the site with live reload.

## Best Practices

### 1. **Use Layouts for Consistency**

Create reusable layouts in `_layouts/`:

```html
<!-- _layouts/default.html -->
<main class="container mx-auto px-4 py-8">
  {{ content }}
</main>
```

### 2. **Customize Tailwind Theme**

Extend Tailwind's default theme in `tailwind.config.js`:

```javascript
theme: {
  extend: {
    colors: {
      primary: {
        600: '#2563eb',
        700: '#1d4ed8',
      },
    },
  },
}
```

### 3. **Use @layer for Custom Styles**

Add custom component classes when needed:

```css
@layer components {
  .btn-primary {
    @apply px-4 py-2 bg-blue-600 text-white rounded-lg;
  }
}
```

## Common Patterns

### Card Component

```html
<article class="bg-white p-6 rounded-lg shadow-sm border hover:shadow-md transition-shadow">
  <h2 class="text-2xl font-bold mb-2">Card Title</h2>
  <p class="text-gray-700">Card content</p>
</article>
```

### Navigation

```html
<nav class="bg-white shadow-sm border-b">
  <div class="container mx-auto px-4 py-4">
    <div class="flex justify-between items-center">
      <a href="/" class="text-2xl font-bold">Site Name</a>
      <div class="flex space-x-6">
        <a href="/about">About</a>
        <a href="/blog">Blog</a>
      </div>
    </div>
  </div>
</nav>
```

## Performance Considerations

1. **CSS Purging**: Tailwind automatically removes unused CSS in production
2. **Static Generation**: Jekyll pre-renders everything at build time
3. **No Runtime**: No JavaScript framework overhead
4. **CDN Ready**: Generated files can be served from any CDN

## Conclusion

Jekyll + Tailwind CSS is a powerful combination for building modern static sites. You get:

- ✅ Fast development with utility classes
- ✅ Excellent performance with static generation
- ✅ Easy maintenance without complex CSS
- ✅ Full control over design
- ✅ Docker-based development environment

Start building your next blog or documentation site with this modern stack!

## Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [PostCSS Documentation](https://postcss.org/)
- [Docker Documentation](https://docs.docker.com/)

---

*This site is built with Jekyll and Tailwind CSS. Check out the [GitHub repository](https://github.com) for the source code.*

