let port = 5000;
let hostname = "localhost";
let questionParam = "/?question=";

let create_server = http => {
  let server =
    http##createServer((. req, resp) =>
      if (Js.String.startsWith(questionParam, req##url)) {
        let question =
          Js.String.split(questionParam, req##url)
          ->Array.get(1)
          ->Js.Global.decodeURI;

        Js.log(question);

        /* Insert your parsing code here */

        resp##_end("Hello World");
      } else {
        resp##statusCode #= 404;
        resp##_end("Uknown parameter");
      }
    );

  server##listen(port, hostname, () =>
    Js.log(
      "Server running at http://"
      ++ hostname
      ++ ":"
      ++ string_of_int(port)
      ++ "/",
    )
  );
};

create_server(Http_types.http);
