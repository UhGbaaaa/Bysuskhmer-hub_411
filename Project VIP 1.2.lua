local CoreGui = game:GetService("StarterGui")
local Players = game:GetService("Players")

local function isNumber(str)
  if tonumber(str) ~= nil or str == 'inf' then
    return true
  end
end

getgenv().HitboxSize = 15
getgenv().HitboxTransparency = 0.9

getgenv().HitboxStatus = false
getgenv().TeamCheck = false

getgenv().Walkspeed = game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed
getgenv().Jumppower = game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower

getgenv().TPSpeed = 3
getgenv().TPWalk = false

--// UI

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/MyUILib(Unamed).lua.txt"))()
local Window = Library:Create("BYSUSKHMER VIP 1.2")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
 
local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(51, 0, 255)
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 50, 0, 20)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "BYH"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 28.000
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end)

local HomeTab = Window:Tab("Home","rbxassetid://9405933234")
local PlayerTab = Window:Tab("Players","rbxassetid://9405933234")
local VisualTab = Window:Tab("Visuals","rbxassetid://9405933234")
local Tools = Window:Tab("Tools Player ","rbxassetid://9405933234")
local VIP = Window:Tab("Games ","rbxassetid://9405933234")
local P = Window:Tab("Premium ","rbxassetid://9405933234")

HomeTab:Section("Main")

HomeTab:TextBox("Hitbox Size", function(value)
    _G.HeadSize = value
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

HomeTab:Section("Settings")

HomeTab:Button("Info", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Bysuskhmer%20info"))()
end)

HomeTab:Section("Script executor")

HomeTab:Button("Arceus X ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Arceus_X_V3.lua"))()
end)

HomeTab:Button("Delta ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/delta-hydro/secret-host-haha/main/syn_ui_new.lua"))()
end)

HomeTab:Button(" Hydroxide", function()
owner = "Upbolt"
local branch = "revision"
local function webImport(file)
return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end
webImport("init")
webImport("ui/main")
end)

HomeTab:Button("Codex ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Codex.lua"))()
end)

HomeTab:Section("Script By Admin")

HomeTab:Button("Red Light Green Light (FIX)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Red%20Light%20Green%20Light%20(FIX)"))()
end)

HomeTab:Button("Gamepass Tools Script!", function()
for _,v in pairs(game:GetDescendants()) do if v.ClassName == "RemoteEvent" then if v.Parent.Name == "WeaponsRemotes" or v.Parent.Name == "VipRemotes" or v.Parent.Name == "Remotes" then v:FireServer() end end end
end)

HomeTab:Button("Esp Player All", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Player%20Esp"))()
end)

HomeTab:Button("Murder 5vs5", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Script%20Murder%205vs5"))()
end)


PlayerTab:TextBox("WalkSpeed", function(value)
    getgenv().Walkspeed = value
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)
end)

PlayerTab:Toggle("Loop WalkSpeed", function(state)
    getgenv().loopW = state
    game:GetService("RunService").Heartbeat:Connect(function()
        if loopW == true then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
            end)
        end
    end)
end)

PlayerTab:TextBox("JumpPower", function(value)
    getgenv().Jumppower = value
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
    end)
end)

PlayerTab:Toggle("Loop JumpPower", function(state)
    getgenv().loopJ = state
    game:GetService("RunService").Heartbeat:Connect(function()
        if loopJ == true then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Jumppower
            end)
        end
    end)
end)

PlayerTab:TextBox("TP Speed", function(value)
getgenv().TPSpeed = value
end)

