local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Fishing Simulator", "DarkTheme")
local UtilityTab = Window:NewTab("Utility")
local AutoTab = Window:NewTab("Autofarm")
local TPTab = Window:NewTab("Teleports")
local UtilitySection = UtilityTab:NewSection("Utility")
local AutoSection = AutoTab:NewSection("Autofarm")
local TPSection = TPTab:NewSection("Teleports")


--UTILITY SECTION--

UtilitySection:NewSlider("Boat speed", "Boat speed", 1000, 1, function(Value)
    for i, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == (game.Players.LocalPlayer.Name .. "'s Boat") then
             v.Controller.VehicleSeat.MaxSpeed = tonumber(Value)
end
end
end)



--AUTOFARM SECTION--

AutoSection:NewLabel("btw throw ur rod into the water first lol for fish farm")

AutoSection:NewToggle("Start Fish Farm", "Toggles the auto catch fish", function(v) -- CREATES THE START / STOP TOGGLE
    getgenv().autofarmfish = v
    while wait() do -- INFINITE LOOP
        if getgenv().autofarmfish == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.FishCaught:FireServer()
                wait(2) -- WAIT SO WE DONT CRASH
            end
end)


AutoSection:NewToggle("Auto Sell", "sells ur inv", function(g) -- CREATES THE START / STOP TOGGLE
    getgenv().autosell = g
    while wait() do -- INFINITE LOOP
        if getgenv().autosell == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
local ohString1 = "SellEverything"

game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.processGameItemSold:InvokeServer(ohString1)
                wait(5) -- WAIT SO WE DONT CRASH
            end
end)

AutoSection:NewLabel("Upgrades")

AutoSection:NewToggle("Auto Upgrade Hookspeed", "upgrades hookspeed", function(g) -- CREATES THE START / STOP TOGGLE
    getgenv().hookspeed = g
    while wait() do -- INFINITE LOOP
        if getgenv().hookspeed == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
local ohString1 = "Upgrade"
local ohString2 = "finnsSuppliesShop"
local ohString3 = "Rods"
local ohString4 = ""
local ohTable5 = {
	["isMerchant"] = false,
	["statName"] = "Hook Speed"
}

game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.processGameItemPurchase:InvokeServer(ohString1, ohString2, ohString3, ohString4, ohTable5)
wait(5) -- WAIT SO WE DONT CRASH
            end
end)

AutoSection:NewToggle("Auto Upgrade Reelingspeed", "upgrades reeling speed", function(g) -- CREATES THE START / STOP TOGGLE
    getgenv().reelingspeed = g
    while wait() do -- INFINITE LOOP
        if getgenv().reelingspeed == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
local ohString1 = "Upgrade"
local ohString2 = "finnsSuppliesShop"
local ohString3 = "Rods"
local ohString4 = ""
local ohTable5 = {
	["isMerchant"] = false,
	["statName"] = "Reeling Speed"
}

game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.processGameItemPurchase:InvokeServer(ohString1, ohString2, ohString3, ohString4, ohTable5)
                wait(5) -- WAIT SO WE DONT CRASH
            end
end)


AutoSection:NewToggle("Auto Upgrade Strength", "upgrades strength", function(g) -- CREATES THE START / STOP TOGGLE
    getgenv().strengthup = g
    while wait() do -- INFINITE LOOP
        if getgenv().strengthup == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
local ohString1 = "Upgrade"
local ohString2 = "finnsSuppliesShop"
local ohString3 = "Rods"
local ohString4 = ""
local ohTable5 = {
	["isMerchant"] = false,
	["statName"] = "Strength"
}

game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.processGameItemPurchase:InvokeServer(ohString1, ohString2, ohString3, ohString4, ohTable5)
                wait(5) -- WAIT SO WE DONT CRASH
            end
end)

--TELEPORTS


TPSection:NewButton("Port Jackson", "ButtonInfo", function()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(6, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-21.90979766845703, 54.56202697753906, -95.41088104248047)}):Play()
end)

TPSection:NewButton("Eruption Island", "ButtonInfo", function()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(6, Enum.EasingStyle.Linear)
    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(3019.671875, 52.215858459472656, 1323.867431640625)}):Play()
end)

TPSection:NewButton("Shadow Isles", "ButtonInfo", function()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(6, Enum.EasingStyle.Linear)
    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(2196.866455078125, 43.339698791503906, -2216.48583984375)}):Play()
end)

TPSection:NewButton("Monster's Borough", "ButtonInfo", function()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(6, Enum.EasingStyle.Linear)
    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-3211.9047851562, 41.850345611572, 2735.306640625)}):Play()
end)

TPSection:NewButton("Pharaoh's Dunes", "ButtonInfo", function()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(6, Enum.EasingStyle.Linear)
    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-4142.74609375, 46.71378326416, 262.05679321289)}):Play()
end)


TPSection:NewButton("Ancient Shores", "ButtonInfo", function()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(6, Enum.EasingStyle.Linear)
    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-2436.431640625, 43.564971923828, -1683.4526367188)}):Play()
end)


