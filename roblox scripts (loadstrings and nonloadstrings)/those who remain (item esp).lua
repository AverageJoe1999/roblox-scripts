-- // Modify here (kind of useless lolololol)
local idk = {
Transparency = 0.4,
Colors = Color3.fromRGB(1, 0, 0.0156863)
}
-- ^
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


local TypeOfZombiesName = Instance.new("TextLabel")
TypeOfZombiesName.Position = UDim2.new(0.421,0,-0.22,0)
TypeOfZombiesName.Size = UDim2.new(0.158,0,0.704,0)
TypeOfZombiesName.Text = name
TypeOfZombiesName.Parent = Surface
TypeOfZombiesName.BackgroundTransparency = 1
TypeOfZombiesName.TextColor3 = Color3.new(255,255,255)
TypeOfZombiesName.TextSize = 17
TypeOfZombiesName.TextScaled = true
TypeOfZombiesName.Font = Enum.Font.SourceSansItalic
end

function makeChasm(ins, e, er)
local Chasm = Instance.new("BoxHandleAdornment")
Chasm.Transparency =idk.Transparency
Chasm.Adornee = e
Chasm.AlwaysOnTop = true
Chasm.Parent = ins
Chasm.Size = er
Chasm.ZIndex = 1
Chasm.Color3 = idk.Colors
end

for _,v in pairs(game.workspace.Ignore.Items:GetDescendants()) do
if v.Name == "Box" then
    ForSurface(v, v.Parent.Name)
    makeChasm(v, v, v.Size)
end
end
-- // yes chupapi munyayo daddy
game.workspace.Ignore.Items.DescendantAdded:Connect(function(yes)
if string.find("Box", yes.Name) then
    ForSurface(yes, yes.Parent.Name)
end
end)

while wait() do
for i,v in pairs(game.workspace.Ignore.Items:GetDescendants()) do
    if v.Name == "Box" and v:IsA"MeshPart" then
        v:WaitForChild("SurfBoard"):Destroy()
        v:WaitForChild("BoxHandleAdornment"):Destroy()
    end
end
end
