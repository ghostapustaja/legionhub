local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hide and Seek Extreme", "BloodTheme")

local Tab = Window:NewTab("Main")
local Tab2 = Window:NewTab("Credits")
local Section = Tab:NewSection("Main")
local CreditsSection = Tab2:NewSection("Credits")
Section:NewButton("TP outside Map", "simple tp script", function()
    local oh1 = CFrame.new(321.9994201660156, 158.69996643066406, -21.85126495361328)
local oh2 = game:GetService("Players")
local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart

oh3.CFrame = oh1
end)

Section:NewButton("Unnamed ESP", "not by me btw", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'),true))()
end)

Section:NewLabel("Send suggestions at legion-dev.nolt.io")
CreditsSection:NewLabel("Dev: OofLandYT on V3rm - Legion on discord")
CreditsSection:NewLabel("UI Library: xHeptc (Kavo UI Library)")
CreditsSection:NewLabel("Unnamed ESP: ic3w0lf")