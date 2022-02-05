# stirstack
The STIR Stack consists of:

- [Svelte.js](https://svelte.dev/)
- [TailwindCSS](https://tailwindcss.com/)
- [InertiaJS](https://inertiajs.com/)
- [Ruby on Rails](https://rubyonrails.org/)

You may want to look particularly at:

- [inertia-rails](https://github.com/inertiajs/inertia-rails)
- [inertia-svelte](https://github.com/inertiajs/inertia/tree/master/packages/inertia-svelte)

## Features
- HTTP first, then XHR requests
- MVC architecture
- Encapsulated UI components
- Utility first CSS

And for the developer...

- Packaging and live reloading via webpacker
- Pre commit hooks with testing, auditing, whitespace checks, CSS ordering, eslint, rubocop best practices
- Real time checks on those things as well via guard

## Some highlights
- Error bubbling for nested/child relations via `association_error_detail_concern.rb`
- Client side form object 'shunting' so nested/child relations play nice with Rails controllers
- Github Actions friendly Capybara for headless browser feature testing

## Why we prefer our stack to X?
tldr: performance and practices with lower cognitive overhead

- React Components/Arch: not so much abstraction please and wow Svelte
- API/Front-end: less requests, clearer control flow please
- Semantic CSS: less artificial complexity, more readable code please
- Elixir Liveview: websockets are nice but more community please
- Laravel Livewire: less concise please
- Rails Hotwire: JSON rather than HTML over the wire please


## Setup

Install brew if mac, asdf if you like, ruby/gems/bundler/guard, node/yarn. I recommend asdf for mananging ruby and node.

```sh
bundle install
yarn install
```

Create your database

```sh
bin/rake db:create
```

## Development

Start your database, install gems and node packages if they have been updated, run any migrations, and then run guard

```sh
bundle exec guard
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
