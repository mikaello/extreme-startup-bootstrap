# Deno server

If you don't have Deno installed, follow the install guidelines for your platform at [deno.land](https://deno.land/)

(optional) Install `denon` to get automatic reload on save:

```
deno install denon --allow-read --allow-run https://deno.land/x/denon/denon.ts
```

Start server and begin hacking:

```
denon --allow-net server.ts

# or use "deno" if you don't want automatic reload
deno --alow-net server.ts
```
