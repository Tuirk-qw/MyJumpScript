local UIS = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer

UIS.JumpRequest:Connect(function()
    local Character = Player.Character
    if Character and Character:FindFirstChild("HumanoidRootPart") then
        -- دفع اللاعب للأعلى يدوياً بدلاً من طلب قفزة رسمية
        Character.HumanoidRootPart.Velocity = Vector3.new(0, 50, 0)
    end
end)
