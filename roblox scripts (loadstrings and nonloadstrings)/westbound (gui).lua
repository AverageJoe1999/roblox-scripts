if getgenv().TSLoaded then --> If not already loaded
    require(game:GetService("Players").LocalPlayer.PlayerScripts.NotificationModule)("ThisStuff is already loaded!", Color3.fromRGB(255, 0, 0), true, 3.2)
    return;
end

for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do --> bye bye error loggers <3
    v:Disable()
    game:GetService("ScriptContext").Error:Connect(function(...)
        local Arguments = {...}
        local Data, Data2 = pcall(function()
            return Arguments[3].Name
        end)
        if Data == false then
            return
        end
        v:Fire(...)
    end)
end

local Settings = {}
local Client = {}
local Notification = require(game:GetService("Players").LocalPlayer.PlayerScripts.NotificationModule);

local library = loadstring(game:HttpGet('https://cdn.thisstuff.xyz/Api/Library/Main'))()
local LocalCheats = library:CreateWindow("Local Cheats")
local CharacterCheats = library:CreateWindow("Character Cheats")

--[[
    //End
    Start of Setup
]]

do --> Lighting Manager (Full Bright)
    Client.Ambient = game:GetService("Lighting").Ambient
    for i,v in pairs(getconnections(game:GetService("Lighting").Changed)) do 
        v:Disable()
        game:GetService("Lighting").Changed:Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(255, 255, 255) and game:GetService("Lighting").Ambient ~= Client.Ambient then
                Client.Ambient = game:GetService("Lighting").Ambient
            end
        end)
    end
end

for i, v in next, getgc() do --> Client Setup
    if(type(v) == "function" and (not is_synapse_function(v) and islclosure(v)) and getfenv(v).script == game:GetService("ReplicatedStorage").SharedModules.Ragdoll) then
        local Constants = getconstants(v)
        if table.find(Constants, "FallingDown") then
            Client.EnableRagdoll = v
        elseif table.find(Constants, "GettingUp") then
            Client.DisableRagdoll = v
        end
    end
end

do
    local EnableRagdoll = Client.EnableRagdoll
    Client.EnableRagdoll = function(...)
        if Settings.NoRagdoll then
            return;
        end
        return EnableRagdoll(...)
    end
end

do --> Get Saved Settings
    local Success, Response = pcall(function()
        return game:GetService("HttpService"):JSONDecode(readfile("ThisStuff_2474168535.json"))
    end)

    if Success and type(Response) == "table" then
        for i, v in pairs(Response) do
            if i ~= "Settings" then
                Settings[i] = v
            end
        end
    end
end

--[[
    //End
    Start of Features
]]

LocalCheats:Toggle("Full Bright", function(Value)
    Settings.FullBright = Value
end)


CharacterCheats:Toggle("No Ragdoll", function(Value)
    Settings.NoRagdoll = Value
end)

CharacterCheats:Toggle("Auto Get Up", function(Value)
    Settings.AutoGetUp = Value
end)

CharacterCheats:Toggle("No Fall Damage", function(Value)
    Settings.NoFallDamage = Value
end)

--[[
    //End
    Start of things that make the script work
]]

spawn(function() --> No Ragdoll
    while wait(3) do
        if Settings.AutoGetUp and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Ragdolled.Value then
            game:GetService("Players").LocalPlayer.Character.Humanoid.PlatformStand = false
            Client.DisableRagoll(nil, game.Players.LocalPlayer)
        end
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if Settings.FullBright == true then
        game:GetService("Lighting").Ambient = Color3.fromRGB(255, 255, 255)
    else
        game:GetService("Lighting").Ambient = Client.Ambient
    end
end)

local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if not checkcaller() and method == "Kick" or method == "CFrame" then
        return "https://www.youtube.com/watch?v=PayvWj2piKg"
    end
    if self.Name == "ChangeCharacter" and (Settings.NoFallDamage and args[1] == "Damage" and args[2] ~= 10000) or (Settings.NoRagdoll and args[1] == "Ragdoll") then
        return;
    end
    return old(self, ...)
end)

do
    Notification("Made by TotallyNotHacks", Color3.fromRGB(0, 255, 0), true, 4);
    Notification("Report any bugs to me", Color3.fromRGB(255, 0, 0), true, 4);
end

spawn(function() --> Save Settings
    while wait(10) do
        writefile("ThisStuff_2474168535.json", game:GetService("HttpService"):JSONEncode(Settings))
    end
end)