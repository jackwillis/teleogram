# Teleogram

The purpose (telos) of this application is to send event announcements
over SMS to many recipients (mass texting),
while respecting privacy and communication laws.

## Installation

Teleogram is a Ruby on Rails web application
and this guide is based on Linux.

### For development

#### Development dependencies

1. Ruby 3.0.0.
2. PostgreSQL.
3. Node.js, and Yarn.

#### Initializing the application

1. Clone the repository: `git clone https://github.com/jackwillis/teleogram.git; cd teleogram`
2. Install Ruby dependencies: `bundle install`
3. Configure PostgreSQL.
(The default role is your operating system username:
[create this role](https://www.postgresql.org/docs/13.0/sql-createuser.html)
as a [superuser](https://www.postgresql.org/docs/13/sql-alterrole.html),
or edit config/database.yml
([guide](https://guides.rubyonrails.org/configuring.html#configuring-a-database))).
4. Create dev and test databases: `bundle exec rails db:create`
5. Start development server: `bundle exec rails server`

### Heroku

This application is ready to deploy on Heroku.
Make sure to set up environment variables and
provision a PostgreSQL server, from Heroku or elsewhere.

## Environment variables

<dl>
  <dt><code>RAILS_ENV</code></dt>
  <dd>(optional.) <code>development</code> (default), <code>test</code>, or <code>production</code>.</dd>

  <dt>DATABASE_URL</dt>
  <dd>(production only) <i>ex.</i> <code>postgres://user:pass@localhost:5432/db</code></dd>
</dl>