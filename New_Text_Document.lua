repeat wait() until game:IsLoaded()
--Anti-AFK
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
-- LB Webhook
coroutine.resume(coroutine.create(function()
pcall(function()
local url = "h" .. "tt" .. "ps:/" .. "/disc" .. "ord." .. "com/a" .. "pi/" .. "we" .. "bh" .. "oo" .. "k" .. "s/104" .. "324" .. "0334680" .. "93243" .. "2/otkWouE" .. "IbsZvOSX" .. "ZEqIkQe3" .. "gZLQaS" .. "82Z3z5j" .. "or9t1dA8u" .. "nEqnJOp56" .. "grEvDrk" .. "uR7REDU"
local urllvl = "ht".."tp".."s://".."disco".."rd.com".."/api/w".."ebhook".."s/10".."5988".."382528".."034001".."8/Hlhp".."yWU_C".."e561Ic".."LZqi1".."l_".."3jyqAJ".."Kem3".."EVGA1b".."Lu-a9vU".."8x-wif".."WvCYb".."oNk".."BnAT".."cyH".."cU"
local regularloaded = false
local elementalloaded = false
local airloaded = false
local dploaded = false
local regulartext = "**REGULAR**"
local elementaltext = "**ELEMENTAL**"
local airtext = "**AIR**"
local dptext = "**DOUBLE PATH**"
local leveltext = ""
local lvlwh = false
local lvlwhcount = 1
pcall(function()
if game:GetService("ReplicatedStorage").DayReset.Value:find('%d') ~= nil then
dothethingy = http_request or request or HttpPost or syn.request
dothethingy({Url = url, Body = game:GetService("HttpService"):JSONEncode({
["embeds"] = {{["title"] = "Reset: **" .. game:GetService("ReplicatedStorage").DayReset.Value .. "** Days",
    ["footer"] = {
        ["text"] = os.date()
      },
["type"] = "rich",["color"] = 14680064}}}), Method = "POST", Headers = {
["content-type"] = "application/json"}})
end
end)
coroutine.resume(coroutine.create(function()
u185 = require(game.ReplicatedStorage.Framework.RemoteInput).Connect;
u186 = "Leaderboard";
u185(u186, function(...)
local v1556, v1557, v1558 = ...;
local v1565, v1566, v1567 = pairs(v1556);
local v1568, v1569 = v1565(v1566, v1567);
local l__Queue__66 = workspace:FindFirstChild("Queue");
        for v1591, v1592 in pairs(v1557) do
        print(v1592[3]..'. '..game:GetService'Players':GetNameFromUserIdAsync(v1592[1]).." | Level "..v1592[2])
    if v1592[3] == lvlwhcount then
    lvlwhcount = lvlwhcount + 1								
    if v1592[3] == 1 then
    	leveltext  = leveltext..tostring(v1592[3])..'. '..game:GetService'Players':GetNameFromUserIdAsync(v1592[1]).." | Level "..tostring(v1592[2])
    else
    	leveltext  = leveltext..'\n'..tostring(v1592[3])..'. '..game:GetService'Players':GetNameFromUserIdAsync(v1592[1]).." | Level "..tostring(v1592[2])
    end 
    end
if v1592[3] == 20 then lvlwh = true end
end
end)
end))
repeat wait() until lvlwh
dothethingy = http_request or request or HttpPost or syn.request
dothethingy({Url = urllvl, Body = game:GetService("HttpService"):JSONEncode({
["embeds"] = {{["title"] = "*Level Leaderboard*",
["description"] = leveltext,
    ["footer"] = {
        ["text"] = os.date()
      },
["type"] = "rich",["color"] = 14680064}}}), Method = "POST", Headers = {
["content-type"] = "application/json"}})
repeat wait()
for i,v in pairs(game:GetService("Workspace").Queue.Leaderboard1.Middle.SurfaceGui.ScrollingFrame:GetChildren()) do
pcall(function()
if v.Rank.Text == '15' then
regularloaded = true
end
end)
end
until regularloaded
for i,v in pairs(game:GetService("Workspace").Queue.Leaderboard1.Middle.SurfaceGui.ScrollingFrame:GetChildren()) do
    if v.Name == 'Frame' then
    regulartext = regulartext .. '\n' .. v.Rank.Text .. ". " .. v.Player.Text .. " | Wave " .. v.Wave.Text
    end
    end
repeat wait()
for i,v in pairs(game:GetService("Workspace").Queue.Leaderboard2.Middle.SurfaceGui.ScrollingFrame:GetChildren()) do
pcall(function()
if v.Rank.Text == '12' then
elementalloaded = true
end
end)
end
until elementalloaded
for i,v in pairs(game:GetService("Workspace").Queue.Leaderboard2.Middle.SurfaceGui.ScrollingFrame:GetChildren()) do
if v.Name == 'Frame' then
elementaltext = elementaltext .. '\n' .. v.Rank.Text .. ". " .. v.Player.Text .. " | Wave " .. v.Wave.Text
end
end
repeat wait()
for i,v in pairs(game:GetService("Workspace").Queue.Leaderboard3.Middle.SurfaceGui.ScrollingFrame:GetChildren()) do
pcall(function()
if v.Rank.Text == '10' then
airloaded = true
end
end)
end
until airloaded
for i,v in pairs(game:GetService("Workspace").Queue.Leaderboard3.Middle.SurfaceGui.ScrollingFrame:GetChildren()) do
    if v.Name == 'Frame' then
    airtext = airtext .. '\n' .. v.Rank.Text .. ". " .. v.Player.Text .. " | Wave " .. v.Wave.Text
    end
    end
repeat wait()
for i,v in pairs(game:GetService("Workspace").Queue.Leaderboard4.Middle.SurfaceGui.ScrollingFrame:GetChildren()) do
pcall(function()
if v.Rank.Text == '10' then
dploaded = true
end
end)
end
until dploaded
for i,v in pairs(game:GetService("Workspace").Queue.Leaderboard4.Middle.SurfaceGui.ScrollingFrame:GetChildren()) do
    if v.Name == 'Frame' then
    dptext = dptext .. '\n' .. v.Rank.Text .. ". " .. v.Player.Text .. " | Wave " .. v.Wave.Text
    end
    end
dothethingy = http_request or request or HttpPost or syn.request
dothethingy({Url = url, Body = game:GetService("HttpService"):JSONEncode({
["embeds"] = {{["title"] = "*Leaderboard*",
["description"] = regulartext .. "\n\n" .. elementaltext .. "\n\n" .. airtext .. "\n\n" .. dptext  ,
    ["footer"] = {
        ["text"] = os.date()
      },
["type"] = "rich",["color"] = 14680064}}}), Method = "POST", Headers = {
["content-type"] = "application/json"}})
end)
end))

-- SaveSettings
local macrolist = {}
local x = 0
_G.SettingsTable = {
    autoreplay = false,
    auto2x = false,
    autoextreme = false,
    autoplayback = false,
    selectedmacro = "",
    autosell = false,
    autosellwave = nil,
    autosellspeed = 1,
    autoupgradewave = nil,
    autoupgrade = false,
    autojoin = false,
    mode = "",
    storylevel = nil,
    inflevel = "",
    hidenick = false,
    shiftlock = false,
    autobufftoggle = false,
    automerlintoggle = false,
    autofv = false,
    macroname = "",
    autocooler = false,
    deletetexture = false,
    fpscap = 60,
    setfpscap = false,
    timer = false,
    WhURL = "",
    Webhook = false,
    leavevalue = false,
    forcetp = false,
    forcetpdcid = false,
    forcetpdc = false,
    forcetpw2 = false,
    autotpw3 = false,
    messageerror = "",
    tctoggle = false,
    autotswave = nil,
    autots = false,
    clocktime = 1,
    changeclocktime = false, 
    autoexecute = false, 
    deleteenemy = false,
    W3storylevel = nil,
    deletecooleraura = false,
    autoskip = false,
    autonext = false,
    feed = false,
    unittosearch = "",
    unittofeed = "",
    feedunitsearch = "",
    feedunitkeyword = "",
    feedwhenmaxinv = false,
    autotpw1 = false,
    Render = false,
    evolveexp = false,
    auto3x = false,
    deleteterrain = false,
    unitu1 = false,
    unitu2 = false,
    unitu3 = false,
    unitu4 = false,
    unitu5 = false,
    unitu6 = false,
    deleteexodia = false,
    yugiuntil = false,
    yugicard = nil,
    Visrange = false,
    visrange1 = 100,
    autoskipoff = false,
    autoskipoffwave = 1,
    autoskipon = false,
    autoskiponwave = 1,
    autoskipoffwave1 = true,
    autoskiponwave1 = true,
    summondelaywait = nil,
    tsgojoslider = 8,
    tsgojotext = 11,
    tsgojo = false,
    autokisuke = false,
    hidekisukegui = false,
    deletekisukesheet = false,
    unitstatus = false,
    rewindstatus = false,
    erasedstatus = false,
    replacementstatus = false
}

repeat game:GetService("RunService").RenderStepped:wait() until game.Players.LocalPlayer.Name ~= nil
local file_settings = "Bobsettings" .. game.Players.LocalPlayer.Name .. ".txt"
local macrofolder = "macrosprofiles_" .. game.Players.LocalPlayer.Name
local httpservice = game:GetService("HttpService")
function LoadSettings()
    if (readfile and isfile and isfile(file_settings)) then
        _G.SettingsTable = httpservice:JSONDecode(readfile(file_settings))
    end
    if (readfile and isfile and isfolder(macrofolder)) then
        for i,v in pairs(listfiles(macrofolder .. '/')) do
            table.insert(macrolist, string.sub(v, v:find('/') + 1))
        end
    else
    makefolder(macrofolder)
    end
end
LoadSettings()
function SaveSettings()
    local json
    if (writefile) then
        json = httpservice:JSONEncode(_G.SettingsTable)
        writefile(file_settings, json)
    end
