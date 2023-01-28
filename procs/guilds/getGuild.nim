import
    std/[json],
    ../auth

proc getGuilds*(token: string): JsonNode =
    return authinfo("https://discord.com/api/v9/guilds", token)