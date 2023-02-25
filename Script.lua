wait(2)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Angry Game Gui", "Sentinel")

--Main
local Tab = Window:NewTab("Main")
local MainSection = Tab:NewSection("Main")

MainSection:NewButton("Fly", "Press once, otherwise it may work poorly.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Angry9999/Fly/main/Fly?token=GHSAT0AAAAAAB7FSBAIQSVAXOHOH6OM4LSUY7Z66RQ'))()
end)

MainSection:NewToggle("SuperHuman", "Go fast and jump height", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.Walkspeed = 120
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.Walkspeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

MainSection:NewButton("Noclip", "Press once, otherwise it may work poorly.", function()
    local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
end)


--LOCALPLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "Change Walk Speed", 500, 16, function(s) -- 500 (MaxValue) | 16 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "Change Jump Power", 350, 50, function(s) -- 350 (MaxValue) | 50 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset Jump/Walk", "Reset All", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

--OTHER
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("Chat Spoofer", "Let's you chat for other people.", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Angry9999/ChatSpoofer/main/ChatSpoofer.lua?token=GHSAT0AAAAAAB7FSBAJEYL3JLGIT2WIC6T4Y72ADLQ'),true))()
end)