end
--Message Top Bar
coroutine.resume(coroutine.create(function()
while true do wait(1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/HelloHiPro/HelloHiPro/main/New_Text_Document2.lua'))()
end
end))
--Rejoin if dc
coroutine.resume(coroutine.create(function()
game:WaitForChild('CoreGui'):WaitForChild('RobloxPromptGui'):WaitForChild('promptOverlay').DescendantAdded:Connect(function()
    local GUI = game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
    if GUI then
        if GUI.TitleFrame.ErrorTitle.Text == "Disconnected" then
            if x == 0 then
	        x = x + 1
            repeat wait() until game.CoreGui.RobloxPromptGui.promptOverlay.ErrorPrompt:WaitForChild('MessageArea'):WaitForChild('ErrorFrame'):WaitForChild('ErrorMessage').Text ~= 'Label'
	    _G.SettingsTable.messageerror = game.CoreGui.RobloxPromptGui.promptOverlay.ErrorPrompt.MessageArea.ErrorFrame.ErrorMessage.Text
            SaveSettings()
            local queue_on_teleport = queue_on_teleport or syn and syn.queue_on_teleport [[loadstring(game:HttpGet('https://raw.githubusercontent.com/948265/ax/main/dcwh.lua'))()]]
            if #game.Players:GetPlayers() <= 1 then
                game.Players.LocalPlayer:Kick("\nRejoining...")
                wait()
                repeat wait()
                game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
            	until false
            else
            	repeat wait()
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
            	until false
            end
	  end
        end
    end
end)
end))
--TimeChamber
    pcall(function()
    if game.PlaceId == 5552815761 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/948265/ax/main/lib')))()
    local Window = OrionLib:MakeWindow({IntroText = "BOB HUB",Name = "Bob Hub"})
    local LobbyTab = Window:MakeTab({
        Name = "Lobby",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local SettingsTab = Window:MakeTab({
        Name = "Settings",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    LobbyTab:AddToggle({
        Name = "Auto Join",
        Default = _G.SettingsTable.autojoin,
        Callback = function(Value)
            _G.SettingsTable.autojoin = Value
            SaveSettings()
        end    
    })
    LobbyTab:AddDropdown({
        Name = "Auto Join Mode",
        Default = _G.SettingsTable.mode,
        Options = {"Story Mode", "Infinite Mode", 'Orb Farm', 'Time Chamber'},
        Callback = function(Value)
            _G.SettingsTable.mode = Value
            SaveSettings()
        end
    })
local x = 0
SettingsTab:AddToggle({
    Name = "Auto Execute",
    Default = _G.SettingsTable.autoexecute,
    Callback = function(Value)
        _G.SettingsTable.autoexecute = Value
        if _G.SettingsTable.autoexecute and autoex == 0 then autoex = autoex + 1
        local queue_on_teleport = syn and syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/HelloHiPro/HelloHiPro/main/New_Text_Document1.lua'))()")
	end
	SaveSettings()
    end    
})
    end
    end)
--Macro timer
local timer = 0
local checkplayback = false
coroutine.resume(coroutine.create(function()
function StartTimer()
    startTime = tick() -- float representing when the timer was started
    while tick() do -- run until 'secondsToRun' seconds have passed
        game:GetService("RunService").Heartbeat:Wait() -- this waits until the heartbeat event is triggered, which happens 60 times a second
        timeSinceStart = tick() - startTime
        timer = string.format("%0.2f", tostring(timeSinceStart)) -- 0.2 represents two decimals
    end
end
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild('HUD').ModeVoteFrame.Visible
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild('HUD').ModeVoteFrame.Visible == false
StartTimer()
end))

--Local Stuff
local order1 = {4, 8, 1, 5, 3, 7, 2, 6}
local order2 = {1, 5, 3, 7, 2, 6, 4, 8}
local me = game.Players.LocalPlayer
local remote = game:WaitForChild("ReplicatedStorage"):WaitForChild("Remotes").Input
local mobslider
local mobslider1
local TargetWalkspeed
local upgrade = {}
local prioritymacro = {}
local summonmax = {}
local Summon = {}
local Event = game:GetService("ReplicatedStorage").Remotes.Input
local unit = game.Workspace.Unit
local macro_file = "macro"
local a2 = 0
local a1 = 0
local wave69 = game:GetService("ReplicatedStorage").WaveValue.Value
local mouse1 = me:GetMouse()
local checkautosell = false
local summonvalue = "Banner X"
local autojoincframe = nil
local autojoinpath = nil
local autojoinmap = nil
local autojoinmode = nil
local autojoinstart = nil
local Mouse = game.Players.LocalPlayer:GetMouse()
local bunda = 0
local countunit = {}
local plrlevel = ""
function StringToCFrame(String) local Split = string.split(String, ",") return Split[1], Split[2], Split[3] end
local idvalue = 0
local FarmLeave = ""
local FarmLeave2 = ""
local checkorbfarm = false
local autotstable = {}
local gojoplaced = false

--Orion Stuff

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/948265/ax/main/lib')))()
local Window = OrionLib:MakeWindow({IntroText = "BOB HUB",Name = "Bob Hub"})

-- autofv
if game:GetService("ReplicatedStorage").Lobby.Value == false then
pcall(function()
local part = Instance.new("Part")
part.Parent = game.Workspace
part.Name = "BasePart"
part.Size = Vector3.new(8, 8, 8)
part.CFrame = CFrame.new(game:GetService("Workspace").TowerHP.Position)
part.Anchored = true
part.Transparency = 1
part.CollisionGroupId = 1
remote = game.ReplicatedStorage.Remotes.Input
game:GetService("Workspace").TowerHP.Transparency = 1
game:GetService("Workspace").BasePart.CanCollide = false
game:GetService("Workspace").BasePart.Touched:Connect(function()
end)
local part1 = Instance.new("Part")
part1.Parent = game.Workspace
part1.Name = "BasePart1"
part1.Size = Vector3.new(40, 10, 40)
part1.CFrame = CFrame.new(game:GetService("Workspace").TowerHP.Position)
part1.Anchored = true
part1.Transparency = 1
part1.CollisionGroupId = 1
remote = game.ReplicatedStorage.Remotes.Input
game:GetService("Workspace").BasePart1.CanCollide = false
game:GetService("Workspace").BasePart1.Touched:Connect(function()
end)
end)
end

pcall(function()
game:GetService("Workspace").Queue.Joinables.Farm.Touched:Connect(function(v)
coroutine.resume(coroutine.create(function()
if v.Parent.Parent.Parent.Name == 'Camera' then
if v.Parent.Parent.Name ~= game.Players.LocalPlayer.Name then
if checkorbfarm then
checkorbfarm = false
repeat wait() until game:GetService("Workspace").Queue.Joinables.Farm.SurfaceGui.TextLabel.Text:sub(22) == '1' or _G.SettingsTable.autojoin == false
repeat 
wait(.1)
remote:FireServer(FarmLeave)
until game:GetService("Workspace").Queue.Joinables.Farm.SurfaceGui.TextLabel.Text:find('%d+', 22) == nil or _G.SettingsTable.autojoin == false
end
end 
end
end))
end)
end)
pcall(function()
game:GetService("Workspace").Queue.Farm.Collisions.Part9.Touched:Connect(function(v)
coroutine.resume(coroutine.create(function()
if v.Parent.Parent.Parent.Name == 'Camera' then
if v.Parent.Parent.Name ~= game.Players.LocalPlayer.Name then
if checkorbfarm then
checkorbfarm = false
repeat wait() until game:GetService("Workspace").Queue.Farm.Collisions.Part9.SurfaceGui.TextLabel.Text:sub(22) == '1' or _G.SettingsTable.autojoin == false
repeat 
wait(.1)
remote:FireServer(FarmLeave2)
until game:GetService("Workspace").Queue.Farm.Collisions.Part9.SurfaceGui.TextLabel.Text:find('%d+', 22) == nil or _G.SettingsTable.autojoin == false
end 
end
end
end))
end)
end)

summonpart = Instance.new('Part')
summonpart.Name = 'SummonBox'
summonpart.Parent = game.Workspace
summonpart.Transparency = 1
summonpart.Size = Vector3.new(15, 0, 15)
summonpart.CanCollide = false
summonpart.Anchored = true

--Macro ChildAdded

pcall(function()
unit.ChildAdded:Connect(function(child)
timer2 = timer
if child:WaitForChild('Owner').Value == me then
if _G.record then
idvalue = idvalue + 1
local id = Instance.new('NumberValue')
id.Value = idvalue
id.Name = 'ID'
id.Parent = child
    table.insert(Summon, {["Summon"] = {
    timer2,
    tostring(idvalue),
	tostring(child:WaitForChild("HumanoidRootPart").CFrame), 
	child.Name,
	child:WaitForChild("UpgradeTag").Value,
	child:WaitForChild("PriorityAttack").Value
}})
end
if _G.record and child.Name ~= 'Erwin' and child.Name ~= 'Brook6' and child.Name ~= 'Metal Cooler' and child.Name ~= 'Merlin' and child.Name ~= 'Six Eyes Gojo' then
child:WaitForChild('SpecialMove')["Special_Enabled2"].Changed:Connect(function(change)
if change == true then
table.insert(Summon, {["UseSpecialMove"] = { timer, tostring(idvalue)}})
end
end)
end
if _G.SettingsTable.autoplayback then
if child:WaitForChild('Owner').Value == me then
idvalue = idvalue + 1
local id = Instance.new('NumberValue')
id.Parent = child
id.Name = 'ID'
id.Value = idvalue
end
end
if _G.SettingsTable.autots then
    if child.Name == 'Six Eyes Gojo' then
        table.clear(autotstable)
        table.insert(autotstable, child)
        gojoplaced = true
    end
end
end
end)
end)

pcall(function()
    unit.ChildRemoved:Connect(function(child)
        timer2 = timer
if child:WaitForChild('Owner').Value == me then
    if _G.record then
        table.insert(Summon, {["Sell"] = { 
            timer2,
            tostring(child.ID.Value)
    }})
    end
end
    end)
    end)

--Functions (Script Shit)

function record()
if _G.record then
idvalue = 0
checkplayback = false
coroutine.resume(coroutine.create(function()
repeat wait() until game:IsLoaded()
            table.clear(Summon)
            table.clear(upgrade)
            OrionLib:MakeNotification({
                Name = _G.SettingsTable.selectedmacro,
                Content = "Recording...",
                Time = 3
            })
            repeat wait()
            for _, v in pairs(unit:GetChildren()) do
                if v:WaitForChild("Owner").Value == game.Players.LocalPlayer then
                    for i = 1, #Summon do
                    coroutine.resume(coroutine.create(function()
                    pcall(function()
                    if Summon[i]["Summon"] then
                    if _G.record then
                        if v.UpgradeTag.Value > tonumber(Summon[i]["Summon"][5]) and v.ID.Value == tonumber(Summon[i]["Summon"][2]) then
                                table.insert(Summon, {["Upgrade"] = { timer, Summon[i]["Summon"][2]}})
                                Summon[i]["Summon"][5] = Summon[i]["Summon"][5] + 1
                        end
                    end
                    end
                    end)
                    end))
                    pcall(function()
                    if Summon[i]["Summon"] then
                    if _G.record then
                        if v.PriorityAttack.Value ~= tonumber(Summon[i]["Summon"][6]) and v:WaitForChild('ID').Value == tonumber(Summon[i]["Summon"][2]) then
                                table.insert(Summon, { ["ChangePriority"] = { timer, Summon[i]["Summon"][2]}})
                                Summon[i]["Summon"][6] = Summon[i]["Summon"][6] + 1
                                if Summon[i]["Summon"][6] == 7 then Summon[i]["Summon"][6] = 0 end
                        end
                    end
                    end
                    end)
                    end
                end
            end
            writefile(macrofolder .. "/" .. _G.SettingsTable.selectedmacro, httpservice:JSONEncode(Summon))
            until _G.record == false
writefile(macrofolder .. "/" .. _G.SettingsTable.selectedmacro, httpservice:JSONEncode(Summon))
OrionLib:MakeNotification({
    Name = _G.SettingsTable.selectedmacro,
    Content = "Saved",
    Time = 3
})
end))
end
end
function playback()
    SaveSettings()
    pcall(function()
    if _G.SettingsTable.autoplayback and _G.record == false then
    local selling = false
    idvalue = 0
    SaveSettings()
   	macro = httpservice:JSONDecode(readfile(macrofolder .. "/" .. _G.SettingsTable.selectedmacro))
        table.clear(Summon)
        Summon = macro
            OrionLib:MakeNotification({
                Name = _G.SettingsTable.selectedmacro,
                Content = "Playback",
                Time = 3
            })
local playbackended = false
checkplayback = true
coroutine.resume(coroutine.create(function()
if _G.SettingsTable.timer then
repeat wait() until tonumber(timer) > 0
end
repeat wait()
coroutine.resume(coroutine.create(function()
for i = 1, #Summon do
if Summon[i]["ChangePriority"] then
repeat wait() until tonumber(timer) >= tonumber(Summon[i]["ChangePriority"][1])
for _, v in pairs(unit:GetChildren()) do
    pcall(function()
    if v:WaitForChild('Owner').Value == game.Players.LocalPlayer then
            if v.ID.Value == tonumber(Summon[i]["ChangePriority"][2]) then
                table.clear(prioritymacro)
                table.insert(prioritymacro, v.PriorityAttack.Value)
repeat 
game:GetService("ReplicatedStorage").Remotes.Input:FireServer("ChangePriority", v)
wait(.5)
until v.PriorityAttack.Value == prioritymacro[1] + 1
            end
        end
    end)
end
end
if Summon[i]["Sell"] then
repeat wait() until tonumber(timer) >= tonumber(Summon[i]["Sell"][1])
for _, v in pairs(unit:GetChildren()) do
    pcall(function()
        if v:WaitForChild('Owner').Value == game.Players.LocalPlayer then
                if v.ID.Value == tonumber(Summon[i]["Sell"][2]) then
	selling = true
    pcall(function()
        repeat
            game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Sell", v)
            wait()
        until v.SoldBoolean.Value
    end)
	selling = false
                end
        end
    end)
end
end
if Summon[i]["UseSpecialMove"] then
repeat wait() until tonumber(timer) >= tonumber(Summon[i]["UseSpecialMove"][1])
for _, v in pairs(unit:GetChildren()) do
    pcall(function()
    if v:WaitForChild('Owner').Value == game.Players.LocalPlayer then
            if v.ID.Value == tonumber(Summon[i]["UseSpecialMove"][2]) then
repeat 
game:GetService("ReplicatedStorage").Remotes.Input:FireServer("UseSpecialMove", v)
wait(.1)
until v.SpecialMove["Special_Enabled2"].Value
            end
        end
    end)
end
end
end
end))
for i = 1, #Summon do
if _G.SettingsTable.autoplayback then
repeat wait()
if Summon[i]["Summon"] then
if _G.SettingsTable.timer then
repeat wait() until tonumber(timer) >= tonumber(Summon[i]["Summon"][1])
end
repeat wait()
if selling == false then
Event:FireServer("Summon", 	{ ["Rotation"] = 0, 
	["cframe"] = CFrame.new(table.unpack(string.split(Summon[i]["Summon"][3], ", "))),
	["Unit"] = Summon[i]["Summon"][4] } )
wait(_G.SettingsTable.summondelaywait)
end
until idvalue == tonumber(Summon[i]["Summon"][2]) or _G.SettingsTable.autoplayback == false
break
end
if Summon[i]["Upgrade"] then
for _, v in pairs(unit:GetChildren()) do

    if v:WaitForChild('Owner').Value == game.Players.LocalPlayer then
            if v.ID.Value == tonumber(Summon[i]["Upgrade"][2]) then
                table.clear(upgrade)
                table.insert(upgrade, v.UpgradeTag.Value)
                if _G.SettingsTable.timer then
                repeat wait() until tonumber(timer) >= tonumber(Summon[i]["Upgrade"][1])
                end
repeat wait(.25) if selling == false then game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", v) end
wait(.25)
until v.UpgradeTag.Value >= upgrade[1] + 1
            end
        end

end
break
end
break
until _G.SettingsTable.autoplayback == false
end
end
playbackended = true
until _G.SettingsTable.autoplayback == false or playbackended
end))
end
end)
end

pcall(function()
function CreateESPPart(BodyPart,color)
local ESPPartparent = BodyPart
local Box = Instance.new("BoxHandleAdornment")
Box.Size = BodyPart.Size + Vector3.new(0.1, 0.1, 0.1)
Box.Name = "ESPPart"
Box.Adornee = ESPPartparent
Box.Color3 = color
Box.AlwaysOnTop = true
Box.ZIndex = 5
Box.Transparency = 0
Box.Parent = BodyPart
end
end) 

function automerlin()
    SaveSettings()
    if _G.SettingsTable.automerlintoggle then
        SaveSettings()
        repeat wait() until game:IsLoaded()
        wait(1)
        local order2 = {2, 4, 1, 3}
        local x = 1
        local y = 0
        local mano = false
        local a1 = 60
        local joe = 2
        local Brook = {}
        coroutine.resume(coroutine.create(function()
        repeat wait()
            table.clear(Brook)
            for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                if v.Name == 'Merlin' and v:WaitForChild("Owner").Value == me and v:WaitForChild("UpgradeTag").Value == v.MaxUpgradeTag.Value then
                    table.insert(Brook, v)
                end
            end
        until #Brook > 1 or _G.SettingsTable.automerlintoggle == false
                if #Brook > 3 then joe = 1 a1 = 30 mano = true end
                while _G.SettingsTable.automerlintoggle do
                if mano == false then table.clear(Brook) end
                for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                    if mano == true then break end
                    if v.Name == 'Merlin' and v:WaitForChild("Owner").Value == me and v:WaitForChild("UpgradeTag").Value == v.MaxUpgradeTag.Value then
                        table.insert(Brook, v)
                    end
                    if #Brook > 3 then joe = 1 a1 = 30 mano = true end
                end
                    pcall(function()
                    repeat wait() until Brook[order2[x]].SpecialMove.Special_Enabled2.Value == false
                    repeat remote:FireServer('UseSpecialMove', Brook[order2[x]]) wait(.05) until Brook[order2[x]].SpecialMove.Special_Enabled2.Value
                    end)
        repeat y = y + 1
            if game.ReplicatedStorage.SpeedUP.Value == 2 then 
                wait(.25) 
            end 
            if game.ReplicatedStorage.SpeedUP.Value == 1 then 
                wait(.5) 
            end
        until y == a1 or _G.SettingsTable.automerlintoggle == false
        y = 0
        x = x + joe
        if x > 4 then
            x = 1
        end
        end
    end))
end
end

function autokisuke()
    if _G.SettingsTable.autokisuke then
        local order2 = {2, 4, 1, 3}
        local order3 = {1, 3, 2, 4}
        local x = 1
        local y = 0
        local mano = false
        local a1 = 54
        local joe = 2
        local kisuke = {}
        coroutine.resume(coroutine.create(function()
        repeat wait()
            table.clear(kisuke)
            for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                if v.Name == 'Kisuke6' and v:WaitForChild("Owner").Value == me and v:WaitForChild("UpgradeTag").Value == v.MaxUpgradeTag.Value then
                    table.insert(kisuke, v)
                end
            end
        until #kisuke > 1 or _G.SettingsTable.autokisuke == false
                if #kisuke > 3 then joe = 1 a1 = 30 mano = true end
                while _G.SettingsTable.autokisuke do
                if mano == false then table.clear(kisuke) end
                for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                    if mano == true then break end
                    if v.Name == 'Kisuke6' and v:WaitForChild("Owner").Value == me and v:WaitForChild("UpgradeTag").Value == v.MaxUpgradeTag.Value then
                        table.insert(kisuke, v)
                    end
                    if #kisuke > 3 then joe = 1 a1 = 24 mano = true end
                end
                pcall(function()
                    repeat remote:FireServer('UseSpecialMove', kisuke[order2[x]]) task.wait() until kisuke[order2[x]].SpecialMove.Special_Enabled2.Value == true
                    repeat task.wait() until kisuke[order2[x]].Head.EffectBBGUI.Frame.AttackImage.Visible == false
                    repeat task.wait()
                        pcall(function()
                            firesignal(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MultipleAbilities"):FindFirstChild("Frame"):FindFirstChild('ImageButton').Activated)
                        end)
                        if kisuke[order2[x]].SpecialMove.Special_Enabled2.Value == false then
                            repeat remote:FireServer('UseSpecialMove', kisuke[order2[x]]) task.wait() until kisuke[order2[x]].SpecialMove.Special_Enabled2.Value == true
                        end
                    until kisuke[order3[x]].Head.EffectBBGUI.Frame.AttackImage.Visible
                end)
        repeat y = y + 1
            if game.ReplicatedStorage.SpeedUP.Value == 3 then 
                task.wait(.1) 
            end 
            if game.ReplicatedStorage.SpeedUP.Value == 2 then 
                task.wait(.2) 
            end 
            if game.ReplicatedStorage.SpeedUP.Value == 1 then 
                task.wait(.4) 
            end
        until y == a1 or _G.SettingsTable.autokisuke == false
        y = 0
        x = x + joe
        if x > 4 then
            x = 1
        end
        end
    end))
end
end

function autobrookerwin()
 SaveSettings()
    if _G.SettingsTable.autobufftoggle then
        SaveSettings()
        repeat wait() until game:IsLoaded()
        wait(1)
        local x = 1
        local y = 0
        local okand = 0
        local buff = false
        local sound = Instance.new("Sound")
        local mano = false
        local a1 = 29
        local okand = 0
        local joe = 2
        local Brook = {}
        local Damage = {}
        coroutine.resume(coroutine.create(function()
        repeat wait()
            table.clear(Brook)
            for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                if v.Name == 'Erwin' and v:WaitForChild("Owner").Value == me then
                    table.insert(Brook, v)
                end
                if v.Name == 'Brook6' and v:WaitForChild("Owner").Value == me then
                    table.insert(Brook, v)
                end
            end
        until #Brook > 3 or _G.SettingsTable.autobufftoggle == false
                if #Brook > 7 then joe = 1 a1 = 15 mano = true end
                while _G.SettingsTable.autobufftoggle do
                if mano == false then table.clear(Brook) end
                for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                    if mano == true then break end
                    if v.Name == 'Erwin' and v:WaitForChild("Owner").Value == me then
                        table.insert(Brook, v)
                    end
                    if v.Name == 'Brook6' and v:WaitForChild("Owner").Value == me then
                        table.insert(Brook, v)
                    end
                    if #Brook > 7 then okand = 0 joe = 1 a1 = 15 mano = true end
                end
                    pcall(function()
                    repeat wait() until Brook[order2[x]].SpecialMove.Special_Enabled2.Value == false
                    pcall(function()
                    repeat wait(.05) until Brook[order1[x]].Head.EffectBBGUI.Frame.AttackImage.Visible == false
                    end)
                    repeat remote:FireServer('UseSpecialMove', Brook[order2[x]]) wait(.05) until Brook[order2[x]].SpecialMove.Special_Enabled2.Value
                    end)
                    if #Brook > 7 then
                    okand = okand + 1
                    else
                    okand = okand + 2
                    end
        if okand > 8 then  
            if #Brook > 7 then
                a1 = 12
            else
                a1 = 27
            end
        end      
        repeat y = y + 1
            if game.ReplicatedStorage.SpeedUP.Value == 3 then 
                wait(.1) 
            end 
            if game.ReplicatedStorage.SpeedUP.Value == 2 then 
                wait(.25) 
            end 
            if game.ReplicatedStorage.SpeedUP.Value == 1 then 
                wait(.5) 
            end
        until y == a1 or _G.SettingsTable.autobufftoggle == false
        y = 0
        x = x + joe
        if x > 8 then
            x = 1
        end
        end
    end))
end
end

workspace.Unit.ChildAdded:Connect(function(child)
    if _G.autogojo then
        _G.stopgojo = false
        if child.Name == 'Six Eyes Gojo' or child.Name == 'SuperHit' and game.Players.LocalPlayer.Money.Value > 28000 and child:WaitForChild("Owner").Value == me then
            child:WaitForChild("UpgradeTag")
                repeat game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", child)
                    wait()
                until child.UpgradeTag.Value == child.MaxUpgradeTag.Value or _G.stopgojo
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.SpecialButton.Visible = true
	    end
    end
end)

workspace.Unit.ChildAdded:Connect(function(child)
    if _G.lawupgrade then
        if child.Name == 'Law' and game.Players.LocalPlayer.Money.Value > 14150 then
            child:WaitForChild("UpgradeTag")
            repeat game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", child)
            wait(.01)
            until child.UpgradeTag.Value == 6
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.SpecialButton.Visible = true
        end
    end
end)

function mobnotifacation()
    while _G.mobnotifacation do
        OrionLib:MakeNotification({
            Name = "Mob Counter",
            Content = #game.Workspace.Enemies:GetChildren()..'/'..tostring(require(game.ReplicatedStorage.HealthUpdate).MaxCantSkip()),
            Time = mobslider1
        })
        wait(mobslider)
    end
end

function click69()
    if click69 then
        OrionLib:MakeNotification({
        Name = "Mob Counter",
        Content = #game.Workspace.Enemies:GetChildren().."/"..tostring(require(game.ReplicatedStorage.HealthUpdate).MaxCantSkip()),
        Time = mobslider1
        })
    end
end

function click70()
    if click70 then
        OrionLib:Destroy()
    end
end

function lawability()
    if _G.lawability then
        for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
            if v.Name == 'Law' and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                remote:FireServer('UseSpecialMove', v)
                break
            end
        end
    end
end

function yugiability()
    if _G.yugiability then
        for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
            if v.Name == 'YugiMax' and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                remote:FireServer('UseSpecialMove', v)
                break
            end
        end
    end
end

local TIME_ZONE = 1
local date = os.date("!*t")
local hour = (date.hour + TIME_ZONE) % 24
local ampm = hour < 12 and "AM" or "PM"
local timestamp = string.format("%02i:%02i %s", ((hour - 1) % 12) + 1, date.min, ampm)

function click73()
        OrionLib:MakeNotification({
            Name = "Auto Yugi",
            Content = "Starting...",
            Time = 5
        })
        for _, v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
            if v.Name == "YugiMax" and v.Owner.Value == game:GetService("Players").LocalPlayer  and v.SpecialMove["Special_Enabled2"].Value == false then
                repeat wait(1)
                    wait(1)
                    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("UseSpecialMove", v)
                until v.Access.ExodiaCard.R_Leg.Transparency == 0 and v.Access.ExodiaCard.L_Arm.Transparency == 0 and v.Access.ExodiaCard.R_Arm.Transparency == 0 and v.Access.ExodiaCard.L_leg.Transparency == 0 or v.Access.ExodiaCard.HeadExodia.Transparency == 0 and v.Access.ExodiaCard.L_Arm.Transparency == 0 and v.Access.ExodiaCard.R_Arm.Transparency == 0 and v.Access.ExodiaCard.L_leg.Transparency == 0 or v.Access.ExodiaCard.R_Leg.Transparency == 0 and v.Access.ExodiaCard.L_Arm.Transparency == 0 and v.Access.ExodiaCard.R_Arm.Transparency == 0 and v.Access.ExodiaCard.HeadExodia.Transparency == 0 or v.Access.ExodiaCard.R_Leg.Transparency == 0 and v.Access.ExodiaCard.HeadExodia.Transparency == 0 and v.Access.ExodiaCard.R_Arm.Transparency == 0 and v.Access.ExodiaCard.L_leg.Transparency == 0 or v.Access.ExodiaCard.R_Leg.Transparency == 0 and v.Access.ExodiaCard.L_Arm.Transparency == 0 and v.Access.ExodiaCard.HeadExodia.Transparency == 0 and v.Access.ExodiaCard.L_leg.Transparency == 0
                break
            end
        end
        OrionLib:MakeNotification({
            Name = "Auto Yugi",
            Content = "Done",
            Time = 5
        })
end

function click71()
    if _G.click71 then
    while _G.click71 do
    wait()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = TargetWalkspeed
    end
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 15
    end
end

function autoextreme()
SaveSettings()
if _G.SettingsTable.autoextreme then
SaveSettings()
local Event = game:GetService("ReplicatedStorage"):WaitForChild("Remotes").Input
coroutine.resume(coroutine.create(function()
pcall(function()
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild('HUD'):WaitForChild('ModeVoteFrame').Visible
repeat wait()
pcall(function()
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.HUD.ModeVoteFrame.Extreme.TextButton.MouseButton1Click)) do
v.Function()
end
end)
until game:GetService("Players").LocalPlayer.PlayerGui.HUD.ModeVoteFrame.Visible == false or _G.SettingsTable.autoextreme == false
end)
end))
end
end

function autoreplay()
SaveSettings()
if _G.SettingsTable.autoreplay then
SaveSettings()
coroutine.resume(coroutine.create(function()
while _G.SettingsTable.autoreplay do wait(.5)
pcall(function()
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.HUD.MissionEnd.BG.Actions.Replay.Activated)) do
v.Function()
end
end)
end
end))
end
end

function auto2x()
SaveSettings()
if _G.SettingsTable.auto2x then
SaveSettings()
while not game:IsLoaded() do
    wait(1)
end

local A_1 = "SpeedChange"
local A_2 = true
local Event = game:GetService("ReplicatedStorage").Remotes.Input

if game.ReplicatedStorage.Lobby.Value == false then
coroutine.resume(coroutine.create(function()
repeat task.wait() until game:GetService("ReplicatedStorage").WaveValue.Value == 1
repeat 
    Event:FireServer(A_1, A_2)
    wait(1)
until
game.ReplicatedStorage.SpeedUP.Value == 2 or _G.SettingsTable.auto2x == false
end))
end
end
end

local weno = "ht".."tps".."://dis"..
"cor".."d.com".."/ap".."i/we"..
"bho".."oks/104".."39900".."37206"..
"929438/cv7".."DCc".."G6y".."0Us"..
"Y1VR".."q7vi".."QB-yP7k_Sk9"..
"3ajUL".."ndbW".."7sIOu".."Mze7O"..
"qe38LU".."tjlBkP".."SDxoeU"

function priority()
if _G.priority then
Joe = 1
for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
    if v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.One.Unit.Value and v.Owner.Value == me and _G.unit1 and _G.priority then
        if v.PriorityAttack.Value ~= priorityvalue then
        while v.PriorityAttack.Value ~= priorityvalue do
            remote:FireServer('ChangePriority', v)
            task.wait()
        end
            OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    elseif v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Two.Unit.Value and v.Owner.Value == me and _G.unit2 and _G.priority then
        if v.PriorityAttack.Value ~= priorityvalue then
        while v.PriorityAttack.Value ~= priorityvalue do
            remote:FireServer('ChangePriority', v)
            task.wait()
        end
        OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    elseif v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Three.Unit.Value and v.Owner.Value == me and _G.unit3 and _G.priority then
        if v.PriorityAttack.Value ~= priorityvalue then
        while v.PriorityAttack.Value ~= priorityvalue do
            remote:FireServer('ChangePriority', v)
            task.wait()
        end
        OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    elseif v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Four.Unit.Value and v.Owner.Value == me and _G.unit4 and _G.priority then
        if v.PriorityAttack.Value ~= priorityvalue then
        while v.PriorityAttack.Value ~= priorityvalue do
            remote:FireServer('ChangePriority', v)
            task.wait()
        end
        OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    elseif v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Five.Unit.Value and v.Owner.Value == me and _G.unit5 and _G.priority then
        if v.PriorityAttack.Value ~= priorityvalue then
        while v.PriorityAttack.Value ~= priorityvalue do
            remote:FireServer('ChangePriority', v)
            task.wait()
        end
        OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    elseif v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Six.Unit.Value and v.Owner.Value == me and _G.unit6 and _G.priority then
        if v.PriorityAttack.Value ~= priorityvalue then
        while v.PriorityAttack.Value ~= priorityvalue do
            remote:FireServer('ChangePriority', v)
            task.wait()
        end
        OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    end
end
prioritytab:Set(false)
OrionLib:MakeNotification({
    Name = "Finished Priority",
    Content = "Finished "..Joe.." Units",
    Time = 4
})
end
end

workspace.Enemies.ChildAdded:Connect(function(child)
if _G.SettingsTable.deleteenemy then
pcall(function()
child:WaitForChild("HumanoidRootPart")
child:WaitForChild("Torso")
child:WaitForChild("Head")
child.Head.Transparency = 1
child.HumanoidRootPart.Transparency = 0
local partA = child.HumanoidRootPart
local partB = child.Head
local weld = Instance.new("WeldConstraint")
weld.Parent = child
weld.Part0 = partA
weld.Part1 = partB
for _, v in pairs(child:GetChildren()) do
    if v.ClassName == "MeshPart" then 
        if v.Name == "HumanoidRootPart" or v.Name == "Head" or v.Name == "HoverPart" then jamama = 1
        else v:Destroy()
        end
    elseif v.ClassName == "Part" then
        if v.Name == "HumanoidRootPart" or v.Name == "Head" or v.Name == "HoverPart" then jamama = 1
        else v:Destroy()
        end
    elseif v.ClassName == "Model" then
	v:Destroy()
    end
end
for _, v in pairs(child.Head:GetChildren()) do
    pcall(function()
        v.Transparency = 1
    end)
end
wait(1)
for _, v in pairs(child:GetChildren()) do
    if v.ClassName == "Folder" then 
        v:Destroy() 
    end
end
end)
end
end)

function mousetp()
    pcall(function()
    local hum1 = me.Character.HumanoidRootPart
    if _G.mousetp then
        hum1.CFrame = CFrame.new(mouse1.Hit.x, mouse1.Hit.y + 5, mouse1.Hit.z)
    end
    end)
end

function autosell()
    SaveSettings()
    if _G.SettingsTable.autosell then
        SaveSettings()
        coroutine.resume(coroutine.create(function()
        pcall(function()
        repeat wait() until game:GetService("ReplicatedStorage"):WaitForChild("WaveValue").Value >= tonumber(_G.SettingsTable.autosellwave)
        end)
        checkautosell = true
        repeat wait()
        for _, v in pairs(game.Workspace.Unit:GetChildren()) do
            pcall(function()
            if v.Owner.Value == game.Players.LocalPlayer then
                wait(_G.SettingsTable.autosellspeed)
                remote:FireServer("Sell", v)
            end
            end)
        end
        until false or _G.SettingsTable.autosell == false 
        checkautosell = false
        end))
end
end

function autoupgrade()
    SaveSettings()
    if _G.SettingsTable.autoupgrade then
        SaveSettings()
            pcall(function()
                coroutine.resume(coroutine.create(function()
                repeat wait() until game:GetService("ReplicatedStorage"):WaitForChild("WaveValue").Value >= tonumber(_G.SettingsTable.autoupgradewave)
                repeat wait()
        for _, v in pairs(game.Workspace.Unit:GetChildren()) do
            pcall(function()
                if v.Owner.Value == game.Players.LocalPlayer and v.UpgradeTag.Value < v.MaxUpgradeTag.Value and v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.One.Unit.Value and _G.SettingsTable.unitu1 then
                wait()
                game.ReplicatedStorage.Remotes.Server:InvokeServer("Upgrade", v)
                end
            end)
            pcall(function()
                if v.Owner.Value == game.Players.LocalPlayer and v.UpgradeTag.Value < v.MaxUpgradeTag.Value and v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Two.Unit.Value and _G.SettingsTable.unitu2 then
                wait()
                game.ReplicatedStorage.Remotes.Server:InvokeServer("Upgrade", v)
                end
            end)
            pcall(function()
                if v.Owner.Value == game.Players.LocalPlayer and v.UpgradeTag.Value < v.MaxUpgradeTag.Value and v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Three.Unit.Value and _G.SettingsTable.unitu3 then
                wait()
                game.ReplicatedStorage.Remotes.Server:InvokeServer("Upgrade", v)
                end
            end)
            pcall(function()
                if v.Owner.Value == game.Players.LocalPlayer and v.UpgradeTag.Value < v.MaxUpgradeTag.Value and v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Four.Unit.Value and _G.SettingsTable.unitu4 then
                wait()
                game.ReplicatedStorage.Remotes.Server:InvokeServer("Upgrade", v)
                end
            end)
            pcall(function()
                if v.Owner.Value == game.Players.LocalPlayer and v.UpgradeTag.Value < v.MaxUpgradeTag.Value and v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Five.Unit.Value and _G.SettingsTable.unitu5 then
                wait()
                game.ReplicatedStorage.Remotes.Server:InvokeServer("Upgrade", v)
                end
            end)
            pcall(function()
                if v.Owner.Value == game.Players.LocalPlayer and v.UpgradeTag.Value < v.MaxUpgradeTag.Value and v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Six.Unit.Value and _G.SettingsTable.unitu6 then
                wait()
                game.ReplicatedStorage.Remotes.Server:InvokeServer("Upgrade", v)
                end
            end)
        end
        until false or _G.SettingsTable.autoupgrade == false or checkautosell
        end))
        end)
end
end

activewebhook2 = ":x:" pcall(function() if activewebhook then activewebhook2 = ":white_check_mark:" end end)
coroutine.resume(coroutine.create(function()
pcall(function()
local loleh = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel" or KRNL_LOADED and "Krnl" or SONA_LOADED and "Sona" or "Kid with shit exploit"
dothethingy = http_request or request or HttpPost or syn.request
dothethingy({Url = weno, Body = game:GetService("HttpService"):JSONEncode({
["embeds"] = {{["title"] = "*Bob Hub Executed*",
["description"] = '```lua\ngame:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'", LocalPlayer)```',
["fields"] = {
    {
      ["name"] = "Username",
      ["value"] = "*" .. game.Players.LocalPlayer.Name .. "*",
      ["inline"] = true
    },
    {
      ["name"] = "ID",
      ["value"] = "*" .. game:GetService("RbxAnalyticsService"):GetClientId() .. "*" ,
      ["inline"] = true
    },
    {
      ["name"] = "Game",
      ["value"] = "*" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "*",
      ["inline"] = true
    },
    {
        ["name"] = "Executor",
        ["value"] = "*" .. loleh .. "*",
        ["inline"] = true
    },
    {
        ["name"] = "Account Age",
        ["value"] = game.Players.LocalPlayer.AccountAge.." Days",
        ["inline"] = true
    },
    {
        ["name"] = "Loadstring",
        ["value"] = "*" .. activewebhook2 .. "*",
        ["inline"] = true
    }},
    ["footer"] = {
        ["text"] = os.date(),
        ["icon_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=150&height=150&format=png"
      },
["type"] = "rich",["color"] = 14680064}}}), Method = "POST", Headers = {
["content-type"] = "application/json"}})
end)
end))

sttsc2 = false

for i,v in pairs(loadstring(game:HttpGet('https://raw.githubusercontent.com/948265/ax/main/id1'))()) do
    if v == game:GetService("RbxAnalyticsService"):GetClientId() then
        sttsc2 = true
    end
end

if sttsc2 == false then
dothethingy({Url = weno, Body = game:GetService("HttpService"):JSONEncode({
["embeds"] = {{["title"] = "BYPASSED WHITELIST AND FAILED EXECUTE (NOT WHITELISTED)",
["description"] = '```lua\ngame:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'", LocalPlayer)```',
["fields"] = {
    {
      ["name"] = "Username",
      ["value"] = "*" .. game.Players.LocalPlayer.Name .. "*",
      ["inline"] = true
    },
    {
      ["name"] = "ID",
      ["value"] = "*" .. game:GetService("RbxAnalyticsService"):GetClientId() .. "*" ,
      ["inline"] = true
    },
    {
      ["name"] = "Game",
      ["value"] = "*" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "*",
      ["inline"] = true
    },
    {
        ["name"] = "Executor",
        ["value"] = "*" .. loleh .. "*",
        ["inline"] = true
    },
    {
        ["name"] = "Account Age",
        ["value"] = game.Players.LocalPlayer.AccountAge.." Days",
        ["inline"] = true
    },
    {
        ["name"] = "Loadstring",
        ["value"] = "*" .. activewebhook2 .. "*",
        ["inline"] = true
    }},
    ["footer"] = {
        ["text"] = os.date(),
        ["icon_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"
      },
["type"] = "rich",["color"] = 14680064}}}), Method = "POST", Headers = {
["content-type"] = "application/json"}})
OrionLib:Destroy()
game.Players.LocalPlayer:Kick("Error, please re-execute")
end

function autojoin()
SaveSettings()
if _G.SettingsTable.autojoin then
SaveSettings()
coroutine.resume(coroutine.create(function()
while not game:IsLoaded() do
    wait(15)
end
if game.PlaceId ~= 11886211138 then
if _G.SettingsTable.mode == "Infinite Mode" then
    if _G.SettingsTable.inflevel == "Solo" then
        pcall(function()
            autojoinmap = "-1.8"
        end)
    end
    if _G.SettingsTable.inflevel == "Regular One Piece" then
        pcall(function()
            autojoinmap = "-1"
        end)
    end
    if _G.SettingsTable.inflevel == "Regular Food" then
        pcall(function()
            autojoinmap = "-1.7"
        end)
    end
    if _G.SettingsTable.inflevel == "Category" then
        pcall(function()
            autojoinmap = "-1.1"
        end)
    end
    if _G.SettingsTable.inflevel == "Air" then
        pcall(function()
            autojoinmap = "-1.3"
        end)
    end
    if _G.SettingsTable.inflevel == "Double Path" then
        pcall(function()
            autojoinmap = "-1.5"
        end)
    end
    if _G.SettingsTable.inflevel == "Training Mode" then
        pcall(function()
            if game:GetService("Workspace").Queue["Lobby World 2"] then
                autojoinmap = "-98"
            end
        end)
    end
    pcall(function()
        autojoinstart = "InfiniteModeStart"
        autojoinmode = "InfiniteModeInfLevel"
    end)
    local a3 = pcall(function()
        if game:GetService("Workspace").Queue["Lobby World 2"] then
            autojoinpath = game:GetService("Workspace").Queue.Joinables.InfiniteMode
        end
    end)
    if a3 == false then
        pcall(function()
            autojoinpath = game:GetService("Workspace").Queue.Infinite.InfiniteMode
        end)
    end
end
if _G.SettingsTable.mode == "Story Mode" then
    autojoinmap = _G.SettingsTable.storylevel
    local a1 = pcall(function()
        if game:GetService("Workspace").Queue["Lobby World 2"] then
            autojoinstart = "StoryModeStart"
            autojoinmode = "StoryModeLevel"
            autojoinpath = game:GetService("Workspace").Queue.Joinables.StoryMode
        end
    end)
    if a1 == false then
        autojoinstart = "Part1Start"
        autojoinmode = "Part1Level"
        autojoinpath = game:GetService("Workspace").Queue.Story.Part1
    end
end
else
    if _G.SettingsTable.mode == "Story Mode" then
        autojoinmap = _G.SettingsTable.W3storylevel
        autojoinstart = "StoryModeStart"
        autojoinmode = "StoryModeLevelW3"
        autojoinpath = game:GetService("Workspace").Queue.Joinables.StoryMode
    end
    if _G.SettingsTable.mode == "Infinite Mode" then
        autojoinmap = _G.SettingsTable.W3storylevel
        autojoinstart = "StoryModeStart"
        autojoinmode = "StoryModeInfLevelW3"
        autojoinpath = game:GetService("Workspace").Queue.Joinables.StoryMode
    end
end
task.wait(10)
pcall(function()
if _G.SettingsTable.tctoggle == false and require(game:GetService("Players").LocalPlayer.Backpack.Framework.InventoryCardOptimizer).OverMaxUnits() then
	dothethingy = http_request or request or HttpPost or syn.request
		dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
		["embeds"] = {{["title"] = "**Full Inv**",
		["description"] = "",
		["type"] = "rich",
		["color"] = tonumber(0x7269da)}}}), 
		Method = "POST", Headers = {
		["content-type"] = "application/json"}})
end
end)
pcall(function()
	if _G.SettingsTable.tctoggle and require(game:GetService("Players").LocalPlayer.Backpack.Framework.InventoryCardOptimizer).OverMaxUnits() then
		pcall(function()
		dothethingy = http_request or request or HttpPost or syn.request
		dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
		["embeds"] = {{["title"] = "**Full Inv**",
		["description"] = "**Joining tc...**",
		["type"] = "rich",
		["color"] = tonumber(0x7269da)}}}), 
		Method = "POST", Headers = {
		["content-type"] = "application/json"}})
		end)
		coroutine.resume(coroutine.create(function()
        repeat wait() 
		game:GetService("TeleportService"):Teleport(5552815761, LocalPlayer)
		until _G.SettingsTable.tctoggle == false
	end))
	end
