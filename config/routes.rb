<!DOCTYPE html>
<html>
<head>
  <title><%= 'Form validation using Ruby on Rails' %></title>
  <%= stylesheet_link_tag "application", media: "all",
                          "data-turbolinks-track" => true %>
  <%= javascript_include_tag "application", "data-turbolinks-track" => true %>
  <%= csrf_meta_tags %>
  <!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>
<body>
<header class="navbar navbar-fixed-top navbar-inverse">
  <div class="navbar-inner">
    <div class="container">
      <%= link_to "sample app", root_path, id: "logo" %>
      <nav>
        <ul class="nav pull-right">
          <li><%= link_to "Home", root_path %></li>
          <li><%= link_to "Users", users_path %></li>
        </ul>
      </nav>
    </div>
  </div>
</header>
<div class="container">
  <% flash.each do |key, value| %>
      <%= content_tag(:div, value, class: "alert alert-#{key}") %>
  <% end %>
  <%= yield %>
  <footer class="footer">
  </footer>
</div>
</body>
</html>