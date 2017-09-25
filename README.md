# Ride Service a.k.a [Frank Martin](https://en.wikipedia.org/wiki/The_Transporter)

This is a application service extracted from Core Backend a.k.a Stan Marsh to service the consumer Ride app.


### Current status


### Setting up vagrant box with dev environment pre installed

Run `vagrant up` inside the project directory.

### Setting up your environment (OSX)

1. Install [Homebrew](http://brew.sh/)
2. Install [Hombrew Cask](http://caskroom.io/)
3. Install rbenv using Homebrew `brew install rbenv`
3. Install rbenv-vars using Homebrew `brew install rbenv-vars`
4. Install ruby-build using Homebrew `brew install ruby-build`
5. Install Java 8 using Homebrew Cask `brew cask install java`
6. Install JRuby 9.1.6.0 using rbenv `rbenv install jruby-9.1.6.0`
7. Install Postgres using Homebrew `brew install postgresql`
8. Install Bundler using RubyGems `gem install bundler`

### Setup

1. Run `bundle` to install project gem dependencies
2. Run `bundle exec jbundler install` to install jar dependencies
3. Create the databases: `bundle exec rake db:create:all db:migrate`
4. Migrate the test database: `RAILS_ENV=test rake db:migrate`
5. Migrate the stan marsh database: `bundle exec rake create_legacydb_schema`
6. Run `bundle exec rake` to run the build
7. Run `bundle exec rake coverage:models` and `bundle exec rake coverage:all` to generate coverage reports
8. Run `bundle exec rails s` to run the server.

### Documentation

Run `bundle exec rake spec:api`. Documentation will be generated in the *doc/api* folder