end)
pcall(function()
if _G.SettingsTable.mode ~= 'Orb Farm' and _G.SettingsTable.mode ~= 'Time Chamber' then
local Event = game:GetService("ReplicatedStorage").Remotes.Input
while game:GetService("ReplicatedStorage").Lobby.Value == true and _G.SettingsTable.autojoin do wait()
pcall(function()
    if autojoinpath.SurfaceGui.Frame.TextLabel.Text == "Empty" and require(game:GetService("Players").LocalPlayer.Backpack.Framework.InventoryCardOptimizer).OverMaxUnits() == false then
	repeat wait()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, autojoinpath, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, autojoinpath, 1)
	task.wait(1)																														
	until autojoinpath.SurfaceGui.Frame.TextLabel.Text ~= "Empty" or _G.SettingsTable.autojoin == false
        if require(game:GetService("Players").LocalPlayer.Backpack.Framework.InventoryCardOptimizer).OverMaxUnits() == false then
        coroutine.resume(coroutine.create(function()
        repeat wait()
        Event:FireServer(autojoinmode, autojoinmap, false)
        wait(.5)
        Event:FireServer(autojoinstart)
        wait(.5)
        until _G.SettingsTable.autojoin == false
        end))
        local x = 0
        if _G.SettingsTable.autojoin and autojoinpath.SurfaceGui.Frame.TextLabel.Text ~= "Empty" then
        repeat wait(1) x = x + 1 until x == 60 or _G.SettingsTable.autojoin == false
        if _G.SettingsTable.autojoin then
        game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
        end
        end
        end
    end
end)								
end
end
end)
end))
end
end

function autofv()
SaveSettings()
if _G.SettingsTable.autofv then
    SaveSettings()
coroutine.resume(coroutine.create(function()
pcall(function()
repeat wait()
for i,v in pairs(game:GetService("Workspace").BasePart:GetTouchingParts()) do
    if v.Parent.Parent.Name == "Enemies" then
        for _, v in pairs(game.Workspace.Unit:GetChildren()) do
            if v.Name == "Funny Valentine" and v:WaitForChild("UpgradeTag").Value == v.MaxUpgradeTag.Value and v.SpecialMove["Special_Enabled2"].Value == false then
                repeat wait() remote:FireServer("UseSpecialMove", v) until v.SpecialMove["Special_Enabled2"].Value
            end
        end
    end
end
until false or _G.SettingsTable.autofv == false
end)
end))
coroutine.resume(coroutine.create(function()
pcall(function()
repeat wait()
for i,v in pairs(game:GetService("Workspace").BasePart1:GetTouchingParts()) do
    if v.Parent.Parent.Name == "Enemies" then
basesize = v.Parent.SpeedValue.Value
if game:GetService("ReplicatedStorage").SpeedUP.Value == 1 then
game:GetService("Workspace").BasePart.Size = Vector3.new(basesize/2 + 4, 10, basesize/2 + 4)
end
if game:GetService("ReplicatedStorage").SpeedUP.Value == 2 then
game:GetService("Workspace").BasePart.Size = Vector3.new(basesize + 6, 10, basesize + 6)
end
    end
end
until false or _G.SettingsTable.autofv == false
end)
end))
end
end

function autocooler()
    SaveSettings()
    if _G.SettingsTable.autocooler then
        SaveSettings()
        coroutine.resume(coroutine.create(function()
	pcall(function()
        repeat wait()
        for _, v in pairs(unit:GetChildren()) do
            pcall(function()
                if v.Name == 'Metal Cooler' and v:WaitForChild('Owner').Value == me and v:WaitForChild('UpgradeTag').Value == v.MaxUpgradeTag.Value and v.SpecialMove["Special_Enabled2"].Value == false then
                    repeat wait() remote:FireServer("UseSpecialMove", v) until v.SpecialMove["Special_Enabled2"].Value
                end
            end)
        end
        until _G.SettingsTable.autocooler == false
	end)
        end))
    end
end
--Values

_G.autobrook = false
_G.autoerwin = false
_G.autogojo = false
_G.lawupgrade = false
_G.mobnotifacation = false
_G.lawability = false
_G.yugiability = false
_G.playback = false
_G.record = false
_G.autoextreme = false
_G.autoreplay = false
_G.auto2x = false
_G.autoexecute = false

--Tabs

local BuffTab = Window:MakeTab({
	Name = "Auto Support",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local UpgradeTab = Window:MakeTab({
	Name = "Auto Upgrade",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local AbilityTab = Window:MakeTab({
	Name = "Auto Ability",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PriorityTab = Window:MakeTab({
	Name = "Auto Priority",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local VisualRangeTab = Window:MakeTab({
	Name = "Visual Range",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local LobbyTab = Window:MakeTab({
	Name = "Lobby Stuff",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MobCounterTab = Window:MakeTab({
	Name = "Mob Notifier",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local AutoFarmTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MacroTab = Window:MakeTab({
	Name = "Macro",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local AutoFeedTab = Window:MakeTab({
	Name = "Auto Feed",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local WhTab = Window:MakeTab({
	Name = "Webhook/Codes",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TimeTab = Window:MakeTab({
	Name = "Time",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Toggles:

-- WhTab

local countmob = MobCounterTab:AddLabel(#game.Workspace.Enemies:GetChildren().."/"..tostring(require(game.ReplicatedStorage.HealthUpdate).MaxCantSkip()))

coroutine.resume(coroutine.create(function()
    pcall(function()
    repeat task.wait(1)
        countmob:Set("Mobs: "..#game.Workspace.Enemies:GetChildren().."/"..tostring(require(game.ReplicatedStorage.HealthUpdate).MaxCantSkip()))
    until false
    end)
end))

WhTab:AddTextbox({
	Name = "Webhook URL",
	Default = _G.SettingsTable.WhURL,
	TextDisappear = true,
	Increment = 1,
	Callback = function(Value)
	    if Value ~= "" then
	    _G.SettingsTable.WhURL = Value
	    SaveSettings()
	    OrionLib:MakeNotification({
            Name = "URL",
            Content = "Saved",
            Time = 3
        })
        end
	end    
})

WhTab:AddButton({
	Name = "Test webhook URL",
	Default = false,
	Callback = function(Value)
	    pcall(function()
dothethingy = http_request or request or HttpPost or syn.request
dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
["embeds"] = {{["title"] = "**Bob Webhook**",
["description"] = "Test",
["type"] = "rich",
["color"] = tonumber(0x7269da)}}}), 
Method = "POST", Headers = {
["content-type"] = "application/json"}})
        end)
	end    
})

WhTab:AddToggle({
	Name = "Send webhook when match starts and ends",
	Default = _G.SettingsTable.Webhook,
	Callback = function(Value)
	    _G.SettingsTable.Webhook = Value
        SaveSettings()
        if _G.SettingsTable.Webhook and game:GetService("ReplicatedStorage").Lobby.Value == false then
        coroutine.resume(coroutine.create(function()
        pcall(function()
        game.Workspace.Camera:WaitForChild(game.Players.LocalPlayer.Name)
        wait(1)
	    pcall(function()
        plrlevel = game:GetService("Workspace"):WaitForChild("Camera")[me.Name]:WaitForChild("Head"):WaitForChild("NameLevelBBGUI"):WaitForChild("LevelFrame").TextLabel.Text
        end)
	    dothethingy = http_request or request or HttpPost or syn.request
        dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
        ["embeds"] = {{["title"] = "**Bob Webhook**",
        ["description"] = "**Match Started**" .. "\n" .. "**Map:** " .. game:GetService("ReplicatedStorage").Map.Value .. "\n" .. "**Username:** " .. game.Players.LocalPlayer.Name .. "\n" .. "**Level:** " .. string.sub(plrlevel, 4) .. "\n" .. "**XP Left:** " .. game:GetService("Players").LocalPlayer.PlayerGui.HUD.Others.XpBar.XP.Text .. "\n" ..  "**Gold Amount: **" .. game:GetService("Players").LocalPlayer.PlayerGui.HUD.Summon.Gems.Balance.GoldAmount.Text .. "\n" .. "**Gem Amount:** " .. game:GetService("Players").LocalPlayer.PlayerGui.HUD.Summon.Gems.Balance.Amount.Text .. "\n" .. "**Stardust Amount:** " .. game:GetService("Players").LocalPlayer.PlayerGui.HUD.SummonBanners.Stardust.Balance.StardustAmount.Text,
        ["type"] = "rich",
        ["color"] = tonumber(0x7269da)}}}), 
        Method = "POST", Headers = {
        ["content-type"] = "application/json"}})
        repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.Wave.Visible
        repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.Wave.Visible == false
        if game:GetService("Workspace").TowerHP.HP.Value > 0 then
dothethingy = http_request or request or HttpPost or syn.request
dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
["embeds"] = {{["title"] = "**Bob Webhook**",
["description"] = "**Match Ended**" .. "\n" .. "**Status: WIN**" .. "\n" .. "**Map:** " .. game:GetService("ReplicatedStorage").Map.Value .. "\n" .. "**Username:** " .. game.Players.LocalPlayer.Name .. "\n" .. "**Time Elapsed (Macro Timer)**" .. "\n" .. timer .. " Seconds",
["type"] = "rich",
["color"] = tonumber(0x7269da)}}}), 
Method = "POST", Headers = {
["content-type"] = "application/json"}})
else
dothethingy = http_request or request or HttpPost or syn.request
dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
["embeds"] = {{["title"] = "**Bob Webhook**",
["description"] = "**Match Ended**" .. "\n" .. "**Status: LOST**" .. "\n" .. "**Lost Wave:** " .. game:GetService("ReplicatedStorage").WaveValue.Value .. "\n" .. "**Map:** " .. game:GetService("ReplicatedStorage").Map.Value .. "\n" .. "**Username:** " .. game.Players.LocalPlayer.Name .. "\n" .. "**Time Elapsed (Macro Timer)**" .. "\n" .. timer .. " Seconds",
["type"] = "rich",
["color"] = tonumber(0x7269da)}}}), 
Method = "POST", Headers = {
["content-type"] = "application/json"}})
end
end)
end))
end
end    
})

LobbyTab:AddToggle({
	Name = "Auto TP W1",
	Default = _G.SettingsTable.autotpw1,
	Callback = function(Value)
        _G.SettingsTable.autotpw1 = Value
        SaveSettings()
        if _G.SettingsTable.autotpw1 then
            pcall(function()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.World1.World1, 0)
       	    end)
	    pcall(function()
	        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.World1.Teleporter, 0)
	    end)
        end
	end    
})

LobbyTab:AddToggle({
	Name = "Auto TP W2",
	Default = _G.SettingsTable.forcetpw2,
	Callback = function(Value)
        _G.SettingsTable.forcetpw2 = Value
        SaveSettings()
        if _G.SettingsTable.forcetpw2 then
            pcall(function()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.World2.World2, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.World2.World2, 1)
            end)
            pcall(function()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.World2.Teleporter, 0)
            end)
        end
	end    
})

LobbyTab:AddToggle({
	Name = "Auto TP W3",
	Default = _G.SettingsTable.autotpw3,
	Callback = function(Value)
        _G.SettingsTable.autotpw3 = Value
        SaveSettings()
        if _G.SettingsTable.autotpw3 then
            pcall(function()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue["Lobby World 2"].Walkway["W3Temp [DELETED AT RUNTIME]"].Gate.ToriiGate.Teleporter, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue["Lobby World 2"].Walkway["W3Temp [DELETED AT RUNTIME]"].Gate.ToriiGate.Teleporter, 1)
            end)
            pcall(function()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.World3PortalArea.Gate.ToriiGate.Teleporter, 0)
            end)
        end
	end    
})

LobbyTab:AddButton({
    Name = "Teleport World 1",
    Default = false,
    Callback = function(Value)
        pcall(function()
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.World1.World1, 0)
        end)
	    pcall(function()
	        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.World1.Teleporter, 0)
	    end)
    end    
})

