---
layout: post
title: "How to Add a New Post to Your Jekyll Blog"
date: 2025-01-11
categories: [jekyll, tutorial]
tags: [jekyll, tutorial, blogging, markdown]
excerpt: "Step-by-step guide on how to create and add a new blog post to your Jekyll site."
---

Adding a new post to your Jekyll blog is straightforward. Follow these simple steps to get started.

## Step 1: Navigate to the Posts Directory

Open the `_posts` folder in your Jekyll project:

```
my-blogs-with-bootstrap/
└── _posts/
    └── (your new post will go here)
```

## Step 2: Create a New Markdown File

Create a new file with the following naming convention:

```
YYYY-MM-DD-post-title.md
```

**Important Rules:**
- Use the format: `YYYY-MM-DD-title.md` (year-month-day-title)
- Use hyphens (`-`) instead of spaces in the filename
- Use lowercase letters (recommended)
- The date should match or be before today's date

**Examples:**
- ✅ `2025-01-11-my-awesome-post.md`
- ✅ `2025-01-15-getting-started-with-jekyll.md`
- ❌ `My Post.md` (spaces and capital letters)
- ❌ `post.md` (missing date)

## Step 3: Add Front Matter

Every Jekyll post must start with front matter (metadata) between triple dashes:

```yaml
---
layout: post
title: "Your Post Title Here"
date: 2025-01-11
categories: [category1, category2]
tags: [tag1, tag2, tag3]
excerpt: "Optional excerpt that appears in post previews"
---
```

### Front Matter Fields Explained

- **`layout`**: Always use `post` for blog posts
- **`title`**: Your post title (use quotes if it contains special characters)
- **`date`**: Publication date in `YYYY-MM-DD` format
- **`categories`**: Array of categories (optional but recommended)
- **`tags`**: Array of tags for better organization (optional)
- **`excerpt`**: Short summary for previews (optional, Jekyll can auto-generate)

### Example Front Matter

```yaml
---
layout: post
title: "Getting Started with Bootstrap Components"
date: 2025-01-11
categories: [bootstrap, web-development]
tags: [bootstrap, css, components, tutorial]
excerpt: "Learn how to use Bootstrap components effectively in your projects."
---
```

## Step 4: Write Your Content

After the front matter, write your post content using Markdown:

```markdown
---
layout: post
title: "My First Post"
date: 2025-01-11
---

# Introduction

This is my first blog post! I can use **Markdown** to format my content.

## Sections

I can create sections with headers.

### Subsection

And even subsections!

- Bullet points
- Are easy
- To create

1. Numbered lists
2. Work too
3. Automatically

**Bold text** and *italic text* are supported.

[Links](https://example.com) work as expected.

## Code Blocks

You can include code:

```javascript
function hello() {
  console.log("Hello, World!");
}
```

## Images

![Alt text](/path/to/image.jpg)
```

## Step 5: Save and Test

1. **Save your file** with the `.md` extension
2. **Restart Jekyll** if it's running:
   ```bash
   docker-compose restart
   ```
   Or use the restart script:
   ```bash
   .\restart-jekyll.bat
   ```
3. **View your post** at `http://localhost:4000`

## Complete Example

Here's a complete example of a new post file:

**File:** `_posts/2025-01-11-my-first-post.md`

```markdown
---
layout: post
title: "My First Blog Post"
date: 2025-01-11
categories: [general]
tags: [first-post, introduction]
excerpt: "Welcome to my blog! This is my first post."
---

# Welcome!

This is my first blog post. I'm excited to share my thoughts with you.

## What I'll Write About

I plan to write about:
- Web development
- Jekyll tips and tricks
- Bootstrap components
- And more!

Stay tuned for more content!
```

## Tips and Best Practices

### 1. **Use Descriptive Titles**
- Make titles clear and specific
- Include keywords for SEO
- Keep them concise but informative

### 2. **Organize with Categories**
- Use 1-3 categories per post
- Keep categories consistent across posts
- Examples: `[jekyll, tutorial]`, `[bootstrap, web-development]`

### 3. **Add Relevant Tags**
- Use 3-8 tags per post
- Tags help with discoverability
- Examples: `[docker, jekyll, setup, tutorial]`

### 4. **Write Good Excerpts**
- Keep excerpts to 1-2 sentences
- Summarize the main point
- Make readers want to click

### 5. **Use Markdown Effectively**
- Use headers for structure (`#`, `##`, `###`)
- Break up long paragraphs
- Include code examples when relevant
- Add images to make posts engaging

### 6. **Date Your Posts**
- Use the actual date you're writing
- Future-dated posts won't appear until that date
- Past dates are fine for backdating

## Common Markdown Syntax

| Element | Markdown | Result |
|---------|----------|--------|
| Heading | `# Heading` | Large heading |
| Subheading | `## Subheading` | Medium heading |
| Bold | `**bold**` | **bold** |
| Italic | `*italic*` | *italic* |
| Link | `[text](url)` | [text](url) |
| Image | `![alt](url)` | Image |
| Code | `` `code` `` | `code` |
| List | `- item` | Bullet list |
| Numbered | `1. item` | Numbered list |

## Troubleshooting

### Post Not Appearing?

1. **Check filename format**: Must be `YYYY-MM-DD-title.md`
2. **Verify front matter**: Must have `---` at start and end
3. **Check date**: Future dates won't show until that date
4. **Restart Jekyll**: Run `.\restart-jekyll.bat` or restart Docker

### Post Appears but Looks Wrong?

1. **Check layout**: Should be `layout: post`
2. **Verify Markdown syntax**: Use proper Markdown formatting
3. **Check for errors**: Look at Jekyll build output

### Need to Edit an Existing Post?

1. Open the file in `_posts/`
2. Make your changes
3. Save the file
4. Jekyll will automatically rebuild (if live reload is enabled)

## Next Steps

After creating your post:

1. ✅ Review it for spelling and grammar
2. ✅ Test all links and code examples
3. ✅ Add appropriate categories and tags
4. ✅ Include an excerpt for better previews
5. ✅ Consider adding images or diagrams
6. ✅ Share your post!

## Resources

- [Jekyll Documentation - Posts](https://jekyllrb.com/docs/posts/)
- [Markdown Guide](https://www.markdownguide.org/)
- [Bootstrap Documentation](https://getbootstrap.com/docs/5.3/) (for styling tips)

---

**Happy Blogging!** 🎉

If you have questions, check the [Jekyll documentation](https://jekyllrb.com/docs/) or review other posts in the `_posts` folder for examples.

