module.exports = {
  env: {
    browser: true,
    es2021: true,
  },
  extends: [
    'airbnb-base',
  ],
  parserOptions: {
    ecmaVersion: 12,
    sourceType: 'module',
  },
  plugins: [
    'svelte3',
  ],
  overrides: [
    {
      files: ['*.svelte'],
      processor: 'svelte3/svelte3',
      rules: {
        camelcase: 'off',
        'prefer-const': 'off',
        semi: 'off',
        'no-unused-vars': 'off',
      },
    },
  ],
  rules: {
    'import/prefer-default-export': 'off',
    // https://github.com/sveltejs/eslint-plugin-svelte3/issues/12
    'import/first': 'off',
    'import/no-mutable-exports': 'off',
    'no-labels': 'off',
    'no-restricted-syntax': ['error', 'ForInStatement', 'ForOfStatement', 'WithStatement'],
  },
};