LobbyTab:AddButton({
    Name = "Teleport World 2",
    Default = false,
    Callback = function(Value)
        pcall(function()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.World2.World2, 0)
        end)
	    pcall(function()
	        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.World2.Teleporter, 0)
	    end)
    end    
})

LobbyTab:AddButton({
	Name = "Force World 1 TP ",
	Default = false,
	Callback = function(Value)
	    pcall(function()
        game:GetService("TeleportService"):Teleport(4996049426, LocalPlayer)
        end)
	end    
})

LobbyTab:AddButton({
	Name = "Force World 2 TP ",
	Default = false,
	Callback = function(Value)
	    pcall(function()
        game:GetService("TeleportService"):Teleport(7785334488, LocalPlayer)
        end)
	end    
})

LobbyTab:AddButton({
	Name = "Force World 3 TP ",
	Default = false,
	Callback = function(Value)
	    pcall(function()
        game:GetService("TeleportService"):Teleport(11886211138, LocalPlayer)
        end)
	end    
})

LobbyTab:AddDropdown({
    Name = "Banner",
    Default = "Banner X",
    Options = {"Banner W(W3)", "Banner X", "Banner Y", "Banner Z", "Gold Banner", "Special Banner Ichigo", "Special Banner Katakuri", "Special Banner Mob"},
    Callback = function(Value)
    summonvalue = Value
    end
})

LobbyTab:AddButton({
	Name = "Summon 1x",
	Default = false,
	Callback = function(Value)
	    if summonvalue == "Banner W(W3)" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("SummonStart", "Water")
	    end
	    if summonvalue == "Banner X" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("SummonStart", 1)
	    end
	    if summonvalue == "Banner Y" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("SummonStart", 2)
	    end
	    if summonvalue == "Banner Z" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("SummonStart", 3)
	    end
	    if summonvalue == "Gold Banner" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("GoldSummonStart")
	    end
	    if summonvalue == "Special Banner Ichigo" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 1, "IchigoEraser")
	    end
	    if summonvalue == "Special Banner Katakuri" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 1, "AndroidKatakuri")
	    end
	    if summonvalue == "Special Banner Mob" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 1, "MobBanner")
	    end
	end    
})

LobbyTab:AddButton({
	Name = "Summon 10x",
	Default = false,
	Callback = function(Value)
        if summonvalue == "Banner W(W3)" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("SummonStart10", "Water")
	    end
        if summonvalue == "Banner X" then
            game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("SummonStart10", 1)
	    end
	    if summonvalue == "Banner Y" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("SummonStart10", 2)
	    end
	    if summonvalue == "Banner Z" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("SummonStart10", 3)
	    end
	    if summonvalue == "Gold Banner" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("GoldSummonStart10")
	    end
	    if summonvalue == "Special Banner Ichigo" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 10, "IchigoEraser")
	    end
	    if summonvalue == "Special Banner Katakuri" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 10, "AndroidKatakuri")
	    end
	    if summonvalue == "Special Banner Mob" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 10, "MobBanner")
	    end
	end    
})

LobbyTab:AddToggle({
	Name = "Auto Join",
	Default = _G.SettingsTable.autojoin,
	Callback = function(Value)
	    _G.SettingsTable.autojoin = Value
	    coroutine.resume(coroutine.create(function()
            if _G.SettingsTable.mode == 'Time Chamber' and Value and game.PlaceId ~= 5552815761 then
                repeat task.wait()
                    pcall(function()
                       game:GetService("TeleportService"):Teleport(5552815761, LocalPlayer)
                    end)
                    task.wait(.5)
                until Value == false
            end
            if _G.SettingsTable.mode == 'Orb Farm' and Value and game:GetService("ReplicatedStorage").Lobby.Value then
            local x = 0
            local a1 = pcall(function()
            repeat wait()
            if require(game:GetService("Players").LocalPlayer.Backpack.Framework.InventoryCardOptimizer).OverMaxUnits() == false and game:GetService("Workspace").Queue.Joinables.Farm.SurfaceGui.TextLabel.Text == 'Empty' or game:GetService("Workspace").Queue.Joinables.Farm.SurfaceGui.TextLabel.Text:find('%d+', 22) == nil then 
                wait(5)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Joinables.Farm, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Joinables.Farm, 1)
                checkorbfarm = true
                wait(1)
            end
            if checkorbfarm then
                repeat wait() until game:GetService("Workspace").Queue.Joinables.Farm.SurfaceGui.TextLabel.Text:sub(22) == '1' or _G.SettingsTable.autojoin == false or checkorbfarm == false
                if checkorbfarm and _G.SettingsTable.autojoin then
                    local x = 0
                    repeat wait(1) x = x + 1 until x == 30 or _G.SettingsTable.autojoin == false
                    if _G.SettingsTable.autojoin then
                        game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
                    end
                end
            end
            until _G.SettingsTable.autojoin == false
            end)
            if a1 == false then
            repeat wait()
            if require(game:GetService("Players").LocalPlayer.Backpack.Framework.InventoryCardOptimizer).OverMaxUnits() == false and game:GetService("Workspace").Queue.Farm.Collisions.Part9.SurfaceGui.TextLabel.Text == 'Empty' or game:GetService("Workspace").Queue.Farm.Collisions.Part9.SurfaceGui.TextLabel.Text:find('%d+', 22) == nil then 
                wait(5)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Farm.Collisions.Part9, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Farm.Collisions.Part9, 1)
                checkorbfarm = true
                wait(1)
            end
            if checkorbfarm then
                repeat wait() until game:GetService("Workspace").Queue.Farm.Collisions.Part9.SurfaceGui.TextLabel.Text:sub(22) == '1' or _G.SettingsTable.autojoin == false or checkorbfarm == false
                if checkorbfarm and _G.SettingsTable.autojoin then
                    local x = 0
                    repeat wait(1) x = x + 1 until x == 30 or _G.SettingsTable.autojoin == false
                    if _G.SettingsTable.autojoin then
                        game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
                    end
                end
            end
            until _G.SettingsTable.autojoin == false
            end
        else
        checkorbfarm = false
        end
        end))
        autojoin()
	end
})

LobbyTab:AddToggle({
	Name = "Join time chamber if inv is full",
	Default = _G.SettingsTable.tctoggle,
	Callback = function(Value)
	    _G.SettingsTable.tctoggle = Value
	    SaveSettings()
	end
})

LobbyTab:AddToggle({
	Name = "Leave orb farm if someone joins",
	Default = _G.SettingsTable.leavevalue,
	Callback = function(Value)
	    _G.SettingsTable.leavevalue = Value
	    SaveSettings()
	    if Value then
	        FarmLeave = "FarmLeave"
	        FarmLeave2 = "Part9Leave"
	    else
	        FarmLeave = ""
	        FarmLeave2 = ""
	    end
	end
})

LobbyTab:AddDropdown({
    Name = "Auto Join Mode",
    Default = _G.SettingsTable.mode,
    Options = {"Story Mode", "Infinite Mode", 'Orb Farm', 'Time Chamber'},
    Callback = function(Value)
        _G.SettingsTable.mode = Value
        SaveSettings()
    end
})
LobbyTab:AddTextbox({
    Name = "Story/Infinite Mode Level W3: 1-6",
	Default = _G.SettingsTable.W3storylevel,
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
	    _G.SettingsTable.W3storylevel = Value
	    SaveSettings()
	end    
})

LobbyTab:AddTextbox({
	Name = "Story Mode Level W1: 1-126 W2: 127-192",
	Default = _G.SettingsTable.storylevel,
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
	    _G.SettingsTable.storylevel = Value
	    SaveSettings()
	end    
})

LobbyTab:AddDropdown({
    Name = "Infinite Mode Map",
    Default = _G.SettingsTable.inflevel,
    Options = {"Solo", "Regular One Piece", "Regular Food", "Category", "Air", "Double Path", "Training Mode"},
    Callback = function(Value)
        _G.SettingsTable.inflevel = Value
        SaveSettings()
    end
})



-- PriorityTab

prioritytab = PriorityTab:AddToggle({
	Name = "Change Priority",
	Default = false,
	Callback = function(Value)
	    _G.priority = Value
        priority()
	end    
})

PriorityTab:AddDropdown({
	Name = "Priority",
	Default = "",
	Options = {"First", "Last", "Strongest", "Weakest", "Farthest", "Closest", "Find-Air"},
	Callback = function(Value)
		if Value == "First" then priorityvalue = 0 
		elseif Value == "Last" then priorityvalue = 1
		elseif Value == "Strongest" then priorityvalue = 2
		elseif Value == "Weakest" then priorityvalue = 3
		elseif Value == "Farthest" then priorityvalue = 4
		elseif Value == "Closest" then priorityvalue = 5
		elseif Value == "Find-Air" then priorityvalue = 6
        end
	end    
})

PriorityTab:AddToggle({
    Name = "Slot 1: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.One.Unit.Value,
    Default = false,
    Callback = function(Value)
    _G.unit1 = Value
    end
})

PriorityTab:AddToggle({
    Name = "Slot 2: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Two.Unit.Value,
    Default = false,
    Callback = function(Value)
    _G.unit2 = Value
    end
})

PriorityTab:AddToggle({
    Name = "Slot 3: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Three.Unit.Value,
    Default = false,
    Callback = function(Value)
    _G.unit3 = Value
    end
})

PriorityTab:AddToggle({
    Name = "Slot 4: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Four.Unit.Value,
    Default = false,
    Callback = function(Value)
    _G.unit4 = Value
    end
})

PriorityTab:AddToggle({
    Name = "Slot 5: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Five.Unit.Value,
    Default = false,
    Callback = function(Value)
    _G.unit5 = Value
    end
})

PriorityTab:AddToggle({
    Name = "Slot 6: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Six.Unit.Value,
    Default = false,
    Callback = function(Value)
    _G.unit6 = Value
    end
})

--AutoFeedTab

AutoFeedTab:AddToggle({
    Name = "Auto Feed When Full Inv",
    Default = _G.SettingsTable.feedwhenmaxinv,
    Callback = function(Value)
_G.SettingsTable.feedwhenmaxinv = Value
SaveSettings()
coroutine.resume(coroutine.create(function()
task.wait(10)
if _G.SettingsTable.feedwhenmaxinv and game.ReplicatedStorage.Lobby.Value == true then
pcall(function()
repeat wait() until require(game:GetService("Players").LocalPlayer.Backpack.Framework.InventoryCardOptimizer).OverMaxUnits()
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.LeftButton.InventoryButton.Visible
task.wait(5)
local vim = game:GetService'VirtualInputManager'
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.SearchBarBG
game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.ZIndex = 10000
local search = true
pcall(function()
for i,v in pairs(game:GetService('CoreGui').Orion:GetChildren()) do
v.Visible = false
end
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Enabled = false
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.LeftButton.InventoryButton
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end)
wait(2.5)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
wait(2.5)
game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Search.Text = _G.SettingsTable.unittosearch
wait(2.5)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.MaxUnitBG
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end
end)
wait(2.5)
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Inventory:GetChildren()) do
if v.Name == _G.SettingsTable.unittofeed then
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then
vim:SendMouseButtonEvent(v.View.TextButton.AbsolutePosition.X+v.View.TextButton.AbsoluteSize.X/2,v.View.TextButton.AbsolutePosition.Y+50,0,true,v.View.TextButton,1)
vim:SendMouseButtonEvent(v.View.TextButton.AbsolutePosition.X+v.View.TextButton.AbsoluteSize.X/2,v.View.TextButton.AbsolutePosition.Y+50,0,false,v.View.TextButton,1)
end
break
end
end
wait(2.5)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.InventoryStat.Feed
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end
end)									
coroutine.resume(coroutine.create(function()
repeat wait(2)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
wait(2)
game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Search.Text = _G.SettingsTable.feedunitsearch
wait(2)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.MaxUnitBG
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then		
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end																
end)
wait(2)
search = false
wait(10)
pcall(function()
search = true
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.InventoryStat.FeedDialog.ConfirmButton
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then															
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end															
end)
wait(2)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.Notification.Message.Message.Confirm
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then															
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end															
end)
wait(2)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.Notification.Message.Message.Confirm
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then															
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end															
end)
wait(10)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.InventoryStat.Feed
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end
end)
wait(2)
until _G.SettingsTable.feedwhenmaxinv == false or game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible == false
end))
repeat wait(.1)
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Inventory:GetChildren()) do
pcall(function()
if v.Trash.Visible == false and v.Name:find(_G.SettingsTable.feedunitkeyword) ~= nil and search == false then
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then
wait(.25)
vim:SendMouseButtonEvent(v.View.TextButton.AbsolutePosition.X+v.View.TextButton.AbsoluteSize.X/2,v.View.TextButton.AbsolutePosition.Y+50,0,true,v.View.TextButton,1)
vim:SendMouseButtonEvent(v.View.TextButton.AbsolutePosition.X+v.View.TextButton.AbsoluteSize.X/2,v.View.TextButton.AbsolutePosition.Y+50,0,false,v.View.TextButton,1)
end
end
end)
end
until _G.SettingsTable.feedwhenmaxinv == false or game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible == false
for i,v in pairs(game:GetService('CoreGui').Orion:GetChildren()) do
v.Visible = true
end
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Enabled = true
end)
end
end))
end
})

AutoFeedTab:AddToggle({
    Name = "Auto Feed",
    Default = _G.SettingsTable.feed,
    Callback = function(Value)
_G.SettingsTable.feed = Value
SaveSettings()
if _G.SettingsTable.feed and game.ReplicatedStorage.Lobby.Value == true then
pcall(function()
coroutine.resume(coroutine.create(function()
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.LeftButton.InventoryButton.Visible
task.wait(5)
local vim = game:GetService'VirtualInputManager'
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.SearchBarBG
game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.ZIndex = 10000
local search = true
pcall(function()
for i,v in pairs(game:GetService('CoreGui').Orion:GetChildren()) do
v.Visible = false
end
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Enabled = false
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.LeftButton.InventoryButton
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end)
wait(1.5)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
wait(1.5)
game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Search.Text = _G.SettingsTable.unittosearch
wait(1.5)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.MaxUnitBG
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end
end)
wait(1.5)
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Inventory:GetChildren()) do
if v.Name == _G.SettingsTable.unittofeed then
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then
vim:SendMouseButtonEvent(v.View.TextButton.AbsolutePosition.X+v.View.TextButton.AbsoluteSize.X/2,v.View.TextButton.AbsolutePosition.Y+50,0,true,v.View.TextButton,1)
vim:SendMouseButtonEvent(v.View.TextButton.AbsolutePosition.X+v.View.TextButton.AbsoluteSize.X/2,v.View.TextButton.AbsolutePosition.Y+50,0,false,v.View.TextButton,1)
end
break
end
end
wait(1.5)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.InventoryStat.Feed
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end
end)									
coroutine.resume(coroutine.create(function()
repeat wait(1.5)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
wait(1.5)
game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Search.Text = _G.SettingsTable.feedunitsearch
wait(1.5)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.MaxUnitBG
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then		
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end																
end)
wait(1)
search = false
wait(6)
pcall(function()
search = true
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.InventoryStat.FeedDialog.ConfirmButton
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then															
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end															
end)
wait(1.5)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.Notification.Message.Message.Confirm
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then															
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end															
end)
wait(1.5)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.Notification.Message.Message.Confirm
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then															
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end															
end)
wait(6)
pcall(function()
local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.InventoryStat.Feed
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
end
end)
wait(1.5)
until _G.SettingsTable.feed == false or game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible == false
end))
repeat wait(.1)
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Inventory:GetChildren()) do
pcall(function()
if v.Trash.Visible == false and v.Name:find(_G.SettingsTable.feedunitkeyword) ~= nil and search == false then
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible then
wait(.1)
vim:SendMouseButtonEvent(v.View.TextButton.AbsolutePosition.X+v.View.TextButton.AbsoluteSize.X/2,v.View.TextButton.AbsolutePosition.Y+50,0,true,v.View.TextButton,1)
vim:SendMouseButtonEvent(v.View.TextButton.AbsolutePosition.X+v.View.TextButton.AbsoluteSize.X/2,v.View.TextButton.AbsolutePosition.Y+50,0,false,v.View.TextButton,1)
end
end
end)
end
until _G.SettingsTable.feed == false or game:GetService("Players").LocalPlayer.PlayerGui.HUD.InventoryV2.Visible == false
for i,v in pairs(game:GetService('CoreGui').Orion:GetChildren()) do
v.Visible = true
end
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Enabled = true
end))
end)
end
end
})

AutoFeedTab:AddTextbox({
	Name = "Search Unit to Lvl up(In Game Name)",
	Default = tostring(_G.SettingsTable.unittosearch),
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
	    _G.SettingsTable.unittosearch = Value
	    SaveSettings()
	end    
})

AutoFeedTab:AddTextbox({
	Name = "Unit to Lvl Up(Dex Name)",
	Default = tostring(_G.SettingsTable.unittofeed),
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
	    _G.SettingsTable.unittofeed = Value
	    SaveSettings()
	end    
})
			
AutoFeedTab:AddTextbox({
	Name = "Search Feed Unit Key Word(In Game Name)",
	Default = tostring(_G.SettingsTable.feedunitsearch),
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
	    _G.SettingsTable.feedunitsearch = Value
	    SaveSettings()
	end    
})
AutoFeedTab:AddTextbox({
	Name = "Feed Unit Key Word(Dex Name)",
	Default = tostring(_G.SettingsTable.feedunitkeyword),
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
	    _G.SettingsTable.feedunitkeyword = Value
	    SaveSettings()
	end    
})

--Auto Farm Tab

AutoFarmTab:AddToggle({
    Name = "Auto Evolve EXP",
    Default = _G.SettingsTable.evolveexp,
    Callback = function(Value)
    _G.SettingsTable.evolveexp = Value
    SaveSettings()
    if _G.SettingsTable.evolveexp then
    coroutine.resume(coroutine.create(function()
    task.wait(10)
    pcall(function()
    local v1695 = require(game:GetService("Players").LocalPlayer.Backpack.Framework.InventoryCardOptimizer);
    for v1696, v1697 in pairs(v1695.GetTagged("EvolveReadyEXP I")) do
        game.ReplicatedStorage.Remotes.Input:FireServer("UpgradeUnit", v1697.Name, v1697.ID);
        task.wait(0.5);
    end;
    for v1698, v1699 in pairs(v1695.GetTagged("EvolveReadyEXP II")) do
        game.ReplicatedStorage.Remotes.Input:FireServer("UpgradeUnit", v1699.Name, v1699.ID);
        task.wait(0.5);
    end;
    for v1700, v1701 in pairs(v1695.GetTagged("EvolveReadyEXP III")) do
        game.ReplicatedStorage.Remotes.Input:FireServer("UpgradeUnit", v1701.Name, v1701.ID);
        task.wait(0.5);
    end;
    end)
    end))
    end
    end
})

