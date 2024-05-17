local CoreGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local V = 1.3

local function isNumber(str)
  if tonumber(str) ~= nil or str == 'inf' then
    return true
  end
end

game.Workspace.CurrentCamera.FieldOfView = 70

getgenv().HitboxSize = 15
getgenv().HitboxTransparency = 0.9

getgenv().HitboxStatus = false
getgenv().TeamCheck = false

getgenv().Walkspeed = game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed
getgenv().Jumppower = game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower

getgenv().TPSpeed = 3
getgenv().TPWalk = false


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/MyUILib(Unamed).lua.txt"))()
local Window = Library:Create("BYSUSKHMER 1.3")

local ToggleGui = Instance.new("ScreenGui")
local Toggle = Instance.new("TextButton")

ToggleGui.Name = "ToggleGui_HE"
ToggleGui.Parent = game.CoreGui

Toggle.Name = "Toggle"
Toggle.Parent = ToggleGui
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 0
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 50, 0, 25)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "BYR"
Toggle.TextScaled = true
Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle.TextSize = 24.000
Toggle.TextXAlignment = Enum.TextXAlignment.Left
Toggle.Active = true
Toggle.Draggable = false
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end)

local HomeTab = Window:Tab("Home","rbxassetid://9405933234")
local PlayerTab = Window:Tab("Players","rbxassetid://9405933234")
local VisualTab = Window:Tab("Visuals","rbxassetid://9405933234")
local Tools = Window:Tab("Tools Player ","rbxassetid://9405933234")
local VIP = Window:Tab("Games List ","rbxassetid://9405933234")
local P = Window:Tab("Premium ","rbxassetid://9405933234")

HomeTab:Section("HitBox")

HomeTab:TextBox("Hitbox Size", function(value1)
    _G.HeadSize = value1
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

HomeTab:TextBox("Hitbox Size Invisible", function(value99)
    _G.HeadSize = value99
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 1
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

HomeTab:Button("Delete HitBox", function()
_G.HeadSize = 2.5
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 1
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

HomeTab:Keybind("Toggle UI", Enum.KeyCode.L, function()
    Library:ToggleUI()
end)

HomeTab:TextBox("Toggle Draggable false _ true", function(value200)
    Toggle.Draggable = value200
end)

HomeTab:Button("Window Library You Create", function()
local Window = Library:Create("You Creator")
end)

HomeTab:TextBox("local Library", function(value95)
    local Library = value95
end)

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

HomeTab:Button("5v5 MM2 Factory", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Murder%205vs5%20If%20Load%20Game"))()
end)


PlayerTab:TextBox("WalkSpeed", function(value2)
    getgenv().Walkspeed = value2
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

PlayerTab:TextBox("JumpPower", function(value3)
    getgenv().Jumppower = value3
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

PlayerTab:TextBox("TP Speed", function(value4)
getgenv().TPSpeed = value4
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

Tools:Button("Freeze All", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Script%20Freeze%20All%20Play"))()
end)

Tools:Button("UnFreeze All", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Script%20UnFreeze%20Play%20All"))()
end)

Tools:Button("Drop Tools ", function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Workspace
end)

Tools:Button("Char Bypass ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/ChatBypasser-AZY/main/Chat%20Bypass%20-%20ChatSplitter(Source).lua"))()
end)

Tools:Button("Keyboard  ", function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
end)

Tools:Button("Keyboard  2", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GGH52lan/GGH52lan/main/keyboard.txt"))()
end)

Tools:Button("Keyboard  Arceus X", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/Scripts/ArceusX-Keyboard.lua"))()
end)

Tools:Button("ShikLock  ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/shiftlock/main/shiftlock"))();
end)

Tools:Button("ShikLock  Arceus X", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/Arceus-X-NEO-public/main/Scripts/ArceusX-Shiftlock.lua"))()
end)

Tools:Button("Btools  ", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))();
end)

Tools:Button("Btools 2 ", function()
loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)

Tools:Button("infiniteyield  ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
end)

Tools:Button("Emote  ", function()
loadstring(game:HttpGet("https://pastebin.com/raw/eCpipCTH"))()
end)

Tools:Button("AimBot  ", function()
loadstring(game:HttpGet("https://rentry.co/n55gmtpi/raw", true))()
end)

Tools:Button("AimBot Arceus X", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SPDM-Team/ArceusX-V3-Scripts/main/ArceusX-Aimbot.lua", true))()
end)

Tools:Button(" Teleklnesis ", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Teleklnesis.md'),true))()
end)

Tools:Button(" Car Fly ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Script%20Fly%20Car"))()
end)

Tools:Button(" Tools TP ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Script%20Bysuskhmer%20click%20tp"))()
end)

Tools:Button(" Tools Invisible ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/-/main/Tools%20Invisible"))()
end)

Tools:Button(" Tools Xray And Cleno ", function()
loadstring(game:HttpGet("https://pastebin.com/raw/4w8DV8mM"))()
end)

Tools:Button(" Copy Ava ", function()
loadstring(game:HttpGet("https://pastebin.com/raw/0V6cHyuM"))()
end)

Tools:Button("Animation  ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end) 

Tools:Button("  Kill Player", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Kill%20player"))()
end)

Tools:Button(" Dex V3 ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

Tools:Button(" TP gui player ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/-/main/554417199373829%23-%23(%23)%C2%A3%C2%A3%3A%25%3B%3A%25%3A2(%40(%40)%23%2B%25(%3B%C2%A3%3A%C2%A3%3A%25(%25%3B%25%3B%C2%A3(%C2%A3((%C2%A3(%C2%A3/%2391717_83983%2B%23%2B%C2%A3(%2Ctp%20to%20play)"))()
end)

Tools:Button(" TP gui player v2", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Teleport%20Gui.lua'))()
end)

Tools:Button(" TP gui player v3", function()
loadstring(game:HttpGet('https://pastebin.com/raw/hHwTEuVN'))()
end)

Tools:Button(" Fps Show ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/sdluniversal/main/fpsviewer.lua"))()
end)

Tools:Button(" R15 TO R6", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/r15%20to%20r6.txt'),true))()
end)

Tools:Button("Auto Clicker", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/The-telligence/main/MC%20KSystem%202"))()
end)

VIP:InfoLabel("Game All")

VIP:Section("Survive The Killer ")

VIP:Button("Survive the killer", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua"))()
end)

VIP:Button("Survive the killer ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FOXTROXHACKS/ElToro/main/Hub.lua"))()
end)

VIP:Section("Brookhaven RP")

VIP:Button("Brokhaven PR", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JulHubz/JulHub/main/JulHub"))()
end)

VIP:Button("Brokhaven PR ", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/M1ZZ001/BrookhavenR4D/main/Brookhaven%20R4D%20Script'))()
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

VIP:Button("Blox Fruit ", function()
_G.Mode = "Eng"
loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/VectorHub/main/Loader.lua"))()
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

P:Section("BUY")

P:Button("Buy 88 Rbux", function()

end)

P:Section("Script Premium")

P:Button("Roblox Mod", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UhGbaaaa/Bysuskhmer-hub_411/main/Roblox%20Mod%20Fps"))()
end)