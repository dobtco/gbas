GBAS Portal [![status](https://circleci.com/gh/dobtco/gbas.svg?style=shield&circle-token=e2de10dd556b9563d92bed3da2292309bc8065bc)](https://circleci.com/gh/dobtco/gbas/tree/master) [![Dependency Status](https://gemnasium.com/badges/f5ce29cba18602058632a31d5d50008f.svg)](https://gemnasium.com/github.com/dobtco/gbas)
====

## Install

We recommend using [Boxen](https://github.com/dobtco/dobt/blob/master/guides/development_environment.md) to install the required dependencies. If not using boxen, you will need to install the following: Ruby, node.js, bundler, Postgres.

After installing Boxen, run `script/bootstrap` to install gems and seed your database.

## Developing

Run `script/server` and navigate to https://gbas.dev.

## Testing

Make sure you have a test database by running `rake db:test:prepare`. Then, either use `bundle exec guard`, which will watch for changes and run tests automatically, or run `rspec` directly.

If you're on Linux, you'll need to [manually run an X server](https://github.com/thoughtbot/capybara-webkit/blob/v1.3.0/README.md#ci) before running javascript-enabled specs.
