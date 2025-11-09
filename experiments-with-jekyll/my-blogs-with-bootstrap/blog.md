---
layout: page
title: Blog
permalink: /blog/
---

<div class="container my-5">
  <div class="row justify-content-center">
    <div class="col-lg-10">
      <h1 class="display-5 fw-bold mb-4">All Posts</h1>
      
      <div class="row g-4">
        {% for post in site.posts %}
          <div class="col-12">
            <article class="card shadow-sm">
              <div class="card-body">
                <h2 class="card-title h4">
                  <a href="{{ post.url | relative_url }}" class="text-decoration-none">
                    {{ post.title | escape }}
                  </a>
                </h2>
                
                <div class="d-flex align-items-center gap-3 mb-3">
                  <time datetime="{{ post.date | date_to_xmlschema }}" class="text-muted small">
                    <i class="bi bi-calendar3"></i> {{ post.date | date: "%B %d, %Y" }}
                  </time>
                  
                  {% if post.categories.size > 0 %}
                    <div>
                      {% for category in post.categories %}
                        <span class="badge bg-secondary me-1">{{ category }}</span>
                      {% endfor %}
                    </div>
                  {% endif %}
                </div>
                
                {% if post.excerpt %}
                  <p class="card-text text-muted">{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
                {% endif %}
                
                <a href="{{ post.url | relative_url }}" class="btn btn-primary">
                  Read more <i class="bi bi-arrow-right"></i>
                </a>
              </div>
            </article>
          </div>
        {% endfor %}
      </div>
    </div>
  </div>
</div>

