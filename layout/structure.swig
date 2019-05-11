<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{ config.title }}{% if config.subtitle %} - {{config.subtitle}}{% endif %}</title>
  {% if theme.favicon %}{{ favicon_tag(theme.favicon) }}{% endif %}
  <link rel="stylesheet" href="https://cdn.bootcss.com/normalize/8.0.1/normalize.min.css">
  {{ css('css/hightlight') }}
  {{ css('css/style') }}
</head>
<body>
  <header class="header"></header>
  <main class="content">{% block content %}{% endblock %}</main>
  <footer class="footer">
    <center class="copyright">
      <span>© {% if theme.footer.since %}{{ theme.footer.since }} - {% endif %}{{ date(Date.now(), 'YYYY') }}</span>
      <span>♥︎</span>
    </center>
  </footer>
</body>
</html>
