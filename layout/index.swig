{% extends 'structure.swig' %}

{% block content %}
  <div class="index-posts">
    {% for post in page.posts %}
      <section class="index-post">
        <a class="index-post__link" href="{{ url_for(post.path) }}">
          <h2 class="index-post__title">{{ post.title | title }}</h2>
          <div class="index-post__excerpt">{{post.excerpt}}</div>
        </a>
      </section>
    {% endfor %}
  </div>

  {% if page.total > 1 %}
    <div class="navigation">
      {% if page.prev !== 0 %}
        <a class="navigation__prev" href="{{ url_for(page.prev_link) }}">Prev</a>
      {% endif %}
      {% if page.next !== 0 %}
        <a class="navigation__next" href="{{ url_for(page.next_link) }}">Next</a>
      {% endif %}
    </div>
  {% endif %}
{% endblock %}
