open NodeJs

// Credit: https://github.com/IlyaPomaskin/fool/blob/75866fcc238e442feebe7fa28e2327f47c0a10a8/src/api/ServerUtils.res

let getUrl = (req, protocol) =>
  Some(req)
  ->Option.map(Http.IncomingMessage.headers)
  ->Option.flatMap(headers => headers.host)
  ->Option.map(host =>
    Url.fromBaseString(~input=Http.IncomingMessage.url(req), ~base=`${protocol}://${host}`)
  )

let getSearchParams = (url: option<NodeJs.Url.t>) =>
  url
  ->Option.map(url => url.search)
  ->Option.map(search => Js.String.sliceToEnd(~from=1, search))
  ->Option.map(search => QueryString.decode(search))
  ->Option.getWithDefault(Js.Dict.empty())

let getParam = (params: Js.Dict.t<string>, name) =>
  params
  ->Js.Dict.get(name)
  ->Option.map(value =>
    switch Js.Array.isArray(value) {
    | true => Js.Array.joinWith("", value->Obj.magic)
    | false => value
    }
  )
