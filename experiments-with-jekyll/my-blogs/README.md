# My Blogs

A modern, production-ready Jekyll blog with Tailwind CSS, Docker support, and best practices built-in.

## ✨ Features

- 🐳 **Dockerized Development** - Zero-config setup with Docker Compose
- 🎨 **Tailwind CSS** - Modern utility-first CSS framework
- 📝 **Blog Support** - Write posts in Markdown with categories and tags
- 🚀 **Performance Optimized** - Incremental builds and compressed assets
- 📱 **Responsive Design** - Mobile-first approach
- 🔍 **SEO Ready** - Built-in SEO tags and sitemap generation
- 📊 **RSS Feed** - Automatic feed generation
- 🎯 **Best Practices** - Clean structure, proper configuration, and modern tooling

## 🚀 Quick Start

### Prerequisites

- [Docker](https://www.docker.com/get-started) and Docker Compose installed
- Git (for version control)

### Getting Started

1. **Navigate to the project directory:**

```bash
cd experiments-with-jekyll/my-blogs
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
my-blogs/
├── _config.yml          # Jekyll configuration
├── _layouts/            # HTML layouts (default, post, page, home)
├── _posts/              # Blog posts (YYYY-MM-DD-title.md format)
├── _sass/               # Sass stylesheets (if needed)
├── assets/
│   └── css/
│       ├── main.css     # Tailwind CSS source file
│       └── style.css    # Compiled CSS (generated)
├── docker-compose.yml   # Docker Compose configuration
├── Dockerfile           # Docker image definition
├── Gemfile              # Ruby dependencies
├── package.json         # Node.js dependencies (Tailwind CSS)
├── tailwind.config.js   # Tailwind CSS configuration
├── postcss.config.js    # PostCSS configuration
├── index.md             # Homepage
├── about.md             # About page
├── blog.md              # Blog listing page
└── 404.html             # Custom 404 page
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

**Rebuild from Scratch:**
```bash
docker-compose build --no-cache
docker-compose up
```

**Clean Build Artifacts (PowerShell):**
```powershell
Remove-Item -Recurse -Force .\_site, .\.jekyll-cache
```

**Restart Development Server (PowerShell):**
```powershell
docker-compose down; Remove-Item -Recurse -Force .\_site, .\.jekyll-cache; docker-compose up --build
```

### Local Development (Without Docker)

If you prefer to develop locally:

1. **Install Ruby dependencies:**
```bash
bundle install
```

2. **Install Node.js dependencies:**
```bash
npm install
```

3. **Build Tailwind CSS:**
```bash
npm run build:css
```

4. **Watch Tailwind CSS (in a separate terminal):**
```bash
npm run watch:css
```

5. **Start Jekyll server:**
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
date: 2025-01-09
categories: [category1, category2]
tags: [tag1, tag2]
---
```

## 🎨 Customizing Styles

### Tailwind CSS Configuration

Edit `tailwind.config.js` to customize:

- Colors
- Typography
- Spacing
- Breakpoints
- And more...

### Custom Styles

Add custom styles in `assets/css/main.css` using Tailwind's `@layer` directive:

```css
@layer components {
  .btn-custom {
    @apply px-4 py-2 bg-blue-600 text-white rounded-lg;
  }
}
```

### Layouts

Modify layouts in `_layouts/` directory:

- `default.html` - Base layout
- `post.html` - Blog post layout
- `page.html` - Static page layout
- `home.html` - Homepage layout

## ⚙️ Configuration

### Jekyll Configuration (`_config.yml`)

Key settings:

- **Site Information**: Title, description, email, URL
- **Theme**: Currently using `minima` theme
- **Plugins**: jekyll-feed, jekyll-sitemap, jekyll-seo-tag
- **Pagination**: 10 posts per page
- **Markdown**: Kramdown with GFM syntax

### Docker Configuration

The `Dockerfile` includes:

- Jekyll base image
- Node.js and npm for Tailwind CSS
- All Ruby and Node dependencies

The `docker-compose.yml` handles:

- Volume mounting for live reload
- Port mapping (4000:4000)
- Environment variables
- Automatic CSS build on startup

## 🚢 Deployment

### Building for Production

The site generates static files in the `_site/` directory.

**Production build command:**
```bash
docker-compose run --rm jekyll sh -c "npm run build:css && jekyll build"
```

### Deployment Options

- **GitHub Pages**: Push `_site/` contents to `gh-pages` branch
- **Netlify**: Connect your repository (auto-builds)
- **Vercel**: Connect your repository (auto-builds)
- **Any Static Host**: Upload `_site/` folder contents

### Production Considerations

1. **Optimize Images**: Use WebP format and compress images
2. **Minify CSS/JS**: Already handled by Jekyll and Tailwind
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
- ✅ Compress CSS (`sass.style: compressed`)
- ✅ Optimize images before adding
- ✅ Use Tailwind's purge feature (automatic)

### SEO

- ✅ Fill in site metadata in `_config.yml`
- ✅ Use descriptive post titles and descriptions
- ✅ Add alt text to images
- ✅ Use semantic HTML in layouts

### Security

- ✅ Keep dependencies updated
- ✅ Use `.gitignore` to exclude sensitive files
- ✅ Review Docker image regularly

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

### CSS Not Updating

1. Ensure Tailwind CSS is built: `npm run build:css`
2. Check that `assets/css/style.css` exists
3. Verify PostCSS is running in Docker

### Docker Issues

- Ensure Docker Desktop is running
- Check Docker logs: `docker-compose logs`
- Rebuild from scratch: `docker-compose build --no-cache`

## 📚 Dependencies

### Ruby Gems

- **Jekyll**: ~> 4.3
- **Minima Theme**: ~> 2.5
- **jekyll-feed**: RSS feed generation
- **jekyll-sitemap**: Sitemap generation
- **jekyll-seo-tag**: SEO optimization
- **webrick**: Required for serving the site

### Node.js Packages

- **tailwindcss**: ^3.4.0
- **postcss**: ^8.4.32
- **postcss-cli**: ^10.1.0
- **autoprefixer**: ^10.4.16

## 📖 Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [Docker Documentation](https://docs.docker.com/)
- [Minima Theme](https://github.com/jekyll/minima)

## 📄 License

[Add your license here]

## 🤝 Contributing

[Add contribution guidelines if applicable]

---

**Built with ❤️ using Jekyll, Tailwind CSS, and Docker**

