const port = 5000;
const host = "http://localhost";

const server = Deno.listen({ port });
console.log(`Server running at ${host}:${port}`);

// Connections to the server will be yielded up as an async iterable.
for await (const conn of server) {
  serveHttp(conn);
}

async function serveHttp(conn: Deno.Conn) {
  const httpConn = Deno.serveHttp(conn);
  for await (const requestEvent of httpConn) {
    const url = requestEvent.request.url;
    console.log(url);
    const searchParams = new URL(`${url}`).searchParams;
    //const searchParams = new URL(`${host}:${port}${url}`).searchParams;
    const question = searchParams.get("question");
    console.log(question);

    /* Insert your parsing code here */

    const body = "Hello world";
    requestEvent.respondWith(
      new Response(body, {
        status: 200,
      })
    );
  }
}
