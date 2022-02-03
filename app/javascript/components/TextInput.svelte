<script>
export let id;
export let name = id;
export let label;
export let placeholder;
export let value;
export let errors = {};
export let hasError = {};
</script>

<label class="block mb-2 text-sm text-gray-700" for="{id}">{label}</label>
<input {id} {name} type="text" class="shadow appearance-none border rounded w-full py-2 px-3 text-rgb(4, 6, 235)gray-700 leading-tight focus:outline-none focus:shadow-outline focus:border-blue-500 { hasError ? 'border-red-500' : ''}" {placeholder} bind:value="{value}">
{#if hasError }
  <p class="text-xs italic text-red-500 form-errors">{errors}</p>
{/if}