PlayerTab:Toggle("TP Walk", function(s)
getgenv().TPWalk = s
local hb = game:GetService("RunService").Heartbeat
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while getgenv().TPWalk and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if getgenv().TPSpeed and isNumber(getgenv().TPSpeed) then
      chr:TranslateBy(hum.MoveDirection * tonumber(getgenv().TPSpeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
end)

PlayerTab:Slider("Fov", game.Workspace.CurrentCamera.FieldOfView,120, function(v)
     game.Workspace.CurrentCamera.FieldOfView = v
end)

PlayerTab:Button("No Clip", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Script%20-%20NOCLIP"))()
end)

PlayerTab:Toggle("Infinite Jump", function(s)
getgenv().InfJ = s
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfJ == true then
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
end)

PlayerTab:Button("Fly V1 HUB", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Fly%20V1"))()
end)

VisualTab:InfoLabel("Wait 3-10 seconds")

VisualTab:Toggle("Character Highlight", function(state)
getgenv().enabled = state --Toggle on/off
getgenv().filluseteamcolor = true --Toggle fill color using player team color on/off
getgenv().outlineuseteamcolor = true --Toggle outline color using player team color on/off
getgenv().fillcolor = Color3.new(0, 0, 0) --Change fill color, no need to edit if using team color
getgenv().outlinecolor = Color3.new(1, 1, 1) --Change outline color, no need to edit if using team color
getgenv().filltrans = 0.5 --Change fill transparency
getgenv().outlinetrans = 0.5 --Change outline transparency

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()
end)

if game.PlaceId == 3082002798 then
    local GamesTab = Window:Tab("Games","rbxassetid://15426471035")
	GamesTab:InfoLabel("Game: "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
	GamesTab:Button("No Cooldown", function()
	    for i, v in pairs(game:GetService('ReplicatedStorage')['Shared_Modules'].Tools:GetDescendants()) do
		    if v:IsA('ModuleScript') then
			    local Module = require(v)
				Module.DEBOUNCE = 0
			end
		end
	end)
end 

VisualTab:Button("ESP BOX ", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/g216nQ7d"))()
end)

VisualTab:Button("ESP V2 ", function()
    loadstring(request({ Url = "https://raw.githubusercontent.com/fatesc/fates-esp/main/main.lua", Method = "GET"}).Body)()
end)

VisualTab:Button("ESP V3 ", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/dsTXRpHY"))()
end)

VisualTab:Button("EPS V4 ", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/iv9qAHZP"))()
end)

VisualTab:Button("ESP V5 ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/MurderMystery2HighlightESP"))
end)

Tools:TextBox("Fake Name ", function(speaker)
    local new_name = "speaker" -- I'm not Pepsi. ^_^
local new_id = 104867 -- I'm not 26346. ^_^
local clear_avatar = true -- So no one can reverse search by your outfit
local flush_body_colors = true -- So no one can reverse search by your bodycolors
local rename_instances = false -- Rename any instances that holds your name. (Not recomended unless you can see your name above your character)
local change_id = false -- Change your player ID (not visually)
local deep_scan = true -- Can get a bit laggy if there is a mass wave of new instances
local filter_httpget = { -- Didn't seem like this would be helpful, but requested.
    enabled = false, -- Turn on
    result = true, -- Filter the results of the request
    request = true -- Filter the url before requesting
}


local Players = assert(assert(game, "game missing?"):FindService("Players") or game:GetService("Players"), "Players missing?")
local LocalPlayer = assert(Players.LocalPlayer, "LocalPlayer missing?")
local CoreGui = game:FindService("CoreGui") or game:GetService("CoreGui")
local PlayerGui = assert(LocalPlayer:FindFirstChild("PlayerGui"), "PlayerGui mising?")
local RunService = assert(game:FindService("RunService") or game:GetService("RunService"), "RunService missing?")
local replaces_str = {
    Players.LocalPlayer.Name
}
local replaces_num = {
    tostring(Players.LocalPlayer.UserId)
}
new_name, new_id = tostring(new_name), tostring(new_id)
local function casepatt(pattern)
    return string.gsub(pattern, "(%%?)(.)", function(percent, letter)
        if percent ~= "" or not string.match(letter, "%a") then
            return percent .. letter
        else
            return string.format("[%s%s]", string.lower(letter), string.upper(letter))
        end
    end)
end
function replace(item, fast)
    for replacewith, data in pairs({
        [new_name] = replaces_str,
        [new_id] = replaces_num
    }) do
        if not fast then
            RunService.RenderStepped:Wait()
        end
        for _, v in pairs(data) do
            if not fast then
                RunService.RenderStepped:Wait()
            end
            for _, t in pairs({
                "Text",
                "Message",
                "ToolTip",
                "Value"
            }) do
                pcall(function()
                    if string.find(item[t], v, nil, true) then
                        item[t] = string.gsub(item[t], v, replacewith)
                    elseif string.find(item[t], string.lower(v), nil, true) then
                        item[t] = string.gsub(item[v], string.lower(v), string.lower(replacewith))
                    elseif string.find(item[t], string.upper(v), nil, true) then
                        item[t] = string.gsub(item[v], string.upper(v), string.upper(replacewith))
                    elseif string.find(string.lower(item[t]), string.lower(v), nil, true) then
                        item[t] = string.gsub(item[v], casepatt(v), replacewith)
                    end
                end)
                if not fast then
                    RunService.RenderStepped:Wait()
                end
            end
            if not fast then
                RunService.RenderStepped:Wait()
            end
            if rename_instances then
                pcall(function()
                    if string.find(item.Name, v, nil, true) then
                        item.Name = string.gsub(item.Name, v, replacewith)
                    elseif string.find(item.Name, string.lower(v), nil, true) then
                        item.Name = string.gsub(item.Name, string.lower(v), string.lower(replacewith))
                    elseif string.find(item.Name, string.upper(v), nil, true) then
                        item.Name = string.gsub(item.Name, string.lower(v), string.upper(replacewith))
                    elseif string.find(string.lower(item.Name), string.lower(v), nil, true) then
                        item.Name = string.gsub(item.Name, casepatt(v), replacewith)
                    end
                end)
            end
        end
    end
end
shared.rep = replace
local function scan_and_replace(fast)
    local scan_que = {
        CoreGui:GetDescendants(),
        PlayerGui:GetDescendants(),
        workspace:GetDescendants()
    }
    local last_break = 0
    for _, items in pairs(scan_que) do
        if not fast then
            RunService.RenderStepped:Wait()
        end
        for _, gui in pairs(assert(type(items) == "table" and items, "scan_que does not hold a table")) do
            last_break = 1 + last_break
            if last_break >= 6000 then
                RunService.RenderStepped:Wait()
                last_break = 0
            end
            if not fast then
                RunService.RenderStepped:Wait()
            end
            replace(gui, fast)
        end
    end
    for _, obj in pairs(workspace:GetDescendants()) do
        if not fast then
            RunService.RenderStepped:Wait()
        end
        replace(obj)
    end
end
function fixchar(Character)
    if not Character then
        return 
    end
	wait(0.2)
    RunService.RenderStepped:Wait()
    if rename_instances then
        Character.Name = new_name
    end
	if clear_avatar then
    	Players.LocalPlayer:ClearCharacterAppearance()
	end
    wait(0.1)
    if flush_body_colors then
        local bc = Character:FindFirstChildOfClass("BodyColors")
        if bc then
            for _, c in pairs({
                "HeadColor",
                "LeftArmColor",
                "LeftLegColor",
                "RightArmColor",
                "RightLegColor",
                "TorsoColor"
            }) do
                bc[c] = (typeof(bc[c]) == "BrickColor" and BrickColor.Random()) or bc[c]
            end
        else
            local h = Character:FindFirstChildOfClass("Humanoid")
            if h then
                for _, limb in pairs(Character:GetChildren()) do
                    if limb:IsA("BasePart") and pcall(h.GetLimb, h, limb) then
                        limb.BrickColor = BrickColor.Random()
                    end
                end
            end
        end
    end
end
fixchar(Players.LocalPlayer.Character)
Players.LocalPlayer.CharacterAppearanceLoaded:Connect(fixchar)
Players.LocalPlayer.CharacterAdded:Connect(fixchar)
if deep_scan then
    game.ItemChanged:Connect(function(obj, property)
        if not rename_instances and "Name" == property then
            return 
        end
        local s, v = pcall(function()
            return obj[property]
        end)
        if s then
            if "string" == type(v) then
                for _, c in pairs(replaces_str) do
                    RunService.RenderStepped:Wait()
                    if string.find(obj[property], c, nil, true) then
                        obj[property] = string.gsub(tostring(obj[property] or v), c, new_name)
                    elseif string.find(obj[property], string.lower(c)) then
                        obj[property] = string.gsub(tostring(obj[property] or v), string.lower(c), string.lower(new_name))
                    elseif string.find(obj[property], string.upper(c), nil, true) then
                        obj[property] = string.gsub(tostring(obj[property] or v), string.upper(c), string.upper(new_name))
                    elseif string.find(string.upper(obj[property]), string.upper(c), nil, true) then
                        obj[property] = string.gsub(tostring(obj[property] or v), casepatt(c), new_name)
                    end
                end
                RunService.RenderStepped:Wait()
                for _, c in pairs(replaces_num) do
                    RunService.RenderStepped:Wait()
                    if string.find(obj[property], new_id) then
                        obj[property] = string.gsub(tostring(obj[property] or v), c, new_id)
                    end
                end
            elseif "number" == type(v) then
                v = tostring(obj[property] or v)
                for _, c in pairs(replaces_num) do
                    RunService.RenderStepped:Wait()
                    if string.find(v, c) then
                        obj[property] = tonumber(tonumber(string.gsub(v, c, new_id) or obj[property]) or obj[property])
                    end
                end
            end
        end
    end)
    CoreGui.DescendantAdded:Connect(replace)
    PlayerGui.DescendantAdded:Connect(replace)
end
local function filterstr(s)
    for _, data in pairs({
        [new_name] = replaces_str,
        [new_id] = replaces_num
    }) do
        for c, v in pairs(data) do
            if string.find(s, v, nil, true) then
                s = string.gsub(s, v, c)
            elseif string.find(s, string.lower(v), nil, true) then
                s = string.gsub(s, string.lower(v), string.lower(c))
            elseif string.find(s, string.upper(v), nil, true) then
                s = string.gsub(s, string.upper(v), string.upper(c))
            elseif string.find(string.upper(s), string.upper(v), nil, true) then
                s = string.gsub(s, casepatt(v), c)
            end
        end
    end
    return s
end
if filter_httpget.enabled and type(hookfunc or hookfunction or detour_function) == "function" then
    local hget
    hget = assert(hookfunction or hookfunc or detour_function, "Hook function required for filter_httpget")(assert(game.HttpGet, "HttpGet required for filter_httpget"), function(shelf, u, ...)
        if filter_httpget.request then
            local x, e = pcall(filterstr, u)
            if x and e then
                u = e
            end
        end
        if filter_httpget.result then
            local result = hget(shelf, u, ...)
            local x, e = pcall(filterstr, result)
            if x and e then
                return e
            end
        end
        return hget(shelf, u, ...)
    end)
end
scan_and_replace(true)
while wait(1) do
    if rename_instances then
        Players.LocalPlayer.Name = new_name
        if Players.LocalPlayer.Character then
            Players.LocalPlayer.Character.Name = new_name
        end
    end
    if change_id then
        Players.LocalPlayer.UserId = tonumber(tonumber(new_id or 1) or 1)
    end
    scan_and_replace()
end
end)

Tools:Button("Drop Tools ", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/fQpDeHpC"))()
end)

Tools:Button("Char Bypass ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/ChatBypasser-AZY/main/Chat%20Bypass%20-%20ChatSplitter(Source).lua"))()
end)

