# Simple Rails application
Gems used:
* **devise** for registration/signing up
* **twitter-bootstrap-rails** for attrictive view

### Description
This application just for test **divese** gem. User can fill own books after registration or signing in.

In the layout we use devise's helper `user_signed_in?` for showing menu:

  <% if user_signed_in? %>
    <li><%= link_to('Books managment', books_path) %></li>
    <li><%= link_to('Edit registration', edit_user_registration_path) %></li>
    <li><%= link_to('Logout', destroy_user_session_path, :method => :delete) %></li>
  <% else %>
    <li><%= link_to('Register', new_user_registration_path)  %></li>
    <li><%= link_to('Login', new_user_session_path)  %></li>
  <% end %>

Also we use jQuery jGrowl plugin for showing flash notices, alerts and errors.

### Models
* **user** for devise
* **category** for categories managment
* **book** users' books
* **status** for books' statuses (should read, read or etc)


