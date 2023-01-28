import
    std/[json, httpclient, strutils, strformat],
    ../auth

proc getUser*(token: string): JsonNode =
    return authinfo("https://discord.com/api/v9/users/@me", token)