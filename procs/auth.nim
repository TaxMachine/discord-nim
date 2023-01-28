import
    std/[json, httpclient, strutils]

proc authinfo*(url: string, token: string): JsonNode =
    var client = newHttpClient()
    client.headers = newHttpHeaders({"Authorization": token})
    let info = client.request(url, HttpGet)
    return parseJson(info.body)