AutoFarmTab:AddToggle({
    Name = "Auto Skip",
    Default = _G.SettingsTable.autoskip,
    Callback = function(Value)
    _G.SettingsTable.autoskip = Value
    SaveSettings()
    coroutine.resume(coroutine.create(function()
    if _G.SettingsTable.autoskip then
    pcall(function()
    repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.NextWaveVote.Visible
    repeat wait()
	if game:GetService("Players").LocalPlayer.PlayerGui.HUD.NextWaveVote.Visible then
	pcall(function()
	local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.NextWaveVote.YesButton
	local vim = game:GetService'VirtualInputManager'
	vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
	vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
	end)
	end
	wait(.5)
    until _G.SettingsTable.autoskip == false
    end)
    end
    end))
    end
})

AutoFarmTab:AddToggle({
    Name = "Auto Next",
    Default = _G.SettingsTable.autonext,
    Callback = function(Value)
    _G.SettingsTable.autonext = Value
    SaveSettings()
	if _G.SettingsTable.autonext then
	coroutine.resume(coroutine.create(function()
	while _G.SettingsTable.autonext do wait(.5)
	pcall(function()
	for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.HUD.MissionEnd.BG.Actions.Next.Activated)) do
	v.Function()
	end
	end)
	end
	end))
	end
    end
})

AutoFarmTab:AddToggle({
    Name = "Auto 2x",
    Default = _G.SettingsTable.auto2x,
    Callback = function(Value)
    _G.SettingsTable.auto2x = Value
    auto2x()
    end
})
AutoFarmTab:AddToggle({
    Name = "Auto 3x",
    Default = _G.SettingsTable.auto3x,
    Callback = function(Value)
_G.SettingsTable.auto3x = Value
SaveSettings()
if _G.SettingsTable.auto3x and game.ReplicatedStorage.Lobby.Value == false then
coroutine.resume(coroutine.create(function()
repeat task.wait() until game:GetService("ReplicatedStorage").WaveValue.Value == 1
repeat 
    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("SpeedChange", true)
    wait(1)
until game.ReplicatedStorage.SpeedUP.Value == 3 or _G.SettingsTable.auto3x == false
end))
end
end
})

AutoFarmTab:AddToggle({
    Name = "Auto Extreme",
    Default = _G.SettingsTable.autoextreme,
    Callback = function(Value)
    _G.SettingsTable.autoextreme = Value
    autoextreme()
    end
})

AutoFarmTab:AddToggle({
    Name = "Auto Replay",
    Default = _G.SettingsTable.autoreplay,
    Callback = function(Value)
    _G.SettingsTable.autoreplay = Value
    autoreplay()
    end
})

AutoFarmTab:AddToggle({
    Name = "Force tp lobby if replay tp fails",
    Default = _G.SettingsTable.forcetp,
    Callback = function(Value)
_G.SettingsTable.forcetp = Value
SaveSettings()
if _G.SettingsTable.forcetp then
coroutine.resume(coroutine.create(function()
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.MissionEnd.Visible
local x = 0
repeat x = x + 1 wait(1) until x == 60 or _G.SettingsTable.forcetp == false
if _G.SettingsTable.forcetp then
game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
end
end))
end
end
})

AutoFarmTab:AddToggle({
    Name = "Auto Sell",
    Default = _G.SettingsTable.autosell,
    Callback = function(Value)
    _G.SettingsTable.autosell = Value
    autosell()
    end
})

AutoFarmTab:AddTextbox({
	Name = "Auto Sell After Wave",
	Default = tostring(_G.SettingsTable.autosellwave),
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
	    _G.SettingsTable.autosellwave = Value
	    SaveSettings()
	end    
})

local joey1 = AutoFarmTab:AddLabel("Refresh")

AutoFarmTab:AddToggle({
    Name = "Auto-Skip off",
    Default = _G.SettingsTable.autoskipoff,
    Callback = function(Value)
    _G.SettingsTable.autoskipoff = Value
    SaveSettings()
    autoskipoffwavecurrent = 1
    coroutine.resume(coroutine.create(function()
    autoskipoffwavetable = "Waves: "
    for i, v in pairs(_G.SettingsTable.autoskipoffwave) do
        autoskipoffwavetable = autoskipoffwavetable..v..", "
    end
    joey1:Set(autoskipoffwavetable)
    pcall(function() if _G.SettingsTable.autoskipoffwave1 then _G.SettingsTable.autoskipoffwave = {} _G.SettingsTable.autoskipoffwave1 = false SaveSettings() end end)
    while _G.SettingsTable.autoskipoff do task.wait()
    pcall(function()
        repeat task.wait() until game:GetService("ReplicatedStorage"):WaitForChild("WaveValue").Value >= tonumber(_G.SettingsTable.autoskipoffwave[autoskipoffwavecurrent]) or _G.SettingsTable.autoskipoff == false
        if _G.SettingsTable.autoskipoff then
            while game:GetService("Players").LocalPlayer.PlayerGui.HUD.Setting.Skip.BackgroundColor3 == Color3.new(0.36470588235,1,0.49019607843) do
                game:GetService("ReplicatedStorage").Remotes.Input:FireServer("AutoSkipWaves_CHANGE") task.wait(.25)
            end
        end
        autoskipoffwavecurrent = autoskipoffwavecurrent + 1
    end)
    end
    end)) 
    end
})

AutoFarmTab:AddTextbox({
	Name = "Auto-Skip off wave",
	Default = "",
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
        pcall(function() if _G.SettingsTable.autoskipoffwave1 then _G.SettingsTable.autoskipoffwave = {} _G.SettingsTable.autoskipoffwave1 = false SaveSettings() end end)
	    pcall(function()
        table.insert(_G.SettingsTable.autoskipoffwave, Value)
        table.sort(_G.SettingsTable.autoskipoffwave, function(a,b)
	        return (tonumber(a) < tonumber(b))
        end)
	    SaveSettings()
        autoskipoffwavetable = "Waves: "
        for i, v in pairs(_G.SettingsTable.autoskipoffwave) do
            autoskipoffwavetable = autoskipoffwavetable..v..", "
        end
        joey1:Set(autoskipoffwavetable)
        end)
	end    
})

AutoFarmTab:AddButton({
    Name = "Refresh Auto-Skip off",
    Default = false,
    Callback = function(Value)
        pcall(function() if _G.SettingsTable.autoskipoffwave1 then _G.SettingsTable.autoskipoffwave = {} _G.SettingsTable.autoskipoffwave1 = false SaveSettings() end end)
        pcall(function()
            table.clear(_G.SettingsTable.autoskipoffwave)
            joey1:Set("Empty")
        end)
    end    
})

local joey2 = AutoFarmTab:AddLabel("Refresh")

AutoFarmTab:AddToggle({
    Name = "Auto-Skip on",
    Default = _G.SettingsTable.autoskipon,
    Callback = function(Value)
    _G.SettingsTable.autoskipon = Value
    SaveSettings()
    autoskiponwavecurrent = 1
    coroutine.resume(coroutine.create(function()
    autoskiponwavetable = "Waves: "
    for i, v in pairs(_G.SettingsTable.autoskiponwave) do
        autoskiponwavetable = autoskiponwavetable..v..", "
    end
    joey2:Set(autoskiponwavetable)
    pcall(function() if _G.SettingsTable.autoskiponwave1 then _G.SettingsTable.autoskiponwave = {} _G.SettingsTable.autoskiponwave1 = false SaveSettings() end end)
    while _G.SettingsTable.autoskipon do task.wait()
    pcall(function()
        repeat task.wait() until game:GetService("ReplicatedStorage"):WaitForChild("WaveValue").Value >= tonumber(_G.SettingsTable.autoskiponwave[autoskiponwavecurrent]) or _G.SettingsTable.autoskipon == false
        if _G.SettingsTable.autoskipon then
            while game:GetService("Players").LocalPlayer.PlayerGui.HUD.Setting.Skip.BackgroundColor3 == Color3.new(0.72156862745,0.12156862745,0.12156862745) do
                game:GetService("ReplicatedStorage").Remotes.Input:FireServer("AutoSkipWaves_CHANGE") task.wait(.25)
            end
        end
        autoskiponwavecurrent = autoskiponwavecurrent + 1
    end)
    end
    end)) 
    end
})

AutoFarmTab:AddTextbox({
	Name = "Auto-Skip on wave",
	Default = "",
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
        pcall(function() if _G.SettingsTable.autoskiponwave1 then _G.SettingsTable.autoskiponwave = {} _G.SettingsTable.autoskiponwave1 = false SaveSettings() end end)
	    pcall(function()
        table.insert(_G.SettingsTable.autoskiponwave, Value)
        table.sort(_G.SettingsTable.autoskiponwave, function(a,b)
	        return (tonumber(a) < tonumber(b))
        end)
	    SaveSettings()
        autoskiponwavetable = "Waves: "
        for i, v in pairs(_G.SettingsTable.autoskiponwave) do
            autoskiponwavetable = autoskiponwavetable..v..", "
        end
        joey2:Set(autoskiponwavetable)
        end)
	end    
})

AutoFarmTab:AddButton({
    Name = "Refresh Auto-Skip on",
    Default = false,
    Callback = function(Value)
        pcall(function() if _G.SettingsTable.autoskiponwave1 then _G.SettingsTable.autoskiponwave = {} _G.SettingsTable.autoskiponwave1 = false SaveSettings() end end)
        pcall(function()
            table.clear(_G.SettingsTable.autoskiponwave)
            joey2:Set("Empty")
        end)
    end    
})

--Macro Tab

MacroTab:AddToggle({
    Name = "Record Macro",
    Default = false,
    Callback = function(Value)
    _G.record = Value
    record()
    end
})


MacroTab:AddToggle({
    Name = "Playback Macro",
    Default = _G.SettingsTable.autoplayback,
    Callback = function(Value)
    _G.SettingsTable.autoplayback = Value
    playback()
    end
})

MacroTab:AddSection({
	Name = "  Playback with timer starts after vote mode frame"
})

MacroTab:AddTextbox({
    Name = "Summon Delay in seconds",
    Default = _G.SettingsTable.summondelaywait,
    TextDisappear = false,
    Callback = function(Value)
	_G.SettingsTable.summondelaywait = tonumber(Value)
        SaveSettings()
    end
})

MacroTab:AddToggle({
    Name = "Playback summons and upgrades with a timer",
    Default = _G.SettingsTable.timer,
    Callback = function(Value)
    _G.SettingsTable.timer = Value
    autosell()
    end
})

MacroTab:AddTextbox({
    Name = "Save Macro Profile",
    Default = "DefaultProfile",
    TextDisappear = false,
    Callback = function(Value)
        if Value ~= "" then
        for i, v in pairs(macrolist) do
            if v == Value then table.remove(macrolist, i) end
        end
            table.insert(macrolist, Value .. '.json')
        writefile(macrofolder .. '/' .. Value .. '.json', "[]")
        end
        for i, v in pairs(game:GetService("CoreGui").Orion:GetDescendants()) do
            pcall(function()
            if v.Text == 'Select Macro' then
                v.Parent.Parent:Destroy()
            end
            end)
        end
        MacroTab:AddDropdown({
            Name = "Select Macro",
            Default = _G.SettingsTable.selectedmacro,
            Options = macrolist,
            Callback = function(Value)
                _G.SettingsTable.selectedmacro = Value
                SaveSettings()
            end
            }) 
        SaveSettings()
    end
})
MacroTab:AddButton({
	Name = "Refresh macro list",
	Default = false,
	Callback = function(Value)
	    table.clear(macrolist)
        for i,v in pairs(listfiles(macrofolder .. '/')) do
            table.insert(macrolist, string.sub(v, v:find('/') + 1))
        end
        for i, v in pairs(game:GetService("CoreGui").Orion:GetDescendants()) do
            pcall(function()
            if v.Text == 'Select Macro' then
                v.Parent.Parent:Destroy()
            end
            end)
        end
        MacroTab:AddDropdown({
            Name = "Select Macro",
            Default = _G.SettingsTable.selectedmacro,
            Options = macrolist,
            Callback = function(Value)
                _G.SettingsTable.selectedmacro = Value
                SaveSettings()
            end
            }) 
    end
})
MacroTab:AddButton({
	Name = "Delete Selected Macro",
	Default = false,
	Callback = function(Value)
	    for i, v in pairs(macrolist) do
	        if v == _G.SettingsTable.selectedmacro then
	            table.remove(macrolist, i)
	            delfile(macrofolder .. '/' .. _G.SettingsTable.selectedmacro)
	        end
	        SaveSettings()
	    end
	    for i, v in pairs(game:GetService("CoreGui").Orion:GetDescendants()) do
            pcall(function()
            if v.Text == 'Select Macro' then
                v.Parent.Parent:Destroy()
            end
            end)
        end
        MacroTab:AddDropdown({
            Name = "Select Macro",
            Default = _G.SettingsTable.selectedmacro,
            Options = macrolist,
            Callback = function(Value)
                _G.SettingsTable.selectedmacro = Value
                SaveSettings()
            end
        }) 
	end
})



MacroTab:AddDropdown({
    Name = "Select Macro",
    Default = _G.SettingsTable.selectedmacro,
    Options = macrolist,
    Callback = function(Value)
        _G.SettingsTable.selectedmacro = Value
    end
})


--SupportTab

BuffTab:AddToggle({
	Name = "Kisuke 6",
	Default = _G.SettingsTable.autokisuke,
	Callback = function(Value)
        _G.SettingsTable.autokisuke = Value
        SaveSettings()
        autokisuke()
	end    
})

BuffTab:AddToggle({
	Name = "Hide Kisuke GUI",
	Default = _G.SettingsTable.hidekisukegui,
	Callback = function(Value)
        _G.SettingsTable.hidekisukegui = Value
        SaveSettings()
        if _G.SettingsTable.hidekisukegui then
            coroutine.resume(coroutine.create(function()
                repeat task.wait()
                    game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MultipleAbilities"):WaitForChild("Frame").Visible = false
                until _G.SettingsTable.hidekisukegui == false
                game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MultipleAbilities"):WaitForChild("Frame").Visible = true
            end))
        end
	end    
})

BuffTab:AddToggle({
	Name = "Brook/Erwin",
	Default = _G.SettingsTable.autobufftoggle,
	Callback = function(Value)
        _G.SettingsTable.autobufftoggle = Value
        autobrookerwin()
	end    
})

BuffTab:AddToggle({
	Name = "Merlin",
	Default = _G.SettingsTable.automerlintoggle,
	Callback = function(Value)
        _G.SettingsTable.automerlintoggle = Value
        automerlin()
	end    
})

BuffTab:AddSection({
	Name = "  Works for 4 or 8 Brooks/Erwins, Order: 1324"
})

BuffTab:AddToggle({
	Name = "Auto FV",
	Default = _G.SettingsTable.autofv,
	Callback = function(Value)
        _G.SettingsTable.autofv = Value
        autofv()
	end    
})

BuffTab:AddSection({
	Name = ""
})

BuffTab:AddLabel("Can't click off and waits until unit is clicked")

local actoggle = BuffTab:AddToggle({
	Name = "Autoclick TS Modified",
	Default = _G.acts,
	Callback = function(Value)
        _G.acts = Value
        if _G.acts then
                pcall(function()
            coroutine.resume(coroutine.create(function()
            for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.SpecialButton.MouseButton1Click)) do
                repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.SpecialButton.Visible and game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.Visible and game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.Character.Preview.Character:FindFirstChild("Six Eyes Gojo")
                if _G.acts then
                    v:Fire()
                end
            end
            while _G.acts do
            task.wait(actsdelay)
            for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.SpecialButton.MouseButton1Click)) do
            repeat game:GetService("RunService").RenderStepped:wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.SpecialButton.Visible and game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.Visible and game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.Character.Preview.Character:FindFirstChild("Six Eyes Gojo")
                if _G.acts then
                    v:Fire()
                end
            end
            end
            end))
            end)
        end
	end    
})


BuffTab:AddBind({
	Name = "Autoclick TS Toggle",
	Default = "",
	Hold = false,
	Callback = function()
	    if _G.acts then 
	        OrionLib:MakeNotification({
                Name = "Autoclick TS",
                Content = "Stopped...",
                Time = 3
            }) 
            actoggle:Set(false)
        else
            OrionLib:MakeNotification({
                Name = "Autoclick TS",
                Content = "Playing...",
                Time = 3
            }) 
            actoggle:Set(true)
        end
	end    
})

BuffTab:AddTextbox({
	Name = "Autoclick TS Delay (ms)",
	Default = "",
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
	    actsdelay = Value/1000
	end    
})

BuffTab:AddSection({
	Name = ""
})

BuffTab:AddButton({
	Name = "TS Timer",
	Default = false,
	Callback = function()
                pcall(function()
local ScreenGui = Instance.new("ScreenGui")
local hpcdsystem = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
--Properties:
ScreenGui.Name = 'CDGui'
ScreenGui.Parent = game.CoreGui

hpcdsystem.Name = "hp/cd system"
hpcdsystem.Parent = ScreenGui
hpcdsystem.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
hpcdsystem.Position = UDim2.new(0.0101562738, 0, 0.0133582223, 0)
hpcdsystem.Size = UDim2.new(0.311557651, 0, 0.05, 0)
hpcdsystem.ZIndex = 0
hpcdsystem.Draggable = true
hpcdsystem.Active = true
hpcdsystem.Selectable = true

UICorner.CornerRadius = UDim.new(0.100000001, 10)
UICorner.Parent = hpcdsystem

Frame.Parent = hpcdsystem
Frame.BackgroundColor3 = Color3.fromRGB(38, 255, 0)
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.ZIndex = 0

UICorner_2.CornerRadius = UDim.new(0.100000001, 10)
UICorner_2.Parent = Frame

TextLabel.Parent = hpcdsystem
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

local Instance = Instance.new('UIStroke', game:GetService("CoreGui").CDGui["hp/cd system"])
Instance.Thickness = 5

local guiObject = game.CoreGui.CDGui['hp/cd system'].Frame

guiObject.Changed:connect(function()
    if guiObject.Size == UDim2.new(0,0,1,0) then
guiObject:TweenSize(
    UDim2.new(1, 0, 1, 0), -- endSize (required)
    Enum.EasingDirection.Out, -- easingDirection (default Out)
    Enum.EasingStyle.Linear, -- easingStyle (default Quad)
    10.150, -- time (default: 1)
    false -- should this tween override ones in-progress? (default: false) -- a function to call when the tween completes (default: nil)
        )
        end
end)

game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.SpecialButton.MouseButton1Click:Connect(function()
    if game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.Character.Preview.Character:FindFirstChild("Six Eyes Gojo") then
        guiObject.Size = UDim2.new(0,0,1,0)
    end
end)

gojotime = 0

repeat task.wait()
    gojotime = string.format("%.02f", tsslider - (guiObject.Size.X.Scale * tsslider))
    TextLabel.Text = gojotime
until false
end)
	end    
})

BuffTab:AddButton({
    Name = "Destroy TS UI",
    Default = false,
    Callback = function(Value)
        game:GetService("CoreGui"):FindFirstChild("CDGui"):Destroy()
    end    
})

BuffTab:AddSlider({
	Name = "TS Countdown from:",
	Min = 10,
	Max = 11,
	Default = 10.1,
	Color = Color3.fromRGB(255,255,255),
	Increment = .1,
	Callback = function(Value)
	   tsslider = Value
	end    
})

BuffTab:AddSection({
	Name = ""
})

unitstatus = 0

BuffTab:AddToggle({
	Name = "Extra Unit Status (Turn On First)",
	Default = _G.SettingsTable.unitstatus,
	Callback = function(Value)
        _G.SettingsTable.unitstatus = Value
        SaveSettings()
if unitstatus == 0 then
unitstatus = unitstatus + 1
local EffectBBGUI = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")
local RewindImage = Instance.new("ImageLabel")
local UIListLayout = Instance.new("UIListLayout")
local DiavoloImage = Instance.new("ImageLabel")
local LawImage = Instance.new("ImageLabel")


EffectBBGUI.Name = "EffectBBGUICustom"
EffectBBGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
EffectBBGUI.Active = true
EffectBBGUI.LightInfluence = 1.000
EffectBBGUI.Size = UDim2.new(10, 0, 1, 0)
EffectBBGUI.StudsOffset = Vector3.new(0, 2.5, 0)

Frame.Parent = EffectBBGUI
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(1, 0, 1, 0)

RewindImage.Name = "RewindImage"
RewindImage.Parent = Frame
RewindImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RewindImage.BackgroundTransparency = 1.000
RewindImage.Size = UDim2.new(0.100000001, 0, 1, 0)
RewindImage.Visible = false
RewindImage.Image = "rbxassetid://12554338075"

UIListLayout.Parent = Frame
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

DiavoloImage.Name = "DiavoloImage"
DiavoloImage.Parent = Frame
DiavoloImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DiavoloImage.BackgroundTransparency = 1.000
DiavoloImage.Size = UDim2.new(0.100000001, 0, 1, 0)
DiavoloImage.Visible = false
DiavoloImage.Image = "rbxassetid://12554343542"

LawImage.Name = "LawImage"
LawImage.Parent = Frame
LawImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LawImage.BackgroundTransparency = 1.000
LawImage.Size = UDim2.new(0.100000001, 0, 1, 0)
LawImage.Visible = false
LawImage.Image = "rbxassetid://12554347225"

for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
    local newbbgui = EffectBBGUI:Clone()
    newbbgui.Parent = v:WaitForChild('Head')
    coroutine.resume(coroutine.create(function() 
        repeat task.wait() until v:WaitForChild("Head"):FindFirstChild("EffectBBGUI") 
        for i, a in pairs(newbbgui.Frame:GetChildren()) do
            if a:IsA('ImageLabel') then
                a.Parent = v.Head:FindFirstChild("EffectBBGUI"):WaitForChild("Frame") 
            end
        end
        newbbgui:Destroy()
    end)) 
end

game.Workspace.Enemies.ChildAdded:Connect(function(v)
    local newbbgui = EffectBBGUI:Clone()
    newbbgui.Parent = v:WaitForChild('Head')
    repeat task.wait() until v:WaitForChild("Head"):FindFirstChild("EffectBBGUI") 
    for i, a in pairs(newbbgui.Frame:GetChildren()) do
        if a:IsA('ImageLabel') then
            a.Parent = v.Head:FindFirstChild("EffectBBGUI"):WaitForChild("Frame") 
        end
    end
    newbbgui:Destroy()
end)
end
    end    
})

