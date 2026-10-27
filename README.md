# web-apps

A Rails app for building web pages: a route, a controller and a view for each one, some of
them reading a database of companies and their contacts.

## Getting started

1. On this repo's GitHub page, choose **Use this template**, then **Create a new repository**,
   and make the copy in your own account.
2. On your copy, choose **Code**, then **Codespaces**, then **Create codespace on main**. The
   first start takes a few minutes: it installs the gems, the agent CLIs, and creates the
   database with three companies and four contacts in it.
3. In the terminal, start the app:

       bin/rails server

   Leave that terminal running; open a second one for everything else. When the Codespace
   offers to open port 3000 in the browser, take it (or find it later under **Ports**).
4. Add `/data` to the end of the address. The Data page shows every table and its rows. It only
   reads; refresh it after the data changes.

If the server isn't running, the browser shows "connection refused" or a 502. Start it again
with `bin/rails server`.

## The three files a page needs

| File | What it does |
|---|---|
| `config/routes.rb` | One line per page: when someone asks for this path, run this action of this controller. |
| `app/controllers/<resource>_controller.rb` | A class with one method per action. The method decides what to show. |
| `app/views/<resource>/<action>.html.erb` | The page itself: HTML, with Ruby inside `<% %>` and `<%= %>`. |

The `/data` line in `config/routes.rb` is a working example, and the comment above it is a
template for the next one. Make the controller with `bin/rails generate controller` and the
name from the route, for example `bin/rails generate controller tacos`, in a terminal other
than the server's: it makes the controller, an empty class, and the views folder. The server
picks the new files up without a restart. When a page doesn't work yet, refresh it and read the error: it
names the next file Rails went looking for.

## Catching up

`code-along-complete/` has the finished files from each code-along, at the same paths they
have in the app. See its README.

## The data

`scripts/create_data.rb` creates the rows. Change it and run it again any time:

    bin/rails runner scripts/create_data.rb

It deletes the companies and contacts first, so it always ends with exactly the rows in the
file. `bin/rails runner scripts/show_data.rb` prints every table in the terminal.

The tables:

- `companies`: `name`, `city`, `state`, `url`
- `contacts`: `first_name`, `last_name`, `email`, `phone_number`, `company_id`

Each contact's `company_id` is the `id` of a row in `companies`.

## Practice

**Contacts.** Make a page at `/contacts` that lists every contact's first and last name and
the name of their company. Look the company up with
`Company.find_by({ "id" => contact["company_id"] })`. Then add each contact's email.

**Cards.** Make a page at `/cards` that deals a five-card hand from a shuffled deck, a new hand
every time the page loads. Build the deck from these two arrays:

    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

Show each card's name ("Queen of Hearts"). Then show its picture: `public/images/cards/` has
one per card, named like `queen_of_hearts.svg`, and the page can show it with
`<img src="/images/cards/queen_of_hearts.svg">`. Add a link that deals again.
`public/images/dice/` has `1.svg` to `6.svg` the same way.

## Working with an agent

`AGENTS.md` tells your agent how this app is built. Write what a page must do in `DONE.md`, one
sentence per line, and ask the agent for one test per sentence; `bin/rails test` runs them.
Signing in to an agent CLI is covered in the `agent-setup` repo's README. Every conversation
with your agent here is copied into `agent-log/`; leave that folder alone.
