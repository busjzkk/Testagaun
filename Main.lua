local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "small hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "small hub",
   LoadingSubtitle = "by smallname2",
   ShowText = "small hub", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

   -- ScriptID = "sid_xxxxxxxxxxxx", -- Your Script ID from developer.sirius.menu — enables analytics, managed keys, and script hosting

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "small hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "VxzJqcMs4G", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})

local Tab = Window:CreateTab("universals", 4483362458) -- Title, Image

local Section = Tab:CreateSection("universals")

local Button = Tab:CreateButton({
   Name = "Infinite yeild",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "flight",
   Callback = function()
      --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "noclip",
   Callback = function()
      --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local noclip = false


local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.1, 0)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local creditLabel = Instance.new("TextLabel")
creditLabel.Size = UDim2.new(1, 0, 0.3, 0)
creditLabel.Text = "Credits to: Imaginalexiss"
creditLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
creditLabel.BackgroundTransparency = 1
creditLabel.Parent = frame

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0.8, 0, 0.3, 0)
toggleButton.Position = UDim2.new(0.1, 0, 0.4, 0)
toggleButton.Text = "Toggle Noclip"
toggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
toggleButton.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
toggleButton.Parent = frame

toggleButton.MouseButton1Click:Connect(function()
    noclip = not noclip
    if noclip then
        toggleButton.Text = "Noclip: ON"
        toggleButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
    else
        toggleButton.Text = "Noclip: OFF"
        toggleButton.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
    end
end)

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.8, 0, 0.3, 0)
closeButton.Position = UDim2.new(0.1, 0, 0.75, 0)
closeButton.Text = "Close"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

RunService.Stepped:Connect(function()
    if noclip and character then
        for _, v in pairs(character:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide then
                v.CanCollide = false
            end
        end
    end
end)

   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "speed changer",
   Callback = function()
      --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrScripterrFr/Speed-Changer/main/Speed%20Changer"))();
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "hitbox expander",
   Callback = function()
      --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- leave a like pls


_G.HeadSize = 50
_G.Disabled = true
 
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
   -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("tsb", 4483362458) -- Title, Image

local Section = Tab:CreateSection("tsb")

local Button = Tab:CreateButton({
   Name = "Vexonhub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/DiosDi/VexonHub/refs/heads/main/VexonHub"))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "tsb good script",
   Callback = function()
      --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://github.com/1dontgiveaf/NSExpression/raw/main/script.lua", true))()
   -- The function that takes place when the button is pressed
   end,
})
