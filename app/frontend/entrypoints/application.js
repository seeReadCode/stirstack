import axios from 'axios';

import { createInertiaApp } from '@inertiajs/inertia-svelte';
import { InertiaProgress } from '@inertiajs/progress';

const pages = import.meta.glob('../pages/**/*.svelte');

const csrfToken = document.querySelector('meta[name=csrf-token]').content;
axios.defaults.headers.common['X-CSRF-Token'] = csrfToken;

InertiaProgress.init();

createInertiaApp({
  resolve: (name) => pages[`../pages/${name}.svelte`](),
  setup({ el, App, props }) {
    // eslint-disable-next-line no-new
    new App({ target: el, props });
  },
});

// import * as Turbo from '@hotwired/turbo'
// Turbo.start()
//
// import ActiveStorage from '@rails/activestorage'
// ActiveStorage.start()
//
// // Import all channels.
// const channels = import.meta.globEager('./**/*_channel.js')
