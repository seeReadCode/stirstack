<script>
  import { inertia } from '@inertiajs/inertia-svelte'
  import { fade, fly } from 'svelte/transition';
  import Button from '../components/Button.svelte';

  export let new_url;
  export let projects = {};
</script>

<main>
  <header>
    <a use:inertia href="/">Home</a>
    <a use:inertia href="/projects">Projects</a>
  </header>
  <div in:fade={{ duration: 400 }} class="container p-4 mx-auto">
    <h1 class="mb-4 text-3xl">Projects</h1>
    <Button href="{new_url}">
      <span>New</span>
    </Button>
      <div class="grid grid-rows-3 grid-flow-row gap-4 py-4 md:grid-cols-3">
        {#each projects as project, i}
          <div in:fly="{{ y: 200, duration: 400, delay: i * 50 }}" class="flex bg-red-100 rounded sm:gap-x-8 decoration-slice">
            <div class="flex-grow p-4">
              <h2 class="flex-auto mb-3 text-xl">
                <a class="border-b border-transparent hover:border-black" use:inertia href="/projects/{project.id}">
                  {project.title}
                </a>
              </h2>
            </div>
            <div class="flex flex-wrap items-baseline py-2 px-4">
                <Button href="{project.edit_url}">
                    <span>Edit</span>
                </Button>
            </div>
          </div>
        {/each}
      </div>
    </div>
    <div>
      <slot />
    </div>
  </main>
