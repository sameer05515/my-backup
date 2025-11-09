# My Jekyll Site

A modern, Dockerized Jekyll static site generator setup with support for blogging, pages, categories, tags, and archives. This project uses the Chirpy theme (with Minima as fallback) and includes Progressive Web App (PWA) capabilities.

## Features

- 🐳 **Dockerized Development** - Easy setup with Docker Compose
- 📝 **Blog Support** - Write posts in Markdown with pagination
- 🏷️ **Categories & Tags** - Organize content with categories and tags
- 📑 **Archives** - Automatic archive generation
- 🎨 **Modern Theme** - Chirpy theme with dark/light mode support
- 📱 **PWA Enabled** - Progressive Web App capabilities
- 🔍 **SEO Ready** - Built-in SEO optimization features
- 📊 **Feed Generation** - RSS feed support
- 💬 **Comments Ready** - Prepared for Disqus/Utterances/Giscus integration

## Prerequisites

- [Docker](https://www.docker.com/get-started) and Docker Compose installed
- Git (for version control)

## Quick Start

### 1. Clone and Navigate

```bash
cd experiments-with-jekyll/my-jekyll-site
```

### 2. Start the Development Server

```bash
docker-compose up --build
```

The site will be available at `http://localhost:4000`

### 3. Stop the Server

```bash
docker-compose down
```

## Development Commands

### Start Development Server

```bash
docker-compose up --build
```

### Stop Development Server

```bash
docker-compose down
```

### Clean Build Artifacts (PowerShell)

```powershell
Remove-Item -Recurse -Force .\_site, .\.jekyll-cache
```

### Restart Development Server (Combined Command)

```powershell
docker-compose down; Remove-Item -Recurse -Force .\_site, .\.jekyll-cache ; docker-compose up --build
```

## Project Structure

```
my-jekyll-site/
├── _config.yml          # Jekyll configuration file
├── _data/               # Data files (YAML, JSON, CSV)
├── _layouts/            # HTML layouts (archives, categories, tags)
├── _plugins/            # Custom Jekyll plugins
├── _posts/              # Blog posts (YYYY-MM-DD-title.md format)
├── _sass/               # Sass stylesheets
├── _site/               # Generated site (ignored by git)
├── _tabs/               # Navigation tabs/pages (about, archives, etc.)
├── assets/              # Static assets (images, CSS, JS)
├── images/              # Image files
├── docker-compose.yml   # Docker Compose configuration
├── Dockerfile           # Docker image definition
├── Gemfile              # Ruby dependencies
└── index.md             # Homepage content
```

## Configuration

### Main Configuration (`_config.yml`)

Key settings you may want to customize:

- **Site Information**: Title, description, URL, language
- **Theme**: Currently set to `minima` (Chirpy theme available)
- **Theme Mode**: Dark mode enabled (`theme_mode: dark`)
- **Pagination**: 10 posts per page
- **Social Links**: Twitter, GitHub, LinkedIn, Email
- **Avatar**: Set to `assets/img/prem.webp`
- **PWA**: Enabled
- **Comments**: Disabled by default (can enable Disqus/Utterances/Giscus)

### Adding a New Post

Create a new file in `_posts/` with the format:
```
YYYY-MM-DD-post-title.md
```

Example front matter:
```yaml
---
layout: post
title: "Your Post Title"
date: 2025-01-04
categories: [Category1, Category2]
tags: [tag1, tag2]
---
```

### Adding a New Page/Tab

Create a new file in `_tabs/` directory with front matter:
```yaml
---
layout: page
title: "Page Title"
permalink: /page-url/
---
```

## Customization

### Changing the Theme

Edit `_config.yml`:
```yaml
theme: jekyll-theme-chirpy  # or minima
```

### Updating Social Links

Edit the `social` section in `_config.yml`:
```yaml
social:
  twitter: "your-twitter-username"
  github: "your-github-username"
  linkedin: "your-linkedin-username"
  email: "your-email@example.com"
```

### Enabling Comments

Set `comments.active: true` in `_config.yml` and configure your preferred commenting system (Disqus, Utterances, or Giscus).

## Deployment

### Building for Production

The site generates static files in the `_site/` directory. You can deploy this folder to:

- **GitHub Pages**: Push `_site/` contents to `gh-pages` branch
- **Netlify**: Connect your repository (auto-builds)
- **Vercel**: Connect your repository (auto-builds)
- **Any Static Host**: Upload `_site/` folder contents

### Production Build Command

```bash
docker-compose run --rm jekyll_site jekyll build
```

## Troubleshooting

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

## References

### Learning Resources

- [**Meet Jekyll - The Static Site Generator**](https://www.youtube.com/watch?v=F8iOU1ci19Q&t=203s)

### Theme Examples

- [**TSdreamer.github.io**](https://github.com/timothystewart6/TSdreamer.github.io) - A good looking site example with Jekyll
- [**Jekyll Theme Chirpy Documentation**](https://github.com/cotes2020/jekyll-theme-chirpy#documentation) - Chirpy theme documentation

## License

[Add your license here]

## Contributing

[Add contribution guidelines if applicable]
