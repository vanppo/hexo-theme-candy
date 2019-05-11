{% extends 'structure.swig' %}

{% block content %}
  <div class="post-article">
    <h1 class="post-article__title">{{page.title}}</h1>
    {{page.content}}
  </div>

  {% if page.prev or page.next %}
    <div class="navigation">
      {% if page.prev %}
        <a class="navigation__prev" href="{{url_for(page.prev.path)}}">Prev</a>
      {% endif %}
      {% if page.next %}
        <a class="navigation__next" href="{{url_for(page.next.path)}}">Next</a>
      {% endif %}
    </div>
  {% endif %}
{% endblock %}
