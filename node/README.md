# JavaScript / TypeScript server

## JavaScript

There is no dependencies to install, just start the server:

```shell
node index.mjs
```

(if you have an old version of node, add the `--experimental-modules` flag)

Tip, to get automatic reloading of server when saving file, start with _nodemon_ instead:

```shell
npx nodemon index.mjs
```

## TypeScript

- rename `index.mjs` to `index.ts`
  ```shell
  mv index.mjs index.ts
  ```
- add a `tsconfig.json` file
  ```shell
  npx tsc --init
  ```
- install node types
  ```shell
  npm install
  ```
- start TypeScript compiler

  ```shell
  npx tsc --watch index.ts

  # In another tab, start nodemon with transpiled JavaScript:
  npx nodemon index.js
  ```