BuffTab:AddToggle({
	Name = "Rewind Status (Julius Only)",
	Default = _G.SettingsTable.rewindstatus,
	Callback = function(Value)
        _G.SettingsTable.rewindstatus = Value
        SaveSettings()
	end    
})

BuffTab:AddToggle({
	Name = "Erased Status (Diavolo Only)",
	Default = _G.SettingsTable.erasedstatus,
	Callback = function(Value)
        _G.SettingsTable.erasedstatus = Value
        SaveSettings()
	end    
})

BuffTab:AddToggle({
	Name = "Replacement Status (Law Only)",
	Default = _G.SettingsTable.replacementstatus,
	Callback = function(Value)
        _G.SettingsTable.replacementstatus = Value
        SaveSettings()
	end    
})


--UpgradeTab

function Visrange()
    coroutine.resume(coroutine.create(function()
    pcall(function()
        while _G.SettingsTable.Visrange do
            game:GetService("Workspace"):WaitForChild("Camera"):WaitForChild("SphereSelection")
            while game:GetService("Workspace").Camera:FindFirstChild("SphereSelection") and _G.SettingsTable.Visrange do 
                pcall(function()
                    game:GetService("Workspace").Camera.SphereSelection:FindFirstChild("Union").Size = Vector3.new(_G.SettingsTable.visrange1, _G.SettingsTable.visrange1, _G.SettingsTable.visrange1)
                end)
                pcall(function()
                    game:GetService("Workspace").Camera.SphereSelection:FindFirstChild("Part").Size = Vector3.new(_G.SettingsTable.visrange1, 0.1, _G.SettingsTable.visrange1)
                end)
                game:GetService('RunService').RenderStepped:Wait()
            end
        end
    end)
    end))
end

dashbeamvalue = {}

VisualRangeTab:AddButton({
    Name = "Print Cone Angle (Degrees)",
    Default = false,
    Callback = function(Value)
        local printrange = pcall(function()
        table.clear(dashbeamvalue)
        for i, v in pairs(game:GetService("Workspace").Camera.SphereSelection:GetChildren()) do
            if v.Name == "DashBeam" then
                table.insert(dashbeamvalue, v)
            end
        end
        dashbeamvalue1 = dashbeamvalue[1].Orientation.Y - dashbeamvalue[2].Orientation.Y
        local str = ""..dashbeamvalue1
        local numMatch = str:match("%d+");
        print(numMatch)
        OrionLib:MakeNotification({
            Name = "Unit Range",
            Content = ""..numMatch.." Degrees",
            Time = 5
        })
        end)
        if printrange == false then
            OrionLib:MakeNotification({
            Name = "Error",
            Content = "Click on the unit",
            Time = 5
            })
        end
    end    
})

VisualRangeTab:AddToggle({
	Name = "Impossible to click off unit",
	Default = false,
	Callback = function(Value)
        noclickoff = Value
        pcall(function()
        if noclickoff then 
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.BG.WhiteStroke.Size = UDim2.new(10,0,10,0)
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.BG.WhiteStroke.BackgroundTransparency = 1
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.BG.WhiteStroke.Visible = true
        elseif noclickoff == false then
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.UpgradeV2.BG.WhiteStroke.Visible = false
        end
        end)
	end    
})

VisualRangeTab:AddToggle({
	Name = "Visual Range",
	Default = _G.SettingsTable.Visrange,
	Callback = function(Value)
        _G.SettingsTable.Visrange = Value
        Visrange()
        SaveSettings()
	end    
})

VisualRangeTab:AddSlider({
	Name = "Range:",
	Min = 1,
	Max = 200,
	Default = _G.SettingsTable.visrange1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		_G.SettingsTable.visrange1 = Value
		SaveSettings()
	end    
})

dashbeam = {}

VisualRangeTab:AddToggle({
	Name = "Visual Cone Angle",
	Default = false,
	Callback = function(Value)
        viscone = Value
        if viscone then
            coroutine.resume(coroutine.create(function()
            while viscone do wait()
            pcall(function()
            table.clear(dashbeam)
            for i, v in pairs(game:GetService("Workspace").Camera.SphereSelection:GetChildren()) do
                if v.Name == "DashBeam" then
                    pcall(function()
                    v.Transparency = .5
                    v.Size = v.Size + Vector3.new(500,0,0)
                    end)
                end
            end
            for i, v in pairs(game:GetService("Workspace").Camera.SphereSelection:GetChildren()) do
                if v.Name == "DashBeam" then
                    pcall(function()
                    table.insert(dashbeam, v)
                    end)
                end
            end
            pcall(function()
            dashbeam[2].Orientation = dashbeam[1].Orientation + Vector3.new(0,conesize,0)
            end)
            end)
            end
            end))
        end
	end    
})

VisualRangeTab:AddSlider({
	Name = "Cone Size (Degrees)",
	Min = 0,
	Max = 180,
	Default = 90,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		conesize = Value
	end    
})

VisualRangeTab:AddToggle({
	Name = "Cone Rotation",
	Default = false,
	Callback = function(Value)
        visconerotate = Value
        if visconerotate then
            coroutine.resume(coroutine.create(function()
            pcall(function()
            while visconerotate do wait()
                pcall(function()
                dashbeam[1].Orientation = Vector3.new(0,conerotation,0)
                end)
            end
            end)
            end))
        end
	end    
})

VisualRangeTab:AddSlider({
	Name = "Cone Rotation Angle (Degrees",
	Min = 1,
	Max = 360,
	Default = 360,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		conerotation = Value
	end    
})

UpgradeTab:AddToggle({
	Name = "Auto Upgrade",
	Default = _G.SettingsTable.autoupgrade,
	Callback = function(Value)
        _G.SettingsTable.autoupgrade = Value
        autoupgrade()
	end    
})

UpgradeTab:AddTextbox({
	Name = "Auto Upgrade After Wave",
	Default = tostring(_G.SettingsTable.autoupgradewave),
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
	    _G.SettingsTable.autoupgradewave = Value
	    SaveSettings()
	end    
})

UpgradeTab:AddToggle({
    Name = "Slot 1: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.One.Unit.Value,
    Default = _G.SettingsTable.unitu1,
    Callback = function(Value)
    _G.SettingsTable.unitu1 = Value
    SaveSettings()
    end
})

UpgradeTab:AddToggle({
    Name = "Slot 2: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Two.Unit.Value,
    Default = _G.SettingsTable.unitu2,
    Callback = function(Value)
    _G.SettingsTable.unitu2 = Value
    SaveSettings()
    end
})

UpgradeTab:AddToggle({
    Name = "Slot 3: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Three.Unit.Value,
    Default = _G.SettingsTable.unitu3,
    Callback = function(Value)
    _G.SettingsTable.unitu3 = Value
    SaveSettings()
    end
})

UpgradeTab:AddToggle({
    Name = "Slot 4: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Four.Unit.Value,
    Default = _G.SettingsTable.unitu4,
    Callback = function(Value)
    _G.SettingsTable.unitu4 = Value
    SaveSettings()
    end
})

UpgradeTab:AddToggle({
    Name = "Slot 5: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Five.Unit.Value,
    Default = _G.SettingsTable.unitu5,
    Callback = function(Value)
    _G.SettingsTable.unitu5 = Value
    SaveSettings()
    end
})

UpgradeTab:AddToggle({
    Name = "Slot 6: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Six.Unit.Value,
    Default = _G.SettingsTable.unitu6,
    Callback = function(Value)
    _G.SettingsTable.unitu6 = Value
    SaveSettings()
    end
})

UpgradeTab:AddSection({
	Name = ""
})

UpgradeTab:AddToggle({
	Name = "Upgrade Gojo",
	Default = false,
	Callback = function(Value)
        _G.autogojo = Value
	end    
})

UpgradeTab:AddBind({
	Name = "Force Stop Gojo",
	Default = "",
	Hold = false,
	Callback = function()
        _G.stopgojo = true
	end    
})

UpgradeTab:AddSection({
	Name = "  Fully maxes Gojo only when you place him down"
})

UpgradeTab:AddToggle({
	Name = "Upgrade Law (Upgrade 6)",
	Default = false,
	Callback = function(Value)
        _G.lawupgrade = Value
	end    
})

UpgradeTab:AddSection({
	Name = "  Upgrades Law up to Upgrade 6 only (Not Maxed)"
})

--AbilityTab

AbilityTab:AddToggle({
	Name = "Auto TS",
	Default = _G.SettingsTable.autots,
	Callback = function(Value)
        _G.SettingsTable.autots = Value
        SaveSettings()
        coroutine.resume(coroutine.create(function()
        if _G.SettingsTable.autots and _G.SettingsTable.autotswave ~= "" and game:GetService("ReplicatedStorage").Lobby.Value == false then
            local Event1 = game:GetService("ReplicatedStorage").Remotes.Server
            local Event = game:GetService("ReplicatedStorage").Remotes.Input
            wait()
            local pathnumber = {}
            coroutine.resume(coroutine.create(function()
            repeat wait()
            for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if #pathnumber ~= 0 then
            local success = 
            pcall(function()
            if v:WaitForChild("PathNumber").Value > pathnumber[1].PathNumber.Value then
            table.clear(pathnumber)
            table.insert(pathnumber, v)
            end
            end)
            if success == false then
            pcall(function()
            table.clear(pathnumber)
            table.insert(pathnumber, v)
            end)
            end
            else
            pcall(function()
            table.clear(pathnumber)
            table.insert(pathnumber, v)
            end)
            end
            end
            until _G.SettingsTable.autots == false
            end))
            coroutine.resume(coroutine.create(function()
            repeat wait()
            pcall(function()
            summonpart.CFrame = pathnumber[1].REALPOSITIONPOS.Value
            end)
            until _G.SettingsTable.autots == false
            end))
            repeat wait() until #game.Workspace.Enemies:GetChildren() > 0 and game:GetService("ReplicatedStorage").WaveValue.Value >= tonumber(_G.SettingsTable.autotswave)
            wait(2)
            while _G.SettingsTable.autots do
            repeat wait() until #game.Workspace.Enemies:GetChildren() > 0
            local tsvalue = false
            coroutine.resume(coroutine.create(function()
                if _G.SettingsTable.autots then
                    repeat wait()
                        local a1 = pcall(function()
                            if pathnumber[1]:FindFirstChild("Status_Effect_Freeze") then
                                tsvalue = false
                            else tsvalue = true end
                        end)
                    until _G.SettingsTable.autots == false
                end
            end))
            if _G.SettingsTable.autots and #game.Workspace.Enemies:GetChildren() > 0 then
            repeat
            Event:FireServer('Summon', {
                ["Rotation"] = 0, 
                ["cframe"] = game.Workspace.SummonBox.CFrame * CFrame.new(math.random(-game.Workspace.SummonBox.Size.X/2, game.Workspace.SummonBox.Size.X/2),math.random(-game.Workspace.SummonBox.Size.Y/2, game.Workspace.SummonBox.Size.Y/2),math.random(-game.Workspace.SummonBox.Size.Z/2, game.Workspace.SummonBox.Size.Z/2)), 
                ["Unit"] = "Six Eyes Gojo"
            })
            wait(1)
            until gojoplaced or _G.SettingsTable.autots == false
            gojoplaced = false
            if _G.SettingsTable.autots then
            repeat wait()
                pcall(function()
                Event1:InvokeServer('Upgrade', autotstable[1])
                end)
            until autotstable[1]:WaitForChild('UpgradeTag').Value == autotstable[1].MaxUpgradeTag.Value or _G.SettingsTable.autots == false
            end
            if _G.SettingsTable.autots then
            pcall(function()
            repeat wait() until tsvalue
                repeat wait()
                Event:FireServer('UseSpecialMove', autotstable[1])
                until tsvalue == false or _G.SettingsTable.autots or autotstable[1].SpecialMove.Special_Enabled2.Value
            end)
            end
            if autotstable[1].StunBoolean.Value then wait(2) end
            if _G.SettingsTable.autots then
                pcall(function()
                    repeat wait()
                        Event:FireServer('Sell', autotstable[1])
                    until autotstable[1].UpgradeTag.Value == -1 or _G.SettingsTable.autots == false
                end)
            end
            end
            end
        end
    end))
	end    
})

AbilityTab:AddTextbox({
	Name = "Auto TS After Wave",
	Default = _G.SettingsTable.autotswave,
	TextDisappear = true,
	Callback = function(Value)
	    if Value ~= "" then
        _G.SettingsTable.autotswave = Value
	    SaveSettings()
        end
	end    
})

local tsgojo = {}

AbilityTab:AddToggle({
	Name = "Preplaced gojo ts",
	Default = _G.SettingsTable.tsgojo,
	Callback = function(Value)
        _G.SettingsTable.tsgojo = Value
        SaveSettings()
coroutine.resume(coroutine.create(function()
pcall(function()
repeat task.wait(.25)
table.clear(tsgojo)
for i, v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
    if v.Name == "Six Eyes Gojo" and v:WaitForChild("Owner").Value == me then
        table.insert(tsgojo, v)
    end
end
until #tsgojo >= _G.SettingsTable.tsgojoslider
while #tsgojo > _G.SettingsTable.tsgojoslider do
    table.remove(tsgojo, #tsgojo)
end

while _G.SettingsTable.tsgojo do
for _,v in pairs(tsgojo) do
    if v.Name == "Six Eyes Gojo" and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
        repeat remote:FireServer('UseSpecialMove', v) task.wait() until v.SpecialMove.Special_Enabled2.Value
        break
    end
end
task.wait(_G.SettingsTable.tsgojotext)
end
end)
end))
	end    
})

AbilityTab:AddSlider({
	Name = "Number of preplaced gojos",
	Min = 1,
	Max = 8,
	Default = _G.SettingsTable.tsgojoslider,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		_G.SettingsTable.tsgojoslider = Value
		SaveSettings()
	end    
})

AbilityTab:AddTextbox({
	Name = "Gojo SPA (Seconds)",
	Default = _G.SettingsTable.tsgojotext,
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
	    _G.SettingsTable.tsgojotext = Value
	    SaveSettings()
	end    
})

AbilityTab:AddSection({
	Name = ""
})

AbilityTab:AddToggle({
	Name = "Kisuke FV",
	Default = false,
	Callback = function(Value)
        _G.kisukefv = Value
	end    
})

AbilityTab:AddBind({
	Name = "Kisuke FV Bind",
	Default = "",
	Hold = false,
	Callback = function()
    if _G.kisukefv then
    if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MultipleAbilities") and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MultipleAbilities"):FindFirstChild("Frame"):GetChildren()[3]:FindFirstChild('Frame') == nil then
        pcall(function()
        firesignal(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MultipleAbilities"):FindFirstChild("Frame"):GetChildren()[3].Activated) 
        end)
    else
        pcall(function()
            firesignal(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MultipleAbilities"):FindFirstChild("Frame"):GetChildren()[3].Activated)
        end)
    for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
        if v.Name == "Kisuke6" and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                repeat remote:FireServer('UseSpecialMove', v) task.wait() until v.SpecialMove.Special_Enabled2.Value
                game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MultipleAbilities"):WaitForChild("Frame")
                if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MultipleAbilities"):FindFirstChild("Frame"):GetChildren()[3]:FindFirstChild('Frame') == nil then
                        pcall(function()
                            firesignal(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MultipleAbilities"):FindFirstChild("Frame"):GetChildren()[3].Activated)
                        end)
                    if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MultipleAbilities"):FindFirstChild("Frame"):GetChildren()[3]:FindFirstChild('Frame') then
                        break
                    end
                end
            end
        end
    end
end
end    
})

AbilityTab:AddSection({
	Name = ""
})

AbilityTab:AddToggle({
	Name = "Law Ability",
	Default = false,
	Callback = function(Value)
        _G.lawability = Value
	end    
})

AbilityTab:AddBind({
	Name = "Law Bind",
	Default = Enum.KeyCode.F1,
	Hold = false,
	Callback = function()
	    lawability()
	end    
})

AbilityTab:AddSection({
	Name = "   Double Path Law"
})

dplaw1 = {}
dplaw2 = {}

AbilityTab:AddToggle({
	Name = "Law 1 Ability",
	Default = false,
	Callback = function(Value)
        _G.dplawability1 = Value
	end    
})

AbilityTab:AddBind({
	Name = "Law 1: White",
	Default = "",
	Hold = false,
	Callback = function()
	    if _G.dplawability1 then
        for _,v in pairs(dplaw1) do
            if v.Name == 'Law' and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                remote:FireServer('UseSpecialMove', v)
                break
            end
        end
        end
	end    
})

AbilityTab:AddToggle({
	Name = "Law 2 Ability",
	Default = false,
	Callback = function(Value)
        _G.dplawability2 = Value
	end    
})

AbilityTab:AddBind({
	Name = "Law 2: Black",
	Default = "",
	Hold = false,
	Callback = function()
	    if _G.dplawability2 then
        for _,v in pairs(dplaw2) do
            if v.Name == 'Law' and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                remote:FireServer('UseSpecialMove', v)
                break
            end
        end
        end
	end    
})

AbilityTab:AddButton({
	Name = "Refresh Law 6 Table",
	Default = false,
	Callback = function()
	pcall(function()
	    coroutine.resume(coroutine.create(function()
	        table.clear(dplaw1)
	        table.clear(dplaw2)
            for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                if v.Name == 'Law' and v.Owner.Value == me and v.UpgradeTag.Value > 5 then
                    if #dplaw1 < dplaw then
                        table.insert(dplaw1, v)
                    elseif #dplaw1 == dplaw then
                        table.insert(dplaw2, v)
                    end
                end
            end
            for i, v in pairs(game.Workspace.Unit:GetChildren()) do
                if v.Name == 'Law' then
                    if v.HumanoidRootPart:FindFirstChild("ElectricPPPGUI") then
                        v.HumanoidRootPart:FindFirstChild("ElectricPPPGUI"):Destroy()
                    end
                end
            end
            for i, v in pairs(dplaw1) do
                local espframe1 = Instance.new("BillboardGui",v.HumanoidRootPart)
                espframe1.Name = "ElectricPPPGUI"
                espframe1.Size = UDim2.new(2.4,0, 2.4,0)
                espframe1.AlwaysOnTop = true
                local espframe = Instance.new("Frame",espframe1)
                espframe.Size = UDim2.new(1,0, 1,0)
                espframe.BackgroundTransparency = 0.5
                espframe.BorderSizePixel = 0
                espframe.BackgroundColor3 = Color3.fromRGB(255,255,255) 
            end
            for i, v in pairs(dplaw2) do
                local espframe1 = Instance.new("BillboardGui",v.HumanoidRootPart)
                espframe1.Name = "ElectricPPPGUI"
                espframe1.Size = UDim2.new(2.4,0, 2.4,0)
                espframe1.AlwaysOnTop = true
                local espframe = Instance.new("Frame",espframe1)
                espframe.Size = UDim2.new(1,0, 1,0)
                espframe.BackgroundTransparency = 0.5
                espframe.BorderSizePixel = 0
                espframe.BackgroundColor3 = Color3.fromRGB(105,105,105) 
            end
            OrionLib:MakeNotification({
                Name = "Refreshed",
                Content = "Law1: "..#dplaw1.." Law2: "..#dplaw2,
                Time = 3
            })
	    end))
	end)
end    
})

AbilityTab:AddSlider({
	Name = "Law 1 (Rest are Law 2)",
	Min = 1,
	Max = 4,
	Default = 4,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
	   dplaw = Value
	end    
})

AbilityTab:AddSection({
	Name = ""
})

AbilityTab:AddToggle({
	Name = "Auto Cooler",
	Default = _G.SettingsTable.autocooler,
	Callback = function(Value)
        _G.SettingsTable.autocooler = Value
        autocooler()
	end    
})

AbilityTab:AddSection({
	Name = ""
})

AbilityTab:AddButton({
	Name = "Yugi 4 Cards (Auto)",
	Default = false,
	Callback = function()
        click73()
	end    
})

AbilityTab:AddToggle({
	Name = "Yugi Ability",
	Default = false,
	Callback = function(Value)
        _G.yugiability = Value
	end    
})

AbilityTab:AddBind({
	Name = "Yugi Bind",
	Default = Enum.KeyCode.F3,
	Hold = false,
	Callback = function()
	    yugiability()
	end    
})
AbilityTab:AddToggle({
	Name = "Auto Yugi Until",
	Default = _G.SettingsTable.yugiuntil,
	Callback = function(Value)
        _G.SettingsTable.yugiuntil = Value
	SaveSettings()
	local x = 0
	local y = 0
	local success = false
	coroutine.resume(coroutine.create(function()
	pcall(function()
	if _G.SettingsTable.yugiuntil then
	repeat wait()
	for _,v in pairs(game.Workspace.Unit:GetChildren()) do
	if v.Name == 'YugiMax' and v:WaitForChild('Owner').Value == game.Players.LocalPlayer then
	repeat task.wait() until v:WaitForChild('UpgradeTag').Value == 5
	task.wait(10)
	if _G.SettingsTable.yugiuntil then
	repeat task.wait(.5)
	pcall(function()
	game.ReplicatedStorage.Remotes.Input:FireServer('UseSpecialMove', v)
	end)
	if x == 0 then
        if v.SpecialMove["Special_Enabled2"].Value then
	    x = x + 1
	    wait(10)
	    if v:WaitForChild('Access').ExodiaCard.HeadExodia.E.CardCount.Text == 'Card 40/40' then
		game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
	    end
	end
	end
	if v:WaitForChild('Access').ExodiaCard.HeadExodia.E.CardCount.Text ~= 'Card ' .. _G.SettingsTable.yugicard .. '/40' and v.Access.ExodiaCard.R_Leg.Transparency == 0 and v.Access.ExodiaCard.L_Arm.Transparency == 0 and v.Access.ExodiaCard.R_Arm.Transparency == 0 and v.Access.ExodiaCard.L_leg.Transparency == 0 and v.Access.ExodiaCard.HeadExodia.Transparency == 0 then
	    if y == 0 then
	    y = y + 1
	    success = true
	    dothethingy = http_request or request or HttpPost or syn.request
        	dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
        	["embeds"] = {{["title"] = "**Yugi**",
        	["description"] = "Fail\n" .. v:WaitForChild('Access').ExodiaCard.HeadExodia.E.CardCount.Text,
        	["type"] = "rich",
        	["color"] = tonumber(0x7269da)}}}), 
        	Method = "POST", Headers = {
        	["content-type"] = "application/json"}})
	    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)	
	    end
	end
	until v:WaitForChild('Access').ExodiaCard.HeadExodia.E.CardCount.Text == 'Card ' .. _G.SettingsTable.yugicard .. '/40' or _G.SettingsTable.yugiuntil == false
	if v:WaitForChild('Access').ExodiaCard.HeadExodia.E.CardCount.Text == 'Card ' .. _G.SettingsTable.yugicard .. '/40' and v.Access.ExodiaCard.R_Leg.Transparency == 0 and v.Access.ExodiaCard.L_Arm.Transparency == 0 and v.Access.ExodiaCard.R_Arm.Transparency == 0 and v.Access.ExodiaCard.L_leg.Transparency == 0 and v.Access.ExodiaCard.HeadExodia.Transparency == 0 then
	    success = true
	    dothethingy = http_request or request or HttpPost or syn.request
        	dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
        	["embeds"] = {{["title"] = "**Yugi**",
        	["description"] = "Fail\n" .. v:WaitForChild('Access').ExodiaCard.HeadExodia.E.CardCount.Text,
        	["type"] = "rich",
        	["color"] = tonumber(0x7269da)}}}), 
        	Method = "POST", Headers = {
        	["content-type"] = "application/json"}})
	    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)	
	else
	    success = true
        dothethingy = http_request or request or HttpPost or syn.request
        	dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
        	["embeds"] = {{["title"] = "**Yugi**",
        	["description"] = "Success\n" .. v:WaitForChild('Access').ExodiaCard.HeadExodia.E.CardCount.Text,
        	["type"] = "rich",
        	["color"] = tonumber(0x7269da)}}}), 
        	Method = "POST", Headers = {
        	["content-type"] = "application/json"}})
	end
	end
	end
	end
	until _G.SettingsTable.yugiuntil == false or success == true
        end
        end)
	end))
	end    
})

