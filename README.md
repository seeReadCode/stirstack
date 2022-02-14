# stirstack
The STIR Stack consists of:

- [Svelte.js](https://svelte.dev/)
- [TailwindCSS](https://tailwindcss.com/)
- [InertiaJS](https://inertiajs.com/)
- [Ruby on Rails](https://rubyonrails.org/)

No, it's not a silver bullet but...

## Why this stack over X?
tldr: performance and practices with lower cognitive overhead

- React: so many people and resources not so much abstraction please and wow Svelte syntax, animations, accessibility
- Non-MVC Arch: "wait, where is this in your codebase?" + YAGNI
- API/Front-end: less requests, clearer control flow please
- Semantic CSS: less artificial complexity, more readable code
- Elixir Liveview: websockets are nice but more community
- Laravel Livewire: less verbose syntax
- Rails Hotwire/StimulusReflex: JSON rather than HTML over the wire and again wow Svelte

## “Batteries included for...”
- HTTP first, then XHR/JSON requests
- Security comes “for free” with built in CSRF.
- Forms and validations “just work”
- Encapsulated UI components
- Utility first CSS
- MVC architecture

### ...Creature comforts for the devs...

- Packaging and live reloading via vite
- Annotatwed models and dynamically generated ERDs on migration
- Pre commit and pre push hooks with testing, auditing, whitespace checks, CSS ordering, eslint, rubocop best practices
- Real time checks on those things as well via guard

### ...But wait there's more
- Error bubbling for nested/child relations via `association_error_detail_concern.rb`
- Client side form object 'shunting' so nested/child relations play nice with Rails controllers
- Github Actions friendly Capybara for headless browser feature testing


## More info and background
- [How I Learned to Stop Worrying & Love the STIR stack?](https://seereadcode.github.io/stirstack-deck/) presentation
- [...as markdown](https://raw.githubusercontent.com/seeReadCode/stirstack-deck/master/PITCHME.md)


## Setup

Install brew if mac, asdf if you like, ruby/gems/bundler/guard/overcommit, node/yarn. I recommend asdf for mananging ruby and node.

```sh
bundle install
bundle exec overcommit --install
yarn install
```

Create your database

```sh
bin/rake db:create
```

## Development

Start your database, install gems and node packages if they have been updated, run any migrations, and then run...

```sh
# run vite
bin/vite dev

# and guard
bundle exec guard


```

or instead of `guard`...

```sh
# run server
bin/rails s

# test
bin/rake
```

## Creating a form
Generally speaking, after you have a reasonable sense of what you want.

1. If you are feeling virtuous, write a feature test for your functionality.
1. Create your form in as a Svelte file `app/frontend/Pages` or thereabouts. [See Inertia docs for Svelte](https://inertiajs.com/forms).
1. Style to your liking via [Tailwind](https://www.tailwindcss.com/).
1. Generate the model, migration, route, controller, factory and some test stuff for routes and model. Then run the migration
```sh
bin/rails g scaffold project title:string
bin/rake db:migrate
```
1. Remove any unneccessary routes and related methods in your controller.  Add model validations and relations as needed, update tests. Tweak your controller to pass the correct info along as JSON via Inertia, [see Inertia docs](https://inertiajs.com/forms)
1. Double check your tests, lint etc.
1. And time.


## Deploy

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/seeReadCode/stirstack/tree/main)

Setup your build packs like and make sure your buildpacks are in the right order [as per the Vite Ruby docs](https://vite-ruby.netlify.app/guide/deployment.html#using-heroku).

## Testing and Linting
Before commit, you want to...

- Lint your javascript and ruby
- Analyzes your ruby via brakeman
- Run your tests


```bash
bundle exec rake
bundle exec brakeman
bundle exec rubocop -A # auto fix
yarn run eslint --fix app/frontend/* # auto fix – nb. can be buggy!
```
