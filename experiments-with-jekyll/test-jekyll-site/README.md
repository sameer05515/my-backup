# Test Jekyll Site

A simple, Dockerized Jekyll static site generator setup using the default Minima theme. This is a basic starter/test site for learning and experimenting with Jekyll.

## Features

- 🐳 **Dockerized Development** - Easy setup with Docker Compose
- 📝 **Blog Support** - Write posts in Markdown
- 🎨 **Minima Theme** - Default Jekyll theme
- 📄 **Pages** - Support for static pages (About page included)
- 🔍 **RSS Feed** - Automatic feed generation with jekyll-feed plugin

## Prerequisites

- [Docker](https://www.docker.com/get-started) and Docker Compose installed
- Git (for version control)

## Quick Start

### 1. Navigate to the Project Directory

```bash
cd experiments-with-jekyll/test-jekyll-site
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
test-jekyll-site/
├── _config.yml          # Jekyll configuration file
├── _posts/              # Blog posts (YYYY-MM-DD-title.md format)
├── _site/               # Generated site (ignored by git)
├── docker-compose.yml   # Docker Compose configuration
├── Dockerfile           # Docker image definition
├── Gemfile              # Ruby dependencies
├── Gemfile.lock         # Locked dependency versions
├── index.markdown       # Homepage content
├── about.markdown       # About page
└── 404.html            # Custom 404 error page
```

## Configuration

### Main Configuration (`_config.yml`)

Key settings you may want to customize:

- **Site Information**: Title, description, email, URL
- **Theme**: Currently set to `minima` (default Jekyll theme)
- **Plugins**: `jekyll-feed` enabled for RSS feed generation
- **Social Links**: Twitter and GitHub usernames

### Adding a New Post

Create a new file in `_posts/` with the format:
```
YYYY-MM-DD-post-title.markdown
```

Example front matter:
```yaml
---
layout: post
title: "Your Post Title"
date: 2025-01-04
categories: category1 category2
---
```

### Adding a New Page

Create a new `.markdown` file in the root directory with front matter:
```yaml
---
layout: page
title: "Page Title"
permalink: /page-url/
---
```

## Customization

### Updating Site Information

Edit `_config.yml`:
```yaml
title: Your awesome title
email: your-email@example.com
description: Your site description
twitter_username: your-twitter-handle
github_username: your-github-username
```

### Changing the Theme

Edit `_config.yml`:
```yaml
theme: minima  # or any other Jekyll theme
```

## Deployment

### Building for Production

The site generates static files in the `_site/` directory. You can deploy this folder to:

- **GitHub Pages**: Push `_site/` contents to `gh-pages` branch
- **Netlify**: Connect your repository (auto-builds)
- **Vercel**: Connect your repository (auto-builds)
- **Any Static Host**: Upload `_site/` folder contents

### Production Build Command

```bash
docker-compose run --rm jekyll jekyll build
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

## Dependencies

- **Jekyll**: ~> 4.2.2
- **Minima Theme**: ~> 2.5
- **jekyll-feed**: For RSS feed generation
- **webrick**: Required for serving the site

## References

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Minima Theme](https://github.com/jekyll/minima)
- [Jekyll on GitHub Pages](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll)

## License

[Add your license here]

## Contributing

[Add contribution guidelines if applicable]

