local UIS = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer

UIS.JumpRequest:Connect(function()
    local Character = Player.Character
    if Character and Character:FindFirstChild("HumanoidRootPart") then
        -- يمكنك تغيير الرقم 50 لزيادة قوة القفزة
        Character.HumanoidRootPart.Velocity = Vector3.new(0, 50, 0)
    end
end)
