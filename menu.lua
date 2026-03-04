local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

local Window = Rayfield:CreateWindow({
   Name = "🚀 BlockSpin | قائمة الاختراق المطور",
   LoadingTitle = "جاري كسر الحماية...",
   LoadingSubtitle = "بواسطة مطورك الشخصي",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "MyScripts",
      FileName = "BlockSpinHub"
   }
})

-- تبويب اللاعب
local PlayerTab = Window:CreateTab("🏃 اللاعب", 4483362458) 

PlayerTab:CreateSlider({
   Name = "السرعة الخارقة",
   Range = {16, 500},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "SpeedSlider",
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

PlayerTab:CreateToggle({
   Name = "قفز لانهائي (طيران)",
   CurrentValue = false,
   Flag = "InfJump",
   Callback = function(Value)
      _G.InfJump = Value
      game:GetService("UserInputService").JumpRequest:Connect(function()
          if _G.InfJump then
              game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
          end
      end)
   end,
})

-- تبويب التفريم التلقائي
local FarmTab = Window:CreateTab("💰 تفريم تلقائي", 4483362458)

FarmTab:CreateToggle({
   Name = "تفريم المال التلقائي",
   CurrentValue = false,
   Flag = "AutoFarm",
   Callback = function(Value)
      _G.AutoFarm = Value
      while _G.AutoFarm do
         -- كود محاكاة الضغط للتجميع
         game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
         task.wait(0.5)
      end
   end,
})

-- تبويب الإضافات
local ExtraTab = Window:CreateTab("🛡️ إضافات", 4483362458)

ExtraTab:CreateButton({
   Name = "كشف أماكن اللاعبين (ESP)",
   Callback = function()
      -- كود بسيط لإظهار أسماء اللاعبين عبر الجدران
      for _, v in pairs(game.Players:GetPlayers()) do
         if v.Name ~= game.Players.LocalPlayer.Name then
            local BillboardGui = Instance.new("BillboardGui", v.Character.Head)
            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
            BillboardGui.AlwaysOnTop = true
            local TextLabel = Instance.new("TextLabel", BillboardGui)
            TextLabel.Text = v.Name
            TextLabel.Size = UDim2.new(1, 0, 1, 0)
            TextLabel.TextColor3 = Color3.new(1, 0, 0)
         end
      end
   end,
})

Rayfield:Notify({
   Title = "تم التفعيل!",
   Content = "استمتع بالسكربت المطور يا بطل",
   Duration = 5,
   Image = 4483362458,
})
