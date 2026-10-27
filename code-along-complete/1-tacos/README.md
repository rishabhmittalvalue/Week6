# 1. Tacos

A page in four saves, and one command. Refresh `/tacos` after each one and read what Rails says.

1. The route, in `config/routes.rb`. Refresh: "uninitialized constant TacosController". Rails
   read the route and went looking for the controller.
2. The controller. In the terminal that isn't running the server,
   `bin/rails generate controller tacos`: it makes `app/controllers/tacos_controller.rb`, an
   empty class, and the empty folder `app/views/tacos/`. Refresh: "The action 'index' could
   not be found for TacosController". Add the `index` method, which renders
   `tacos/index`. Refresh: "missing template tacos/index". The next file to make.
3. The view, `app/views/tacos/index.html.erb`, plain HTML first: a heading, a paragraph, a
   list. Refresh: the page.
4. Ruby in the view: an array of fillings and a loop that writes one `<li>` for each.
   `<% %>` runs Ruby; `<%= %>` runs it and puts the result on the page.

Common slips: a space between `get` and `(`; the generator typed in the server's terminal,
which isn't taking commands (use the other one); `taco` or `tacos_controller`
instead of `tacos`, the name from the route (`bin/rails destroy controller`
and the same name undoes it); the view in `app/views/` instead of
`app/views/tacos/`; a missing `<% end %>`, which Rails reports on a later line than the one
it belongs to.
