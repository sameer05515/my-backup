---
layout: home
---

<div class="max-w-4xl mx-auto">
  <section class="text-center mb-16">
    <h1 class="text-5xl font-bold text-gray-900 mb-4">Welcome to {{ site.title }}</h1>
    <p class="text-xl text-gray-600">{{ site.description }}</p>
  </section>

  <section class="mb-12">
    <h2 class="text-3xl font-bold text-gray-900 mb-6">Latest Posts</h2>
    
    <div class="space-y-6">
      {% for post in site.posts limit: 5 %}
        <article class="bg-white p-6 rounded-lg shadow-sm border hover:shadow-md transition-shadow">
          <h3 class="text-2xl font-bold mb-2">
            <a href="{{ post.url | relative_url }}" class="text-blue-600 hover:text-blue-800 transition-colors">
              {{ post.title | escape }}
            </a>
          </h3>
          
          <time datetime="{{ post.date | date_to_xmlschema }}" class="text-sm text-gray-600">
            {{ post.date | date: "%B %d, %Y" }}
          </time>
          
          {% if post.excerpt %}
            <p class="mt-4 text-gray-700">{{ post.excerpt | strip_html | truncatewords: 25 }}</p>
          {% endif %}
          
          <a href="{{ post.url | relative_url }}" class="inline-block mt-4 text-blue-600 hover:text-blue-800 font-semibold">
            Read more →
          </a>
        </article>
      {% endfor %}
    </div>
    
    {% if site.posts.size > 5 %}
      <div class="mt-8 text-center">
        <a href="{{ '/blog' | relative_url }}" class="btn btn-primary">
          View All Posts
        </a>
      </div>
    {% endif %}
  </section>
</div>

