<script>
  import { inertia } from '@inertiajs/inertia-svelte'
  import { Inertia } from '@inertiajs/inertia'

  export let href;
  export let type;
  export let disabled = false;
  export let loading = false;

  function handleClick() {
    loading = true;
  }
</script>

{#if type === 'submit'}
  <button class="inline-flex items-center py-1 px-2 mr-4 w-max text-sm uppercase rounded transition-all"  type="submit" disabled={disabled} on:click={handleClick}>
    <slot></slot>
  </button>
{:else}
  <a class="inline-flex items-center py-1 px-2 mr-4 w-max h-full text-sm uppercase rounded transition-all" {href} use:inertia on:click={handleClick}>
    <slot></slot>
  </a>
{/if}