Tools:Button("Keyboard  ", function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
end)

Tools:Button("ShikLock  ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/shiftlock/main/shiftlock"))();
end)

Tools:Button("Btools  ", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))();
end)

Tools:Button("Btools 2 ", function()
loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)

Tools:Button("Admin  ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
end)

Tools:Button("Emote  ", function()
loadstring(game:HttpGet("https://pastebin.com/raw/eCpipCTH"))()
end)

Tools:Button("AimBot  ", function()
loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
end)

Tools:Button(" Teleklnesis ", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md'),true))()
end)

Tools:Button(" Car Fly ", function()
loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
end)

Tools:Button(" Tools TP ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Click-TP/main/Click%20TP"))()
end)

Tools:Button(" Copy Ava ", function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\73\110\118\111\111\107\101\114\49\49\47\79\117\116\102\105\116\47\109\97\105\110\47\79\117\116\102\105\116\67\111\112\105\101\114\46\108\117\97\34\44\32\116\114\117\101\41\41\40\41\10")()
end)

Tools:Button("Animation  ", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/IlikeyocutgHAH12/EGEGESGGH/main/FE%20Animation%20GUI.txt'))()
end) 

Tools:Button("  Kill Player", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Kill%20player"))()
end)

Tools:Button(" Dex V3 ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

Tools:Button(" TP gui player ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/TP_Player.lua"))()
end)

