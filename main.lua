local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

local atms = workspace.ATMs:GetChildren()

while true do
	for i, atm in pairs(atms) do
		
		if atm:FindFirstChild("RobPart") then
			
			-- teleport للصرافة
			hrp.CFrame = atm.RobPart.CFrame + Vector3.new(0,3,0)
			
			wait(1)
			
			-- محاولة السرقة
			fireproximityprompt(atm.RobPart.ProximityPrompt)
			
			wait(3)
		end
		
	end
end
