# AGENTS.md

Instructions for an AI agent working in this repo.

This is a Rails app for learning how web pages are built: a route, a controller and a view for
each page. Run everything from the top folder (where README.md is).

- A page needs three things: a route in `config/routes.rb`, a controller in
  `app/controllers/<resource>_controller.rb` and a view in `app/views/<resource>/`.
- Make a controller with `bin/rails generate controller <resource>`, the name from the route.
  It makes the controller, an empty class, and its views folder. Then add the action.
- Write routes in the long form, one per line:
  `get("/companies", { :controller => "companies", :action => "index" })`.
- Run the app with `bin/rails server`. Run a Ruby file with `bin/rails runner <path>`. Run the
  tests with `bin/rails test`.
- The person's rules are in `DONE.md`, one sentence per line under each page's heading. Write
  one integration test for each sentence in `test/integration/<resource>_page_test.rb`, named
  with that sentence. Every sentence gets a test. Create the rows a test needs inside the
  test. Never edit `DONE.md`; if a sentence is unclear or can't be tested, say so instead.
- No `has_many`, `belongs_to` or other associations. Look related rows up with `where` or
  `find_by`, for example `Company.find_by({ "id" => contact["company_id"] })`.
- Read and set columns hash-style: `company["name"]` and `company["name"] = "Apple"`, not
  `company.name`.
- Change the database's structure only with a migration: `bin/rails generate model` or
  `bin/rails generate migration`, then `bin/rails db:migrate`. Never edit `db/schema.rb`;
  Rails writes it. The rows come from `scripts/create_data.rb`
  (`bin/rails runner scripts/create_data.rb`).
- `bin/reset-db` rebuilds the database from the migrations and deletes every row. Ask before
  running it.
- Leave `app/controllers/data_controller.rb`, `app/models/database_table.rb` and
  `app/views/data/` alone: they run the Data page.
- Do not read, copy from or edit `code-along-complete/` unless asked. It is a reference for
  the person learning.
- Never read, edit, move or delete anything in `agent-log/`. It is the record of this
  conversation, kept for the person's graders.
- Explain what you changed in plain English, file by file.