Tools:Button(" Fps Show ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Script%20FPS%20SHOW"))()
end)

Tools:Button(" Fps Mod ", function()
loadstring(game:HttpGet("https://pastebin.com/raw/7skSqSqS"))()
end)

Tools:Button(" R15 TO R6", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua'),true))()
end)

VIP:InfoLabel("Game All")

VIP:Section("Survive The Killer ")

VIP:Button("Survive the killer", function()
loadstring(game:HttpGet("https://pastebin.com/raw/RvvEEuNM"))()
end)

VIP:Button("Survive the killer ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FOXTROXHACKS/ElToro/main/Hub.lua"))()
end)

VIP:Section("Brookhaven RP")

VIP:Button("Brokhaven PR", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)

VIP:Button("Brokhaven PR ", function()
loadstring(game:HttpGet("https://pastefy.app/tIiioko4/raw"))()
end)

VIP:Section("Prison Life")

VIP:Button("Prison Life", function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Prison-Life-ShieldCrypt-Admin-Gui-V2-11482"))()
end)

VIP:Button("Prison Life ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
end)

VIP:Button("Prison Life ", function()
loadstring(game:HttpGet("https://rscripts.net/raw/impact-hub-or-universal-prison-life_1714451068100_k81QLqNdsN.txt"))()
end)

