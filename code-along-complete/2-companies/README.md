# 2. Companies

A page that reads the database.

1. The route, `bin/rails generate controller companies`, and the `index` action, the same
   way as tacos.
2. The view: `Company.all` is every row in the companies table; `for company in companies`
   is the same loop as the fillings; `company["name"]` is one cell, hash-style.
3. A fourth company in `scripts/create_data.rb`, then
   `bin/rails runner scripts/create_data.rb`, then refresh. The page didn't change; the
   data did.
4. The bottom of `log/development.log`: the `SELECT` the loop ran.
5. `Company.where({ "state" => "CA" })` in place of `Company.all` shows only the California
   companies. The view here is back on `Company.all`.

The routes file has a line for `/dice` too, in case you built that page. If you didn't, leave
the line out: Rails only complains about a missing controller when you visit the page.
