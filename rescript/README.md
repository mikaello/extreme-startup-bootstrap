# Bucklescript server

First you need to install dependencies:

```shell
npm install
```

Then start transpiling BuckleScript and run node server:

```bash
npm run start

# In another tab, start nodemon with transpiled JavaScript:
npx nodemon src/Http_server.bs.js
```

Change code in `./src/Http_server.re` and see the server reload.
