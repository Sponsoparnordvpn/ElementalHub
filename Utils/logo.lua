local Logo = {}
function Logo:Init()
local ElementalHub = Instance.new("ScreenGui")
local logo = Instance.new("ImageLabel")
ElementalHub.Name = "ElementalHub"
ElementalHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ElementalHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
logo.Name = "logo"
logo.Parent = ElementalHub
logo.AnchorPoint = Vector2.new(0.5, 0.5)
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1.000
logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
logo.BorderSizePixel = 0
logo.Position = UDim2.new(0.5, 0, 0.5, 0)
logo.Size = UDim2.new(0, 100, 0, 100)
logo.Image = "http://www.roblox.com/asset/?id=17252402050"
logo.ImageTransparency = 1.000
local TweenService = game:GetService("TweenService")
local function FadeOut()
	local LogoTweenInfo = TweenInfo.new(1.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out)
	local goal = {
		ImageTransparency = 0,
	}
	local fadeTween = TweenService:Create(logo, LogoTweenInfo, goal)


	return fadeTween
end
local function FadeIn()
	local LogoTweenInfo = TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out)
	local goal = {
		ImageTransparency = 1,
	}
	local fadeTween = TweenService:Create(logo, LogoTweenInfo, goal)


	return fadeTween
end
local Old = FadeOut()
Old:Play()
Old.Completed:Connect(function()
	wait(2)
	print("done tweenin")
	local New = FadeIn()
	New:Play()
	New.Completed:Wait()
	return "Tweened GUI succesfully"
end)
end
Logo:Init()
