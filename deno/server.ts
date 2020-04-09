import { serve } from "https://deno.land/std/http/server.ts";

const port = 5000;
const host = "http://localhost";
const server = serve({ port });
console.log(`Server running at ${host}:${port}`);

for await (const req of server) {
  const searchParams = new URL(`${host}:${port}${req.url}`).searchParams;
  const question = searchParams.get("question");

  console.log(question);

  /* Insert your parsing code here */

  req.respond({ body: "Hello World" });
}
