const express = require("express");
const fetch = require("node-fetch");
const app = express();

const CLIENT_ID = process.env.CLIENT_ID;
const CLIENT_SECRET = process.env.CLIENT_SECRET;
const REDIRECT_URI = process.env.REDIRECT_URI;
const GUILD_ID = process.env.GUILD_ID;
const BOT_TOKEN = process.env.BOT_TOKEN;

app.get("/", (req, res) => {
    res.send("OAuth2 Bot Invite Online");
});

app.get("/callback", async (req, res) => {
    const code = req.query.code;

    if (!code) return res.send("No code provided.");

    const params = new URLSearchParams();
    params.append("client_id", CLIENT_ID);
    params.append("client_secret", CLIENT_SECRET);
    params.append("grant_type", "authorization_code");
    params.append("code", code);
    params.append("redirect_uri", REDIRECT_URI);

    const tokenReq = await fetch("https://discord.com/api/oauth2/token", {
        method: "POST",
        body: params,
        headers: { "Content-Type": "application/x-www-form-urlencoded" }
    });

    const tokenResponse = await tokenReq.json();
    const userToken = tokenResponse.access_token;

    if (!userToken) return res.send("Impossible d’obtenir le token.");

    await fetch(`https://discord.com/api/users/@me/guilds/${GUILD_ID}`, {
        method: "PUT",
        headers: {
            "Content-Type": "application/json",
            "Authorization": `Bearer ${userToken}`
        },
        body: JSON.stringify({ access_token: userToken })
    });

    res.send("Tu as été ajouté au serveur !");
});

app.listen(3000, () => console.log("Ready on port 3000"));
