--[[Scripted by] RobloxSbScripter]]


local player = game:GetService("Players").LocalPlayer or owner or game:GetService("Players"):WaitForChild("Player")
player.Character:WaitForChild("Humanoid")


local folder = Instance.new("Folder", game:GetService("Workspace"))
folder.Name = "RobloxSbScripter's Orb"

local part = Instance.new("Part")

local function res()
part.Parent = folder
part.Shape = "Ball"
part.FormFactor = "Custom"
part.Size = Vector3.new(1,1,1)
part.Name = "Orb"
part.Anchored = true
part.Locked = true
part.CanCollide = false
part.BottomSurface = "Smooth"
part.TopSurface = "Smooth"	
part.BrickColor = BrickColor.White()
end
