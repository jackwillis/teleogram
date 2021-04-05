# Teleogram

The purpose (*telos*) of this application is to send event announcements
over SMS to many recipients (mass texting),
while respecting privacy and communication laws.

## Installation

Teleogram is a Ruby on Rails web application.
This guide is based on Linux.

### For development

#### Development dependencies

1. [Ruby](http://www.ruby-lang.org/en/downloads/) 3.0.0,
and [Bundler](https://bundler.io/).
2. [PostgreSQL](https://www.postgresql.org/download/).
3. [Node.js](https://nodejs.org/en/download/),
and [Yarn](https://yarnpkg.com/getting-started/install).

#### Initializing the application

1. Clone the repository: `git clone https://github.com/jackwillis/teleogram.git; cd teleogram`
2. Install Ruby dependencies: `bundle install`
3. Configure PostgreSQL.
This application uses your operating system username as the default PostgreSQL role:
[create this role](https://www.postgresql.org/docs/13/sql-createuser.html)
as a [superuser](https://www.postgresql.org/docs/13/sql-alterrole.html),
or [edit config/database.yml](https://guides.rubyonrails.org/configuring.html#configuring-a-database).
4. Create dev and test databases: `bundle exec rails db:create db:migrate`
5. Install and compile Javascripts and CSS: `bundle exec rails assets:precompile`
6. Run tests: `bundle exec rails test`
7. Finally, start development server: `bundle exec rails server` (with environment variables).

### Heroku

To deploy on Heroku, you must:
1. Configure environment variables.
2. Provision a PostgreSQL server, from Heroku or elsewhere.
By default, Heroku will attach a hobby-level PostgreSQL server to your new app instance
and set the `DATABASE_URL` environment variable automatically.
3. Run `rails db:create db:migrate` in the production environment.

## Environment variables

<dl>
  <dt><code>RAILS_ENV</code></dt>
  <dd>(Optional.) { <code>development</code> (default), <code>test</code>, or <code>production</code> }</dd>

  <dt><code>DATABASE_URL</code></dt>
  <dd>(Production only.) ex. <code>postgres://user:pass@localhost:5432/db</code></dd>

  <dt><code>ORGANIZATION_NAME</code></dt>
  <dd>(Optional.) Displays in banner at top of application.</dd>
</dl>