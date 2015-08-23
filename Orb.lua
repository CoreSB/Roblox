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

res()

game:GetService("Workspace").DescendantRemoving:connect(function(v)
if v == folder then
folder = Instance.new("Folder")
folder.Name = "RobloxSbScripter's Orb"
part = Instance.new("Part")
folder.Parent = game:GetService("Workspace")
res()	
end
end)

local point

local loop = coroutine.create(function()
while true do
for i=1,360,4 do
if player.Character and not point then
point = player.Character:FindFirstChild("Torso")	
end
if point.Parent.Name == player.Character.Name then
point = player.Character:FindFirstChild("Torso")	
end
if part then
part.CFrame =  CFrame.new(point.CFrame.p)   *CFrame.fromEulerAnglesXYZ(-math.sin(math.rad(i)),math.rad(i),0) *CFrame.new(0,7,-5)end
wait()
end
end
end)


