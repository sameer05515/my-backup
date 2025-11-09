---
layout: home
title: Home Page
description: Welcome to my personal website built with Jekyll!
pagination: true
# Index page
---

# Welcome to My Site

This is the home page of my Jekyll-powered website. You can customize this content as you like.

## About Me

Write a little about yourself, your skills, or whatever you'd like to showcase on your homepage.


<ul>
  {% for post in paginator.posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

<div class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path | relative_url }}">Previous</a>
  {% endif %}

  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path | relative_url }}">Next</a>
  {% endif %}
</div>

