---
layout: home
---

<div class="container my-5">
  <section class="text-center mb-5">
    <h1 class="display-4 fw-bold mb-3">Welcome to {{ site.title }}</h1>
    <p class="lead text-muted">{{ site.description }}</p>
  </section>

  <section class="mb-5">
    <h2 class="h3 fw-bold mb-4">Latest Posts</h2>
    
    <div class="row g-4">
      {% for post in site.posts limit: 6 %}
        <div class="col-md-6 col-lg-4">
          <article class="card h-100 shadow-sm">
            <div class="card-body d-flex flex-column">
              <h3 class="card-title h5">
                <a href="{{ post.url | relative_url }}" class="text-decoration-none">
                  {{ post.title | escape }}
                </a>
              </h3>
              
              <time datetime="{{ post.date | date_to_xmlschema }}" class="text-muted small mb-2">
                <i class="bi bi-calendar3"></i> {{ post.date | date: "%B %d, %Y" }}
              </time>
              
              {% if post.excerpt %}
                <p class="card-text text-muted flex-grow-1">{{ post.excerpt | strip_html | truncatewords: 20 }}</p>
              {% endif %}
              
              <a href="{{ post.url | relative_url }}" class="btn btn-primary mt-auto">
                Read more <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </article>
        </div>
      {% endfor %}
    </div>
    
    {% if site.posts.size > 6 %}
      <div class="text-center mt-4">
        <a href="{{ '/blog' | relative_url }}" class="btn btn-outline-primary">
          View All Posts
        </a>
      </div>
    {% endif %}
  </section>
</div>

