# stirstack
The STIR Stack consists of:

- [Svelte](https://svelte.dev/)
- [TailwindCSS](https://tailwindcss.com/)
- [InertiaJS](https://inertiajs.com/)
- [Ruby on Rails](https://rubyonrails.org/)

You may want to look particularly at:

- [inertia-rails](https://github.com/inertiajs/inertia-rails)
- [inertia-svelte](https://github.com/inertiajs/inertia/tree/master/packages/inertia-svelte)

## Features
TBD


## Setup

Install brew if mac, asdf if you like, ruby/gems/bundler, node/npm.

Create your database

```sh
bin/rake db:create
```

## Development

Start your database, install gems and node packages if they have been updated, run any migrations, and then run guard

```sh
guard
```

or

```sh
# run server
bin/rails s

# run live reload js
bin/webpack-dev-server

# test
bin/rake
```

## Deploy
TBD

## Testing and Linting

```bash
bundle exec rake
bundle exec brakeman
bundle exec rubocop -A
yarn run eslint --fix app/javascript/*
```

## Contributors
- @seereadcode of <https://www.superbasic.xyz>
- @jameswpierce of <https://www.superbasic.xyz>
