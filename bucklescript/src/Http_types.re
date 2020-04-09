class type _req =
  [@bs]
  {
    [@bs.get]
    pub url: string;
    pub statusCode: int;
    pub statusMessage: string;
    pub method: string;
    pub httpVersion: string;
  };

type req = Js.t(_req);

class type _resp =
  [@bs]
  {
    [@bs.set]
    pub statusCode: int;
    pub setHeader: (string, string) => unit;
    pub _end: string => unit;
  };

type resp = Js.t(_resp);

class type _server =
  [@bs]
  {
    pub listen: (int, string, unit => unit) => unit;
  };

type server = Js.t(_server);

class type _http =
  [@bs]
  {
    pub createServer: ((. req, resp) => unit) => server;
  };

type http = Js.t(_http);

[@bs.module] external http: http = "http";
