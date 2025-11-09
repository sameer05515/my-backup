---
layout: page
title: Blog
permalink: /blog/
---

<div class="max-w-4xl mx-auto">
  <h1 class="text-4xl font-bold text-gray-900 mb-8">All Posts</h1>
  
  <div class="space-y-8">
    {% for post in site.posts %}
      <article class="border-b pb-8">
        <h2 class="text-2xl font-bold mb-2">
          <a href="{{ post.url | relative_url }}" class="text-blue-600 hover:text-blue-800 transition-colors">
            {{ post.title | escape }}
          </a>
        </h2>
        
        <time datetime="{{ post.date | date_to_xmlschema }}" class="text-sm text-gray-600">
          {{ post.date | date: "%B %d, %Y" }}
        </time>
        
        {% if post.categories.size > 0 %}
          <div class="mt-2 mb-4">
            {% for category in post.categories %}
              <span class="inline-block px-2 py-1 bg-gray-100 text-gray-700 rounded text-xs mr-2">
                {{ category }}
              </span>
            {% endfor %}
          </div>
        {% endif %}
        
        {% if post.excerpt %}
          <p class="mt-4 text-gray-700">{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
        {% endif %}
        
        <a href="{{ post.url | relative_url }}" class="inline-block mt-4 text-blue-600 hover:text-blue-800 font-semibold">
          Read more →
        </a>
      </article>
    {% endfor %}
  </div>
</div>

