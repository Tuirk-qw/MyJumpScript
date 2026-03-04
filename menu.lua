local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com"))()
local Window = Library.CreateLib("💰 BlockSpin | كاسر الحماية & التفريم", "Midnight")

-- تبويب التفريم التلقائي
local FarmTab = Window:NewTab("تجميع المال")
local FarmSection = FarmTab:NewSection("خيارات التفريم")

FarmSection:NewToggle("تجميع تلقائي (Auto E)", "يضغط E تلقائياً للعمل والجمع", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
        task.wait(0.3) -- سرعة الضغط التلقائي
    end
end)

-- تبويب كسر حماية اللاعب
local PlayerTab = Window:NewTab("تعديلات اللاعب")
local PlayerSection = PlayerTab:NewSection("كسر حماية الحركة")

PlayerSection:NewSlider("السرعة الخارقة", "تعديل السرعة مع كسر الحماية", 500, 16, function(s)
    local Hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    Hum.WalkSpeed = s
    -- كود منع الحماية من تصفير السرعة
    Hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if Hum.WalkSpeed ~= s then Hum.WalkSpeed = s end
    end)
end)

PlayerSection:NewToggle("قفز لانهائي (طيران)", "يسمح بالقفز المتكرر في الهواء", function(state)
    _G.InfJump = state
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if _G.InfJump then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)
end)

-- كود هدية سريع
FarmSection:NewButton("احصل على 500$ مجاناً", "استخدام كود الترحيب", function()
    game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("W7C28D")
end)
