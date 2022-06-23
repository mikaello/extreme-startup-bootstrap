open NodeJs
open ServerUtils

let port = 5000
let hostname = "localhost"

let default = (req: Http.IncomingMessage.t, res: Http.ServerResponse.t) => {
  let searchParams = req->getUrl("http")->getSearchParams
  let question = getParam(searchParams, "question")
  Js.log(question)

  /* Insert your parsing code here */

  let response = "Hello world"

  res->Http.ServerResponse.setStatusCode(200)
  res->Http.ServerResponse.endWithData(Buffer.fromString(response))
}

let server = Http.createServer(default)
let _ = server->Http.Server.listen(
  ~port,
  ~host=hostname,
  ~callback=() => {
    Js.log("Server running at http://" ++ hostname ++ ":" ++ string_of_int(port) ++ "/")
  },
  (),
)