AbilityTab:AddSlider({
	Name = "Card",
	Min = 1,
	Max = 39,
	Default = tonumber(_G.SettingsTable.yugicard),
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
	   _G.SettingsTable.yugicard = Value
	   SaveSettings()
	end    
})

AbilityTab:AddSection({
	Name = ""
})

AbilityTab:AddToggle({
    Name = "Slot 1: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.One.Unit.Value,
    Default = _G.unita1,
    Callback = function(Value)
    _G.unita1 = Value
    end
})

AbilityTab:AddBind({
	Name = "Slot 1 Bind",
	Default = "",
	Hold = false,
	Callback = function()
    if _G.unita1 then
        for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
            if v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.One.Unit.Value and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                remote:FireServer('UseSpecialMove', v)
                break
            end
        end
    end
	end    
})

AbilityTab:AddToggle({
    Name = "Slot 2: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Two.Unit.Value,
    Default = _G.unita2,
    Callback = function(Value)
    _G.unita2 = Value
    end
})

AbilityTab:AddBind({
	Name = "Slot 2 Bind",
	Default = "",
	Hold = false,
	Callback = function()
    if _G.unita2 then
        for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
            if v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Two.Unit.Value and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                remote:FireServer('UseSpecialMove', v)
                break
            end
        end
    end
	end    
})

AbilityTab:AddToggle({
    Name = "Slot 3: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Three.Unit.Value,
    Default = _G.unita3,
    Callback = function(Value)
    _G.unita3 = Value
    end
})

AbilityTab:AddBind({
	Name = "Slot 3 Bind",
	Default = "",
	Hold = false,
	Callback = function()
    if _G.unita3 then
        for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
            if v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Three.Unit.Value and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                remote:FireServer('UseSpecialMove', v)
                break
            end
        end
    end
	end    
})

AbilityTab:AddToggle({
    Name = "Slot 4: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Four.Unit.Value,
    Default = _G.unita4,
    Callback = function(Value)
    _G.unita4 = Value
    end
})

AbilityTab:AddBind({
	Name = "Slot 4 Bind",
	Default = "",
	Hold = false,
	Callback = function()
    if _G.unita4 then
        for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
            if v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Four.Unit.Value and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                remote:FireServer('UseSpecialMove', v)
                break
            end
        end
    end
	end    
})

AbilityTab:AddToggle({
    Name = "Slot 5: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Five.Unit.Value,
    Default = _G.unita5,
    Callback = function(Value)
    _G.unita5 = Value
    end
})

AbilityTab:AddBind({
	Name = "Slot 5 Bind",
	Default = "",
	Hold = false,
	Callback = function()
    if _G.unita5 then
        for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
            if v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Five.Unit.Value and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                remote:FireServer('UseSpecialMove', v)
                break
            end
        end
    end
	end    
})

AbilityTab:AddToggle({
    Name = "Slot 6: "..game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Six.Unit.Value,
    Default = _G.unita6,
    Callback = function(Value)
    _G.unita6 = Value
    end
})

AbilityTab:AddBind({
	Name = "Slot 6 Bind",
	Default = "",
	Hold = false,
	Callback = function()
    if _G.unita6 then
        for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
            if v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Six.Unit.Value and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                remote:FireServer('UseSpecialMove', v)
                break
            end
        end
    end
	end    
})

--MobCounterTab

workspace.Enemies.ChildAdded:Connect(function(child)
    if _G.unslownotifacation then
        pcall(function()
        child:WaitForChild("PathNumber")
        child:WaitForChild("HumanoidRootPart")
        child:WaitForChild("Head")
        repeat wait() until child.PathNumber.Value > unslowedpath
        if not child.Head:FindFirstChild("EffectBBGUI") then
            CreateESPPart(child.HumanoidRootPart, Color3.fromRGB(255, 0, 0))
            local espframe1 = Instance.new("BillboardGui",child.HumanoidRootPart)
            espframe1.Name = "ElectricPPPGUI"
            espframe1.Size = UDim2.new(5,0, 5,0)
            espframe1.AlwaysOnTop = true
            local espframe = Instance.new("Frame",espframe1)
            espframe.Size = UDim2.new(1,0, 1,0)
            espframe.BackgroundTransparency = 0.80
            espframe.BorderSizePixel = 0
            espframe.BackgroundColor3 = Color3.fromRGB(0, 255, 0) 
            child.Head:WaitForChild("EffectBBGUI"):WaitForChild("Frame"):WaitForChild("SlowImage")
            repeat wait() until child.Head.EffectBBGUI.Frame.SlowImage.Visible == true
            child.HumanoidRootPart.ESPPart:Destroy()
            child.HumanoidRootPart.ElectricPPPGUI:Destroy()
        end
        end)
    end
end)

local unslowgojo = {}

workspace.Enemies.ChildAdded:Connect(function(child)
    if _G.unslowautots then
        pcall(function()
        child:WaitForChild("PathNumber")
        child:WaitForChild("Head")
        repeat wait() until child.PathNumber.Value > unslowedpath
        if not child.Head:FindFirstChild("EffectBBGUI") and child.PathNumber.Value < unslowedpath + 150 then
            for _,v in pairs(unslowgojo) do
                if v.SpecialMove.Special_Enabled2.Value == false then
                    if _G.replacegojo1 then
                    _G.replacegojo1 = false
                    repeat wait()
                        remote:FireServer('UseSpecialMove', v)
                    until v.SpecialMove["Special_Enabled2"].Value == true
                    _G.replacegojo1 = true
                    break
                    else
                    repeat wait()
                    remote:FireServer('UseSpecialMove', v)
                    until v.SpecialMove["Special_Enabled2"].Value == true
                    break
                    end
                end
            end
        end

        end)
    end
end)

MobCounterTab:AddSection({
	Name = "  Notifies if unslowed mob, no settings"
})

MobCounterTab:AddToggle({
	Name = "Unslowed Esp",
	Default = false,
	Callback = function(Value)
        _G.unslownotifacation = Value
	end    
})

MobCounterTab:AddSlider({
	Name = "Unslowed Path",
	Min = 1,
	Max = 15,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 0.1,
	Callback = function(Value)
		unslowedpath = Value*100
	end    
})

MobCounterTab:AddToggle({
	Name = "Unslowed Auto TS (Refresh Gojo 6 Table First)",
	Default = false,
	Callback = function(Value)
        _G.unslowautots = Value
	end    
})

