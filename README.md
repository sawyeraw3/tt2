# Tt2

Design Decisions:

Prevented duplicate users with the same email
Removed unnecessary links and prevented access to corresponding pages when user not signed in/shouldn't have access
Allowed user to modify its record (navbar shows user name as link to user information)
All other design choices made to satisfy the assignment requirements (i.e. preventing some view for non-managers and granting access to managers, assigning tasks only to underlings, etc)

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
