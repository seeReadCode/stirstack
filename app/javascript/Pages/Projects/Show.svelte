<script context="module">
  import Layout from '../../Layouts/Main.svelte'

  export const layout = Layout
</script>
<script>
  import { fade } from 'svelte/transition';
  import Button from '../../components/Button.svelte'

  export let project;
  export let index_url;
</script>

<div in:fade={{ duration: 200 }} class="p-8 m-auto w-max">
  <div class="py-5 px-4 bg-gray-50 sm:px-6">
    <h1 class="mb-4 text-2xl">{project.title}</h1>
  </div>

  <!-- TODO todos -->
  <div class="border-t border-gray-200">
    <dl class="py-5 px-4 bg-white sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
      <dt class="text-sm font-medium text-gray-500">#1</dt>
      <dd class="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">TODO</dd>
    </dl>
    <dl class="py-5 px-4 bg-gray-50 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
      <dt class="text-sm font-medium text-gray-500">#2</dt>
      <dd class="mt-1 max-w-prose font-mono text-sm text-gray-900 sm:col-span-2 sm:mt-0">
        TODO
      </dd>
    </dl>
  </div>

  <div class="flex justify-center mt-4">
    <Button href="{index_url}">
        <span>Projects</span>
    </Button>
  </div>
</div>
