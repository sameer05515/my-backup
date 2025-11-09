# My Blogs with Bootstrap

A modern, production-ready Jekyll blog with Bootstrap 5, Docker support, and best practices built-in.

## ✨ Features

- 🐳 **Dockerized Development** - Zero-config setup with Docker Compose
- 🎨 **Bootstrap 5** - Popular CSS framework for responsive design
- 📝 **Blog Support** - Write posts in Markdown with categories and tags
- 🚀 **Performance Optimized** - Incremental builds and CDN-delivered CSS
- 📱 **Responsive Design** - Mobile-first approach with Bootstrap grid
- 🔍 **SEO Ready** - Built-in SEO tags and sitemap generation
- 📊 **RSS Feed** - Automatic feed generation
- 🌙 **Dark Mode** - Built-in theme toggle with localStorage persistence
- 🎯 **Best Practices** - Clean structure, proper configuration, and modern tooling

## 🚀 Quick Start

### Prerequisites

- [Docker](https://www.docker.com/get-started) and Docker Compose installed
- Git (for version control)

### Getting Started

1. **Navigate to the project directory:**

```bash
cd experiments-with-jekyll/my-blogs-with-bootstrap
```

2. **Start the development server:**

```bash
docker-compose up --build
```

The site will be available at `http://localhost:4000`

3. **Stop the server:**

```bash
docker-compose down
```

## 📁 Project Structure

```
my-blogs-with-bootstrap/
├── _config.yml          # Jekyll configuration
├── _layouts/            # HTML layouts (default, post, page, home)
├── _posts/              # Blog posts (YYYY-MM-DD-title.md format)
├── _includes/           # Reusable includes
├── assets/
│   ├── css/
│   │   └── custom.css   # Custom CSS styles
│   └── js/
│       └── theme-toggle.js  # Dark mode toggle script
├── docker-compose.yml   # Docker Compose configuration
├── Dockerfile           # Docker image definition
├── Gemfile              # Ruby dependencies
├── index.md             # Homepage
├── about.md             # About page
├── blog.md              # Blog listing page
├── 404.html             # Custom 404 page
└── restart-jekyll.bat   # Script to restart Jekyll
```

## 🛠️ Development

### Development Commands

**Start Development Server:**
```bash
docker-compose up --build
```

**Stop Development Server:**
```bash
docker-compose down
```

**Restart with Cache Clean (PowerShell):**
```powershell
.\restart-jekyll.bat
```

**Rebuild from Scratch:**
```bash
docker-compose build --no-cache
docker-compose up
```

**Clean Build Artifacts (PowerShell):**
```powershell
Remove-Item -Recurse -Force .\_site, .\.jekyll-cache
```

### Local Development (Without Docker)

If you prefer to develop locally:

1. **Install Ruby dependencies:**
```bash
bundle install
```

2. **Start Jekyll server:**
```bash
bundle exec jekyll serve
```

## 📝 Writing Posts

Create new posts in the `_posts/` directory with the format:

```
YYYY-MM-DD-post-title.md
```

**Example post front matter:**

```yaml
---
layout: post
title: "Your Post Title"
date: 2025-01-10
categories: [category1, category2]
tags: [tag1, tag2]
excerpt: "Optional excerpt for preview"
---
```

## 🎨 Bootstrap 5 Integration

### CDN Setup

Bootstrap 5 is loaded via CDN in the `default.html` layout:

- **Bootstrap CSS**: Latest version from jsDelivr CDN
- **Bootstrap JS**: Bundle with Popper.js included
- **Bootstrap Icons**: Icon library for UI elements

### Using Bootstrap Components

#### Cards

```html
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Title</h5>
    <p class="card-text">Content</p>
  </div>
</div>
```

#### Buttons

```html
<button class="btn btn-primary">Primary</button>
<button class="btn btn-outline-secondary">Outline</button>
```

#### Grid System

```html
<div class="row">
  <div class="col-md-6">Column 1</div>
  <div class="col-md-6">Column 2</div>
</div>
```

#### Navigation

The site includes a responsive navbar with:
- Collapsible mobile menu
- Theme toggle button
- Bootstrap Icons

### Custom Styling

Add custom styles in `assets/css/custom.css`:

```css
/* Your custom styles */
.custom-class {
  /* styles */
}
```

## 🌙 Dark Mode

The site includes a built-in dark mode toggle:

- **Toggle Button**: Sun/moon icon in navigation
- **Persistent**: Preference saved in localStorage
- **Smooth Transitions**: CSS transitions for theme changes
- **Bootstrap Compatible**: Uses Bootstrap's dark mode utilities

### How It Works

1. Click the theme toggle button in the navigation
2. Theme preference is saved to localStorage
3. The `data-bs-theme` attribute is toggled on `<html>`
4. Bootstrap and custom CSS respond to theme changes

## ⚙️ Configuration

### Jekyll Configuration (`_config.yml`)

Key settings:

- **Site Information**: Title, description, email, URL
- **Plugins**: jekyll-feed, jekyll-sitemap, jekyll-seo-tag, jekyll-paginate
- **Pagination**: 10 posts per page
- **Markdown**: Kramdown with GFM syntax

### Docker Configuration

The `Dockerfile` includes:

- Jekyll base image
- All Ruby dependencies
- Proper permissions setup

The `docker-compose.yml` handles:

- Volume mounting for live reload
- Port mapping (4000:4000)
- Environment variables
- Live reload enabled

## 🚢 Deployment

### Building for Production

The site generates static files in the `_site/` directory.

**Production build command:**
```bash
docker-compose run --rm jekyll jekyll build
```

### Deployment Options

- **GitHub Pages**: Push `_site/` contents to `gh-pages` branch
- **Netlify**: Connect your repository (auto-builds)
- **Vercel**: Connect your repository (auto-builds)
- **Any Static Host**: Upload `_site/` folder contents

### Production Considerations

1. **Optimize Images**: Use WebP format and compress images
2. **CDN**: Bootstrap is already loaded from CDN
3. **Enable Caching**: Configure your hosting provider
4. **Set Environment Variables**: Update `_config.yml` with production URL

## 🔧 Best Practices

### Code Organization

- ✅ Keep layouts modular and reusable
- ✅ Use includes for repeated components
- ✅ Organize assets by type (css, js, images)
- ✅ Follow Jekyll naming conventions

### Performance

- ✅ Use incremental builds (`incremental: true`)
- ✅ Bootstrap loaded from CDN (cached by browsers)
- ✅ Optimize images before adding
- ✅ Minimize custom CSS

### SEO

- ✅ Fill in site metadata in `_config.yml`
- ✅ Use descriptive post titles and descriptions
- ✅ Add alt text to images
- ✅ Use semantic HTML (Bootstrap provides this)

### Accessibility

- ✅ Bootstrap components are accessible by default
- ✅ Use proper heading hierarchy
- ✅ Include ARIA labels where needed
- ✅ Test with screen readers

## 🐛 Troubleshooting

### Port Already in Use

If port 4000 is already in use, modify `docker-compose.yml`:

```yaml
ports:
  - "4001:4000"  # Change 4001 to any available port
```

### Changes Not Reflecting

1. Stop the server: `docker-compose down`
2. Clean cache: `Remove-Item -Recurse -Force .\_site, .\.jekyll-cache`
3. Restart: `docker-compose up --build`

### Docker Issues

- Ensure Docker Desktop is running
- Check Docker logs: `docker-compose logs`
- Rebuild from scratch: `docker-compose build --no-cache`

### Bootstrap Not Loading

- Check internet connection (Bootstrap loads from CDN)
- Verify CDN URLs in `_layouts/default.html`
- Check browser console for errors

## 📚 Dependencies

### Ruby Gems

- **Jekyll**: ~> 4.3
- **jekyll-feed**: RSS feed generation
- **jekyll-sitemap**: Sitemap generation
- **jekyll-seo-tag**: SEO optimization
- **jekyll-paginate**: Pagination support
- **webrick**: Required for serving the site

### External Resources (CDN)

- **Bootstrap 5.3.2**: CSS framework
- **Bootstrap Icons 1.11.1**: Icon library

## 📖 Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Bootstrap 5 Documentation](https://getbootstrap.com/docs/5.3/)
- [Bootstrap Icons](https://icons.getbootstrap.com/)
- [Docker Documentation](https://docs.docker.com/)

## 🆚 Bootstrap vs Tailwind

This project uses **Bootstrap 5**, which differs from Tailwind CSS:

| Feature | Bootstrap 5 | Tailwind CSS |
|---------|-------------|--------------|
| Approach | Component-based | Utility-first |
| Setup | CDN or npm | Build process required |
| Learning Curve | Easier for beginners | Steeper learning curve |
| Customization | Variables and overrides | Configuration file |
| Bundle Size | Larger (but CDN cached) | Smaller (purged) |

Choose Bootstrap if you prefer:
- Pre-built components
- Faster initial development
- CDN delivery (no build step)
- Familiar component patterns

## 📄 License

[Add your license here]

## 🤝 Contributing

[Add contribution guidelines if applicable]

---

**Built with ❤️ using Jekyll, Bootstrap 5, and Docker**

