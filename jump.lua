-- كود تخطي حماية ماب بلوكسبين (Bypass)
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

-- إجبار القيم لتخطي نظام الحماية (Force Override)
if Character:FindFirstChildOfClass("Humanoid") then
    local Hum = Character:FindFirstChildOfClass("Humanoid")
    Hum.JumpPower = 120 -- زيادة قوة القفز
    Hum.UseJumpPower = true
end

-- تفعيل القفز اللانهائي بطريقة غير مكشوفة
game:GetService("UserInputService").JumpRequest:Connect(function()
    if Character:FindFirstChildOfClass("Humanoid") then
        Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

print("✅ تم كسر الحماية وتفعيل السكربت بنجاح!")

