<script>
  import { useForm } from '@inertiajs/inertia-svelte';
  import { fade } from 'svelte/transition';
  import TextInput from '../../components/TextInput.svelte';
  import Button from '../../components/Button.svelte';

  export let project;

  let form = useForm('Project', project);

  $form.shunt = function shunt() {
    return $form.transform((data) => ({
      project: {
        ...data,
      },
    }))
  }

  function submit() {
    // console.log($form);
    if (typeof $form.id === 'undefined') {
      $form.shunt().post('/projects')
    } else {
      $form.shunt().put(`/projects/${project.id}`)
    }
  }
</script>

<form in:fade={{ duration: 200 }} class="flex flex-col p-8 m-auto w-max rounded-xl" on:submit|preventDefault={submit}>
  <div class="mb-4">
    <div class="mb-4">
      {#if typeof ($form.id) === 'undefined' }
        <h1 class="mb-4 text-6xl">Create your project</h1>
      {:else}
        <h1 class="mb-4 text-6xl">Edit your project</h1>
      {/if}
      <!-- <pre>{JSON.stringify($form)}</pre> -->
    </div>

    <div class="mb-4">
      <TextInput
        id="title"
        label="Title"
        placeholder="Best Project Ever"
        bind:value={$form.title}
        hasError={!!$form.errors.title }
        errors={$form.errors.title}
        />
    </div>

  </div>
  <Button primary loading={$form.processing} disabled={$form.procesing} type="submit">
    <span>{project.id ? 'Update' : 'Create'}</span>
  </Button>
</form>
