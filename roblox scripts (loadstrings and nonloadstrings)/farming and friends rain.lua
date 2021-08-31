local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")


ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
Frame.Position = UDim2.new(0.170807406, 0, 0.116094977, 0)
Frame.Size = UDim2.new(0, 74, 0, 45)
Frame.Active = true
Frame.Visible = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
TextButton.Position = UDim2.new(0.165405393, 0, 0.147990644, 0)
TextButton.Size = UDim2.new(0, 48, 0, 30)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "On/Off"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Down:connect(function()
if game:GetService("ReplicatedStorage").RainStatus.Enabled.Value == true then
game:GetService("ReplicatedStorage").RainStatus.Enabled.Value = false
TextButton.BackgroundColor3 = Color3.new(255,0,0)
else
game:GetService("ReplicatedStorage").RainStatus.Enabled.Value = true
TextButton.BackgroundColor3 = Color3.new(0,255,0)
end
end)