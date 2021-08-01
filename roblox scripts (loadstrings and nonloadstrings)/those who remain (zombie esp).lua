function ForSurface(insi, name)
    local Surface = Instance.new("BillboardGui")
    Surface.AlwaysOnTop = true
    Surface.Enabled = true
    Surface.LightInfluence = 1
    Surface.Name = "SurfBoard"
    Surface.Size = UDim2.new(36,0,12,0)
    Surface.Parent = insi
    Surface.Active = true
    
    -- // Frame
    
    local Frame = Instance.new("Frame")
    Frame.BackgroundColor3 = Color3.fromRGB(0,255,0) ~~ change the "(0,255,0)" to any color code, by default its light green
    Frame.Parent = Surface
    Frame.BackgroundTransparency = 0.8
    Frame.BorderSizePixel = 0
    Frame.Visible = true
    Frame.Size = UDim2.new(0.158,0,0.704,0)
    Frame.Position = UDim2.new(0.421,0,0.19,0)

    local TypeOfZombiesName = Instance.new("TextLabel")
    TypeOfZombiesName.Position = UDim2.new(0.421,0,-0.22,0)
    TypeOfZombiesName.Size = UDim2.new(0.158,0,0.704,0)
    TypeOfZombiesName.Text = name
    TypeOfZombiesName.Parent = Surface
    TypeOfZombiesName.BackgroundTransparency = 1
    TypeOfZombiesName.TextColor3 = Color3.new(255,255,255)
    TypeOfZombiesName.TextSize = 17
    TypeOfZombiesName.TextScaled = true
end


for _,v in pairs(game.workspace.Entities.Infected:GetDescendants()) do
    if v.Name == "HumanoidRootPart" then
        ForSurface(v, v.Parent.Name)
    end
end
-- // yes chupapi munyayo daddy
game.workspace.Entities.Infected.DescendantAdded:Connect(function(yes)
    if string.find(yes.Name, "HumanoidRootPart") then
        ForSurface(yes, yes.Parent.Name)
    end
end)
