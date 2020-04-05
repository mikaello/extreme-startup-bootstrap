import * as http from "http";
import * as querystring from "querystring";

const server = http.createServer((req, res) => {
  if (req.url.startsWith("/?question=")) {
    const queryParams = req.url.split("/?")[1];

    console.log(querystring.parse(queryParams).question);

    res.end("Hello world!");
  } else {
    res.statusCode = 404;
    res.end("Unknown parameter");
  }
});

server.listen(5000, () => {
  console.log("Server running at http://localhost:5000/");
});