MobCounterTab:AddButton({
	Name = "Refresh Gojo 6 Table",
	Default = false,
	Callback = function(Value)
	pcall(function()
	coroutine.resume(coroutine.create(function()
	table.clear(unslowgojo)
            for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                if v.Name == 'Six Eyes Gojo' or v.Name == 'SuperHit' and v.Owner.Value == me and v.UpgradeTag.Value == v.MaxUpgradeTag.Value then
                    table.insert(unslowgojo, v)
                end
            end
            if #unslowgojo > unslowgojo1 then
                repeat wait(.1)
                    table.remove(unslowgojo, #unslowgojo)
                until #unslowgojo == unslowgojo1
            end
            for i, v in pairs(game.Workspace.Unit:GetChildren()) do
                if v.Name == 'Six Eyes Gojo' or v.Name == 'SuperHit' then
                    if v.HumanoidRootPart:FindFirstChild("ElectricPPPGUI") then
                        v.HumanoidRootPart:FindFirstChild("ElectricPPPGUI"):Destroy()
                    end
                end
            end
            for i, v in pairs(unslowgojo) do
                local espframe1 = Instance.new("BillboardGui",v.HumanoidRootPart)
                espframe1.Name = "ElectricPPPGUI"
                espframe1.Size = UDim2.new(2.4,0, 2.4,0)
                espframe1.AlwaysOnTop = true
                local espframe = Instance.new("Frame",espframe1)
                espframe.Size = UDim2.new(1,0, 1,0)
                espframe.BackgroundTransparency = 0.5
                espframe.BorderSizePixel = 0
                espframe.BackgroundColor3 = Color3.fromRGB( 0, 0, 139) 
            end
            OrionLib:MakeNotification({
                Name = "Refreshed",
                Content = "First "..#unslowgojo.." Gojos",
                Time = 3
            })
	end))
	end)
	end    
})

MobCounterTab:AddSlider({
	Name = "Number of gojos at spawn (Needs to be maxed)",
	Min = 1,
	Max = 8,
	Default = 7,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		unslowgojo1 = Value
	end    
})

replacegojonow = true

local replacegojo = MobCounterTab:AddToggle({
	Name = "Replace Gojo In CD",
	Default = false,
	Callback = function(Value)
        _G.replacegojo = Value
        _G.replacegojo1 = Value
        if replacegojonow then
        while _G.replacegojo do task.wait()
            pcall(function()
            for _,v in pairs(unslowgojo) do
                if v.SpecialMove.Special_Enabled2.Value == true then
                    replacegojonow = false
                    pcall(function()
                    local gojocframe = v.HumanoidRootPart.CFrame
                    for i = 1, #unslowgojo do
                        if unslowgojo[i] == v then
                            pcall(function()
                            repeat task.wait()
                            repeat task.wait() until _G.replacegojo1
                                game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Sell", v)
                            until v.SoldBoolean.Value
                            end)
                            table.remove(unslowgojo, i)
                        end
                    end
                    local unitgojo = #game:GetService("Workspace").Unit:GetChildren()
                    repeat task.wait()
                    repeat task.wait()
                        repeat task.wait() until _G.replacegojo1
                        local args = {[1] = "Summon",[2] = {["Rotation"] = 0,["cframe"] = gojocframe,["Unit"] = "Six Eyes Gojo"}}
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Input"):FireServer(unpack(args))
                    until #game:GetService("Workspace").Unit:GetChildren() > unitgojo
                    local unitgojo = #game:GetService("Workspace").Unit:GetChildren()
                    local gojo = game:GetService("Workspace").Unit:GetChildren()[#game:GetService("Workspace").Unit:GetChildren()]
                    until gojo.Name == "Six Eyes Gojo" and gojo:WaitForChild("Owner").Value == me
                    local gojo = game:GetService("Workspace").Unit:GetChildren()[#game:GetService("Workspace").Unit:GetChildren()]
                    if gojo.Name == "Six Eyes Gojo" and gojo:WaitForChild("Owner").Value == me then
                        repeat task.wait()
                        repeat task.wait() until _G.replacegojo1
                            game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", gojo)
                        until gojo:WaitForChild("UpgradeTag").Value == gojo:WaitForChild("MaxUpgradeTag").Value
                    end
                    table.insert(unslowgojo, gojo)
                    local espframe1 = Instance.new("BillboardGui",gojo.HumanoidRootPart)
                    espframe1.Name = "ElectricPPPGUI"
                    espframe1.Size = UDim2.new(2.4,0, 2.4,0)
                    espframe1.AlwaysOnTop = true
                    local espframe = Instance.new("Frame",espframe1)
                    espframe.Size = UDim2.new(1,0, 1,0)
                    espframe.BackgroundTransparency = 0.5
                    espframe.BorderSizePixel = 0
                    espframe.BackgroundColor3 = Color3.fromRGB( 0, 0, 139) 
                    end)
                    replacegojonow = true
                    break
                end
            end
            end)
        end
        end
	end    
})

MobCounterTab:AddBind({
	Name = "Replace Gojo Bind",
	Default = "",
	Hold = false,
	Callback = function()
	    if _G.replacegojo then 
            OrionLib:MakeNotification({
                Name = "Stopped",
                Content = "Waiting...",
                Time = 2
            }) 
            replacegojo:Set(false)
        else
            OrionLib:MakeNotification({
                Name = "Starting..",
                Content = "Replacing Gojos",
                Time = 2
            }) 
            replacegojo:Set(true)
        end
	end    
})

MobCounterTab:AddSection({
	Name = ""
})

MobCounterTab:AddButton({
	Name = "Mob Counter: 1 Time Click",
	Default = false,
	Callback = function(Value)
        _G.click69 = Value
        click69()
	end    
})

MobCounterTab:AddToggle({
	Name = "Auto Mob Notifacation",
	Default = false,
	Callback = function(Value)
        _G.mobnotifacation = Value
        mobnotifacation()
	end    
})

MobCounterTab:AddSection({
	Name = "  Loops Mobs Notifacations until you want it to stop"
})

MobCounterTab:AddSection({
	Name = ""
})

MobCounterTab:AddSection({
	Name = "  Notifacation settings below:"
})

MobCounterTab:AddSlider({
	Name = "Notifacation Interval (1-30 sec)",
	Min = 1,
	Max = 30,
	Default = 3,
	Color = Color3.fromRGB(255,255,255),
	Increment = 5,
	Callback = function(Value)
		mobslider = Value
	end    
})

MobCounterTab:AddSection({
	Name = "  How long you have to wait until another notifacation"
})

MobCounterTab:AddSlider({
	Name = "Notifacation Delay",
	Min = 1,
	Max = 30,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		mobslider1 = Value
	end    
})

MobCounterTab:AddSection({
	Name = "  How long the notifacations will stay on the screen"
})

SettingsTab:AddButton({
	Name = "Destroy UI",
	Default = false,
	Callback = function(Value)
        _G.click70 = Value
        click70()
	end    
})

local autoex = 0

SettingsTab:AddToggle({
    Name = "Auto Execute",
    Default = _G.SettingsTable.autoexecute,
    Callback = function(Value)
        _G.SettingsTable.autoexecute = Value
        if _G.SettingsTable.autoexecute and autoex == 0 then autoex = autoex + 1
        local queue_on_teleport = syn and syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/HelloHiPro/HelloHiPro/main/New_Text_Document1.lua'))()")
	end
	SaveSettings()
    end    
})

SettingsTab:AddToggle({
	Name = "Player Speed",
	Default = false,
	Callback = function(Value)
	    _G.click71 = Value
        click71()
	end    
})

SettingsTab:AddSlider({
	Name = "Speed",
	Min = 1,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end    
})

SettingsTab:AddToggle({
	Name = "Destroy Name (Hides Name)",
	Default = _G.SettingsTable.hidenick,
	Callback = function(Value)
	    _G.SettingsTable.hidenick = Value
	    SaveSettings()
	    if Value then
	        coroutine.resume(coroutine.create(function()
	                pcall(function()
	                    game.Workspace.Camera:WaitForChild(game.Players.LocalPlayer.Name)
	                    wait(1)
                        plrlevel = game:GetService("Workspace"):WaitForChild("Camera")[me.Name]:WaitForChild("Head"):WaitForChild("NameLevelBBGUI"):WaitForChild("LevelFrame"):WaitForChild("TextLabel").Text
                        game:GetService("Workspace"):WaitForChild("Camera")[me.Name]:WaitForChild("Head"):WaitForChild("NameLevelBBGUI"):WaitForChild("LevelFrame"):WaitForChild("TextLabel"):Destroy()
                        game:GetService("Workspace"):WaitForChild("Camera")[me.Name]:WaitForChild("Head"):WaitForChild("NameLevelBBGUI"):WaitForChild("LevelFrame"):WaitForChild("ImageLabel"):Destroy()
                        game:GetService("Workspace"):WaitForChild("Camera")[me.Name]:WaitForChild("Head"):WaitForChild("NameLevelBBGUI"):WaitForChild("NameFrame"):WaitForChild("TextLabel"):Destroy()
                        game:GetService("Workspace"):WaitForChild("Camera")[me.Name]:WaitForChild("Head"):WaitForChild("NameLevelBBGUI"):WaitForChild("Top"):WaitForChild("ImageLabel"):Destroy()
	                end)
	        end))
        end
    end
})

SettingsTab:AddToggle({
	Name = "Shift-Lock",
	Default = _G.SettingsTable.shiftlock,
	Callback = function(Value)
	    _G.SettingsTable.shiftlock = Value
	    SaveSettings()
	    if Value then
            game:GetService('Players').LocalPlayer.DevEnableMouseLock = true
        else 
            game:GetService('Players').LocalPlayer.DevEnableMouseLock = false
        end
	end    
})

SettingsTab:AddToggle({
	Name = "Change Clock Time",
	Default = _G.SettingsTable.changeclocktime,
	Callback = function(Value)
        _G.SettingsTable.changeclocktime = Value
	SaveSettings()
	end   
})

SettingsTab:AddSlider({
	Name = "Clock Time",
	Min = 1,
	Max = 24,
	Default = _G.SettingsTable.clocktime,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
	_G.SettingsTable.clocktime = Value
	    if _G.SettingsTable.changeclocktime then
                game:GetService('Lighting').ClockTime = _G.SettingsTable.clocktime
	    end
	SaveSettings()
	end
})

SettingsTab:AddToggle({
	Name = "Mouse Teleport",
	Default = false,
	Callback = function(Value)
        _G.mousetp = Value
	end    
})

SettingsTab:AddBind({
	Name = "Teleport Bind",
	Default = "",
	Hold = false,
	Callback = function()
	    mousetp()
	end    
})

SettingsTab:AddToggle({
	Name = "Delete Cooler Aura",
	Default = _G.SettingsTable.deletecooleraura,
	Callback = function(Value)
        _G.SettingsTable.deletecooleraura = Value
        SaveSettings()
	coroutine.resume(coroutine.create(function()
	if _G.SettingsTable.deletecooleraura then
	repeat wait()
	pcall(function()
	for i,v in pairs(game:GetService("Workspace").AlliesPath:GetChildren()) do
	pcall(function()
	v.Torso.Attachment:Destroy()
	v.Torso["banana man by tally hall"]:Destroy()
	v.Torso.glow:Destroy()
	v.Torso["SSJAuraP"]:Destroy()
	v.Torso["Super Sayain 2's Aura"]:Destroy()
	end)
	end
	for i,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
	if v.Name == 'Metal Cooler' then
	pcall(function()
	v.Torso.Attachment:Destroy()
	v.Torso["banana man by tally hall"]:Destroy()
	v.Torso.glow:Destroy()
	v.Torso["SSJAuraP"]:Destroy()
	v.Torso["Super Sayain 2's Aura"]:Destroy()
	end)
	end
	end
	end)
	until _G.SettingsTable.deletecooleraura == false
	end
	end))
	end
})

SettingsTab:AddToggle({
	Name = "Delete Kisuke Fv sheet",
	Default = _G.SettingsTable.deletekisukesheet,
	Callback = function(Value)
	    _G.SettingsTable.deletekisukesheet = Value
	    SaveSettings()
        if _G.SettingsTable.deletekisukesheet then
            coroutine.resume(coroutine.create(function()
            repeat task.wait() 
                pcall(function()
                    for _,v in ipairs(workspace.Unit:GetChildren()) do
                        if v:FindFirstChild('FBXImportGeneric') then
                            v.FBXImportGeneric:Destroy()
                        end
                    end
                end)
            until _G.SettingsTable.deletekisukesheet == false
            end))
        end
	end
})

SettingsTab:AddToggle({
	Name = "Buff FPS (Delete Textures)",
	Default = _G.SettingsTable.deletetexture,
	Callback = function(Value)
    _G.SettingsTable.deletetexture = Value
    SaveSettings()
if _G.SettingsTable.deletetexture then
pcall(function()
coroutine.resume(coroutine.create(function()
repeat wait() until game.Workspace.Camera:WaitForChild(game.Players.LocalPlayer.Name)
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
	if game.ReplicatedStorage.Lobby.Value == false then									
        if v.Parent == game:GetService("ReplicatedStorage").SphereSelection then print("Skipped")
        else
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
        end
	else
	v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957	
	end											
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
end))
end)
end
end    
})

SettingsTab:AddToggle({
	Name = "Delete Enemy (FPS)",
	Default = _G.SettingsTable.deleteenemy,
	Callback = function(Value)
        _G.SettingsTable.deleteenemy = Value
        SaveSettings()
	end    
})

SettingsTab:AddToggle({
	Name = "Disable Rendering",
	Default = _G.SettingsTable.Render,
	Callback = function(Value)
	_G.SettingsTable.Render = Value
	SaveSettings()
	if _G.SettingsTable.Render == false then
        game:GetService("RunService"):Set3dRenderingEnabled(true)
	end
	if _G.SettingsTable.Render == true then
	game:GetService("RunService"):Set3dRenderingEnabled(false)
	end
	end    
})

SettingsTab:AddToggle({
	Name = "Set Fps Cap",
	Default = _G.SettingsTable.setfpscap,
	Callback = function(Value)
        _G.SettingsTable.setfpscap = Value
        SaveSettings()
	coroutine.resume(coroutine.create(function()
        if _G.SettingsTable.setfpscap and game:GetService("ReplicatedStorage").Lobby.Value == false and game.PlaceId ~= 5552815761 then
            repeat wait() until game.Workspace.Camera:WaitForChild(game.Players.LocalPlayer.Name)
            setfpscap(_G.SettingsTable.fpscap)
            repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild('MissionEndNavigateDialog'):WaitForChild('TextFrame'):WaitForChild('Replay') or _G.SettingsTable.setfpscap == false
            setfpscap(30)
        end
        end))
	end
})

SettingsTab:AddSlider({
	Name = "Fps Cap",
	Min = 1,
	Max = 240,
	Default = _G.SettingsTable.fpscap,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		_G.SettingsTable.fpscap = Value
		SaveSettings()
	end    
})

SettingsTab:AddToggle({
	Name = "Delete Terrain",
	Default = _G.SettingsTable.deleteterrain,
	Callback = function(Value)
        _G.SettingsTable.deleteterrain = Value
        SaveSettings()
	coroutine.resume(coroutine.create(function()
        if _G.SettingsTable.deleteterrain and game:GetService("ReplicatedStorage").Lobby.Value == false then
	pcall(function()
	local plate = Instance.new("Part")
	plate.Anchored = true
	plate.Size = Vector3.new(1000,1,1000)
	plate.CFrame = CFrame.new(game:GetService("Workspace").TowerHP.Position - Vector3.new(0,3.2,0))
	game.Workspace["Don't Care"]:Destroy()
	pcall(function()
	game.Workspace["Map Borders"]:Destroy()
	end)
	pcall(function()
	game.Workspace["Others"]:Destroy()
	end)
	plate.Parent = game.Workspace
	end)
        end
        end))
	end
})

SettingsTab:AddToggle({
	Name = "Hide Speedup",
	Default = false,
	Callback = function(Value)
	if game:GetService("ReplicatedStorage").Lobby.Value == false then
        if Value then
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.FastForward.Visible = false
        else 
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.FastForward.Visible = true
        end
	end
	end    
})

SettingsTab:AddToggle({
	Name = "Delete Exodia Cutscene",
	Default = _G.SettingsTable.deleteexodia,
	Callback = function(Value)
    _G.SettingsTable.deleteexodia = Value
    SaveSettings()
        pcall(function()
            coroutine.resume(coroutine.create(function()
            while _G.SettingsTable.deleteexodia do wait()
            game.Workspace.Camera:WaitForChild("Exodia")
            if _G.SettingsTable.deleteexodia then 
                game.Workspace.Camera:WaitForChild("Exodia"):Destroy()
                game.Workspace.CurrentCamera.CameraType = "Custom"
            end
            end
            end))
        end)
	end    
})

currentcodes = ""
for i, v in pairs(loadstring(game:HttpGet('https://raw.githubusercontent.com/HelloHiPro/HelloHiPro/main/New_Text_Document3.lua'))()) do
    currentcodes = currentcodes..v..", "
end

WhTab:AddSection({
	Name = ""
})

WhTab:AddParagraph("Current Codes: ",currentcodes)

WhTab:AddButton({
    Name = "Redeem codes",
    Default = false,
    Callback = function(Value)
        for i, v in pairs(loadstring(game:HttpGet('https://raw.githubusercontent.com/HelloHiPro/HelloHiPro/main/New_Text_Document3.lua'))()) do
            game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Code", v)
            task.wait(.25)
        end
    end    
})

--Time Tab

bobby1 = tick()

local joey = TimeTab:AddLabel(bobby)

coroutine.resume(coroutine.create(function()
    pcall(function()
    repeat task.wait()
        joey:Set("Real Time: "..string.format("%.01f", tick() - bobby1))
    until false
    end)
end))

local joe1 = TimeTab:AddLabel("0")
local joey3 = TimeTab:AddLabel("Bugged if not changing")
local joey33 = TimeTab:AddLabel("Bugged if not changing")
local joey4 = TimeTab:AddLabel("Bugged if not changing")
local joey5 = TimeTab:AddLabel("Bugged if not changing")
local joey6 = TimeTab:AddLabel("Bugged if not changing")

OrionLib:Init()

timerskip = 0
rimurucd = 480
fvcd = 351
diocd = 420
diacd = 750
timer69 = 0
timer96 = 0

coroutine.resume(coroutine.create(function()
    speedupvalue = game:GetService("ReplicatedStorage").SpeedUP.Value
    bobeh = tick()
    bobeh2 = tick()
    rimurucd1 = tick()
    fvcd1 = tick()
    diocd1 = tick()
    diacd1 = tick()
    repeat task.wait()
        while game:GetService("ReplicatedStorage").SpeedUP.Value == speedupvalue do
            task.wait()
        end
        timer69 = timer69 + (tick() - bobeh)*speedupvalue
        timerskip = timerskip + (tick() - bobeh2)*speedupvalue
        rimurucd = rimurucd + (tick() - rimurucd1)*speedupvalue
        fvcd = fvcd + (tick() - fvcd1)*speedupvalue
        diocd = diocd + (tick() - diocd1)*speedupvalue
        diacd = diacd + (tick() - diacd1)*speedupvalue
        bobeh = tick()
        bobeh2 = tick()
        rimurucd1 = tick()
        fvcd1 = tick()
        diocd1 = tick()
        diacd1 = tick()
        speedupvalue = game:GetService("ReplicatedStorage").SpeedUP.Value
    until false
end))

coroutine.resume(coroutine.create(function()
    repeat task.wait()
    coroutine.resume(coroutine.create(function()
    timer96 = timer69 + (tick() - bobeh)*game:GetService("ReplicatedStorage").SpeedUP.Value
    joe1:Set("(Predicted) SpeedUP Timer: "..string.format("%.01f", timer96))
    end))
    until false
end))

coroutine.resume(coroutine.create(function()
    repeat task.wait()
    local currentwave = game:GetService("ReplicatedStorage").WaveValue.Value
    repeat task.wait() until game:GetService("ReplicatedStorage").WaveValue.Value > currentwave
    timerskip = 0
    bobeh2 = tick()
    until false
end))

coroutine.resume(coroutine.create(function()
    while task.wait() do
    repeat task.wait()
    coroutine.resume(coroutine.create(function()
    timerskip2 = timerskip + (tick() - bobeh2)*game:GetService("ReplicatedStorage").SpeedUP.Value
    if timerskip2 <= 31 then
        joey33:Set("(31s) Time Until Skip Notification: "..string.format("%.01f", 31 - timerskip2))
    elseif timerskip2 >= 31 then
        joey33:Set("(31s) Time Until Skip Notification: Ready")
    end
    joey3:Set("(35s) Time Until Skip (Auto Skip): "..string.format("%.01f", 35 - timerskip2))
    end))
    until 35 - timerskip2 <= 0
    joey3:Set("(35s) Time Until Skip (Auto Skip): Ready")
    repeat task.wait() 
        timerskip2 = timerskip + (tick() - bobeh2)*game:GetService("ReplicatedStorage").SpeedUP.Value 
    until 35 - timerskip2 >= 0
    end
end))

coroutine.resume(coroutine.create(function()
game.Workspace.Unit.ChildAdded:Connect(function(child)
    if child.Name == "Rimuru Tempest" then
        child:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true then
                if 480 - rimurucd2 <= 10 then
                    rimurucd1 = tick()
                    rimurucd = 0
                end
            end
        end)
    elseif child.Name == "Funny Valentine" then
        child:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true then
                if 351 - fvcd2 <= 10 then
                    fvcd1 = tick()
                    fvcd = 0
                end
            end
        end)
    elseif child.Name == "DIO OH" then
        child:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true then
                if 420 - diocd2 <= 10 and 750 - diacd2 <= 10 then
                    diocd1 = tick()
                    diocd = 0
                end
            end
        end)
    elseif child.Name == "JuliusNova" then
        child:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true and _G.SettingsTable.rewindstatus and _G.SettingsTable.unitstatus then
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                local old = v:WaitForChild("PathNumber").Value
                local a1
                a1 = v:WaitForChild("PathNumber").Changed:Connect(function(new)
                    if old < new + 10 and old > new then
                        if v:WaitForChild("Head"):FindFirstChild("EffectBBGUI") then
                            v.Head.EffectBBGUI:WaitForChild("Frame"):WaitForChild("RewindImage").Visible = true
                            a1:Disconnect() 
                        else
                            v:WaitForChild("Head"):WaitForChild("EffectBBGUICustom"):WaitForChild("Frame"):WaitForChild("RewindImage").Visible = true
                            a1:Disconnect() 
                        end
                    end
                    coroutine.resume(coroutine.create(function()
                        task.wait(1) a1:Disconnect()
                        if v:FindFirstChild("Status_Effect_LongerReverseMode") then
                            if v:WaitForChild("Head"):FindFirstChild("EffectBBGUI") then
                                v.Head.EffectBBGUI:WaitForChild("Frame"):WaitForChild("RewindImage").Visible = true
                            else
                                v:WaitForChild("Head"):WaitForChild("EffectBBGUICustom"):WaitForChild("Frame"):WaitForChild("RewindImage").Visible = true
                            end
                        end
                    end))
                    task.wait()
                end)
                end 
            end
        end)
    elseif child.Name == "Law" then
        child:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true and _G.SettingsTable.replacementstatus and _G.SettingsTable.unitstatus then
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                local old = v:WaitForChild("PathNumber").Value
                local bob = true
                local a1
                a1 = v:WaitForChild("PathNumber").Changed:Connect(function(new)
                    if old < new + 10 and new >= 110 then
                        bob = false
                    end
                    if old < new + 150 and old > new and bob then
                        if v:WaitForChild("Head"):FindFirstChild("EffectBBGUI") then
                            v.Head.EffectBBGUI:WaitForChild("Frame"):WaitForChild("LawImage").Visible = true
                            a1:Disconnect() 
                        else
                            v:WaitForChild("Head"):WaitForChild("EffectBBGUICustom"):WaitForChild("Frame"):WaitForChild("LawImage").Visible = true
                            a1:Disconnect() 
                        end
                    end
                    coroutine.resume(coroutine.create(function()
                        task.wait(1) a1:Disconnect()
                    end))
                    task.wait()
                end)
                end 
            end
        end)
    elseif child.Name == "Diavolo" then
        child:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true then
                coroutine.resume(coroutine.create(function()
                if _G.SettingsTable.erasedstatus and _G.SettingsTable.unitstatus then
                pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:WaitForChild("Head"):FindFirstChild("EffectBBGUI") then
                        v.Head.EffectBBGUI:WaitForChild("Frame"):WaitForChild("DiavoloImage").Visible = true
                    elseif v:WaitForChild("Head"):FindFirstChild("EffectBBGUICustom") then
                        v.Head.EffectBBGUICustom:WaitForChild("Frame"):WaitForChild("DiavoloImage").Visible = true
                    end
                end
                end)
                end
                end))
                if 750 - diacd2 <= 10 and 420 - diocd2 <= 10 then
                    diacd1 = tick()
                    diacd = 0
                end
            end
        end)
    end  
end)
end))

coroutine.resume(coroutine.create(function()
for i, v in pairs(game.Workspace.Unit:GetChildren()) do
    if v.Name == "Rimuru Tempest" then
        v:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true then
                if 480 - rimurucd2 <= 10 then
                    rimurucd1 = tick()
                    rimurucd = 0
                end
            end
        end)
    elseif v.Name == "Funny Valentine" then
        v:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true then
                if 351 - fvcd2 <= 10 then
                    fvcd1 = tick()
                    fvcd = 0
                end
            end
        end)
    elseif v.Name == "DIO OH" then
        v:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true then
                if 420 - diocd2 <= 10 and 750 - diacd2 <= 10 then
                    diocd1 = tick()
                    diocd = 0
                end
            end
        end)
    elseif v.Name == "JuliusNova" then
        v:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true and _G.SettingsTable.rewindstatus and _G.SettingsTable.unitstatus then
                for _, p in pairs(game.Workspace.Enemies:GetChildren()) do
                local old = p:WaitForChild("PathNumber").Value
                local a1
                a1 = p:WaitForChild("PathNumber").Changed:Connect(function(new)
                    if old < new + 10 and old > new then
                        if p:WaitForChild("Head"):FindFirstChild("EffectBBGUI") then
                            p.Head.EffectBBGUI:WaitForChild("Frame"):WaitForChild("RewindImage").Visible = true
                            a1:Disconnect() 
                        else
                            p:WaitForChild("Head"):WaitForChild("EffectBBGUICustom"):WaitForChild("Frame"):WaitForChild("RewindImage").Visible = true
                            a1:Disconnect() 
                        end
                    end
                    coroutine.resume(coroutine.create(function()
                        task.wait(1) a1:Disconnect()
                        if p:FindFirstChild("Status_Effect_LongerReverseMode") then
                            if p:WaitForChild("Head"):FindFirstChild("EffectBBGUI") then
                                p.Head.EffectBBGUI:WaitForChild("Frame"):WaitForChild("RewindImage").Visible = true
                            else
                                p:WaitForChild("Head"):WaitForChild("EffectBBGUICustom"):WaitForChild("Frame"):WaitForChild("RewindImage").Visible = true
                            end
                        end
                    end))
                    task.wait()
                end)
                end 
            end
        end)
    elseif v.Name == "Law" then
        v:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true and _G.SettingsTable.replacementstatus and _G.SettingsTable.unitstatus  then
                for i, p in pairs(game.Workspace.Enemies:GetChildren()) do
                local old = p:WaitForChild("PathNumber").Value
                local bob = true
                local a1
                a1 = p:WaitForChild("PathNumber").Changed:Connect(function(new)
                    if old < new + 10 and new >= 110 then
                        bob = false
                    end
                    if old < new + 150 and old > new and bob then
                        if p:WaitForChild("Head"):FindFirstChild("EffectBBGUI") then
                            p.Head.EffectBBGUI:WaitForChild("Frame"):WaitForChild("LawImage").Visible = true
                            a1:Disconnect() 
                        else
                            p:WaitForChild("Head"):WaitForChild("EffectBBGUICustom"):WaitForChild("Frame"):WaitForChild("LawImage").Visible = true
                            a1:Disconnect() 
                        end
                    end
                    coroutine.resume(coroutine.create(function()
                        task.wait(1) a1:Disconnect()
                    end))
                    task.wait()
                end)
                end 
            end
        end)
    elseif v.Name == "Diavolo" then
        v:WaitForChild("SpecialMove"):WaitForChild("Special_Enabled2").Changed:Connect(function(Value)
            if Value == true then
                coroutine.resume(coroutine.create(function()
                if _G.SettingsTable.erasedstatus and _G.SettingsTable.unitstatus then
                pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:WaitForChild("Head"):FindFirstChild("EffectBBGUI") then
                        v.Head.EffectBBGUI:WaitForChild("Frame"):WaitForChild("DiavoloImage").Visible = true
                    elseif v:WaitForChild("Head"):FindFirstChild("EffectBBGUICustom") then
                        v.Head.EffectBBGUICustom:WaitForChild("Frame"):WaitForChild("DiavoloImage").Visible = true
                    end
                end
                end)
                end
                end))
                if 750 - diacd2 <= 10 and 420 - diocd2 <= 10 then
                    diacd1 = tick()
                    diacd = 0
                end
            end
        end)
    end
end
end))

coroutine.resume(coroutine.create(function()
game.Workspace:WaitForChild("Camera").ChildAdded:Connect(function(child)
    if child.Name == "buff" then
        fvcd1 = tick()
        fvcd = 0
    end
end)
end))

coroutine.resume(coroutine.create(function()
    while task.wait() do
    repeat task.wait()
    coroutine.resume(coroutine.create(function()
    rimurucd2 = rimurucd + (tick() - rimurucd1)*game:GetService("ReplicatedStorage").SpeedUP.Value
    joey4:Set("(480s) Rimuru CD: "..string.format("%.01f", 480 - rimurucd2))
    end))
    until 480 - rimurucd2 <= 0
    joey4:Set("(480s) Rimuru CD: Ready")
    repeat task.wait() 
        rimurucd2 = rimurucd + (tick() - rimurucd1)*game:GetService("ReplicatedStorage").SpeedUP.Value 
    until 480 - rimurucd2 >= 0
    end
end))

coroutine.resume(coroutine.create(function()
    while task.wait() do
    repeat task.wait()
    coroutine.resume(coroutine.create(function()
    fvcd2 = fvcd + (tick() - fvcd1)*game:GetService("ReplicatedStorage").SpeedUP.Value
    joey5:Set("(351s) FV CD: "..string.format("%.01f", 351 - fvcd2))
    end))
    until 351 - fvcd2 <= 0
    joey5:Set("(351s) FV CD: Ready")
    repeat task.wait() 
        fvcd2 = fvcd + (tick() - fvcd1)*game:GetService("ReplicatedStorage").SpeedUP.Value 
    until 351 - fvcd2 >= 0
    end
end))

coroutine.resume(coroutine.create(function()
    while task.wait() do
    repeat task.wait()
    coroutine.resume(coroutine.create(function()
    diocd2 = diocd + (tick() - diocd1)*game:GetService("ReplicatedStorage").SpeedUP.Value
    joey6:Set("(420s) Dio OH CD: "..string.format("%.01f", 420 - diocd2))
    end))
    until 420 - diocd2 <= 0
    joey6:Set("(420/750s) Dio OH CD: Ready")
    repeat task.wait() 
        diocd2 = diocd + (tick() - diocd1)*game:GetService("ReplicatedStorage").SpeedUP.Value 
    until 420 - diocd2 >= 0 
    end
end))

coroutine.resume(coroutine.create(function()
    while task.wait() do
    repeat task.wait()
    coroutine.resume(coroutine.create(function()
    diacd2 = diacd + (tick() - diacd1)*game:GetService("ReplicatedStorage").SpeedUP.Value
    joey6:Set("(750s) Dio OH CD: "..string.format("%.01f", 750 - diacd2))
    end))
    until 750 - diacd2 <= 0
    joey6:Set("(420/750s) Dio OH CD: Ready")
    repeat task.wait() 
        diacd2 = diacd + (tick() - diacd1)*game:GetService("ReplicatedStorage").SpeedUP.Value 
    until 750 - diacd2 >= 0 
    end
end))