VIP:Button("Prison Life ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/g00lXploiter/g00lXploiter/main/Fe%20bypass", true))()
end)

VIP:Section("CHAOS")

VIP:Button("CHAOS", function()
loadstring(game:HttpGet("https://pastebin.com/raw/GRH1J8FA",true))()
end)

VIP:Section("Blox Fruit")

VIP:Button("Blox Fruit", function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/Basicallyy/Basicallyy/main/MinGamingV4.lua")() 
end)

VIP:Button("Blox Fruit ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/SpectrumX.lua"))()
end)

VIP:Section("Blade Ball")

VIP:Button("Blade Ball", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/eng"))()
end)

VIP:Section("Bee Swarm")

VIP:Button("Bee  swarm", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Historia00012/HISTORIAHUB/main/BSS%20FREE"))()
end)

VIP:Section("Adopt Me")

VIP:Button("Adopt Me ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/rblxscriptsnet/rblxhub/main/rblxhub.lua"))()
end)

VIP:Section("Murder Mystery 2")

VIP:Button("Murder Mystery 2", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Gregory909/FolderGui-FolderHub/main/loader.lua", true))()
end)

VIP:Section("Hack HUB")

VIP:Button("Ghost Play Hub", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end)

VIP:Button("VHUB ", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/itsyaboivincentt5315/script/main/VHub.txt'),true))()
end)

VIP:Section("Pull a Sword")

VIP:Button("pull a Sword", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0PullaSword'))()
end)

VIP:Section("Slap Battles")

VIP:Button("Slap Battles", function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
end)

VIP:Section("Pls Donate")

VIP:Button("Pls Donate", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafanchik123/script/main/plisdonat7445787"))()
end)

VIP:Section("Doors")

VIP:Button("Doors", function()
loadstring(game:HttpGet("https://pst.innomi.net/paste/dw8uteaxwdb4ga9kyuf9hcga/raw"))()
end)

VIP:Section("Natural Disaster Survival")

VIP:Button("Natural Disaster Survival", function()
loadstring(game:HttpGet('https://rawscripts.net/raw/Natural-Disaster-Survival-Rochips-nds-10406'))()
end)

VIP:Section("Build a Boat")

VIP:Button("Build A Boat", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"))()
end)

VIP:Section("Car Factory Tycoon")

VIP:Button("Car Factory Tycoon", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cxetive/OptixHub/main/loader.lua"))() 
end)

VIP:Section("Key")

VIP:Button("HUB SCRIPT", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NEWBUTIF/Universal-Script-Hub/main/BUTIF%26RAFAN"))()
end)

VIP:Section("Squid Game")

VIP:Button("Red Light Green Light (FIX)", function()
loadstring(game:HttpGet("https://pastebin.com/raw/bEUzhD4u"))()
end)

VIP:Section("dont press the button 4")

VIP:Button("dont press the button 4", function()
game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Error";
	Text = "Creator By Bysuskhmer HuB 2024 VIP";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true
end)

VIP:Section("Hacker All Game")

VIP:Button("1x1x1x1", function()
loadstring(game:HttpGet("https://pastebin.com/raw/dgF9yeXJ"))()
end)

VIP:Section("Muscle Legends")

VIP:Button("MuscLe legends", function()
loadstring(Game:HttpGet"https://gitlab.com/turbohubz/loader.xyz/loader/-/raw/main/TurboHub-Loader")()
end)

VIP:Section("barry's prison run")

VIP:Button("barry's prison run", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Ginxys/Barry-Prison-Run/main/Script.Lua"))()
end)

VIP:InfoLabel("Game UGC")

VIP:Button("Criminal Base Tycoon OP  UGC", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0CriminalBase'))()
end)

VIP:Button("Limited Marble Race OP UGC ", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0MarbleRace'))()
end)

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Welcome to Bysuskhmer ";
	Text = "Creator By Bysuskhmer HuB 2024 VIP";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true