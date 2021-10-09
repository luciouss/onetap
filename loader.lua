-- onetap v2 roblox loader :)

-- made by Danix#9696 :D



local ballzinyourjaws = Instance.new("ScreenGui")

local loader = Instance.new("Frame")

local loader2 = Instance.new("Frame")

local exit = Instance.new("TextButton")

local UIGradient = Instance.new("UIGradient")

local ScrollingFrame = Instance.new("ScrollingFrame")

local BloxWheels = Instance.new("TextButton")

local CheatLabelText = Instance.new("TextLabel")

print("loading...")

-- e:

ballzinyourjaws.Name = "ballzinyourjaws"

ballzinyourjaws.Parent = game.CoreGui

ballzinyourjaws.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

loader.Name = "Onetap V2 Loader"

loader.Parent = ballzinyourjaws

loader.BackgroundColor3 = Color3.fromRGB(53, 53, 53)

loader.BackgroundTransparency = 0.150

loader.BorderColor3 = Color3.fromRGB(67, 67, 67)

loader.BorderSizePixel = 2

loader.Position = UDim2.new(0.380650282, 0, 0.376687109, 0)

loader.Size = UDim2.new(0, 300, 0, 220)

loader2.Name = "loader2"

loader2.Parent = loader

loader2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

loader2.BorderColor3 = Color3.fromRGB(0, 0, 0)

loader2.BorderSizePixel = 0

loader2.Position = UDim2.new(0.0180760473, 0, 0.0199463461, 0)

loader2.Size = UDim2.new(0, 290, 0, 212)

exit.Name = "exit"

exit.Parent = loader2

exit.BackgroundColor3 = Color3.fromRGB(63, 63, 63)

exit.BorderColor3 = Color3.fromRGB(50, 50, 50)

exit.Position = UDim2.new(0.223000139, 0, 0.76886791, 0)

exit.Size = UDim2.new(0, 159, 0, 34)

exit.Font = Enum.Font.SourceSans

exit.Text = "Exit"

exit.TextColor3 = Color3.fromRGB(255, 255, 255)

exit.TextSize = 24.000

exit.TextStrokeColor3 = Color3.fromRGB(93, 93, 93)

exit.TextStrokeTransparency = 0.000

exit.TextWrapped = true

exit.MouseButton1Click:Connect(function()

	rbar.Visible = false	wait(0.1)

	loader2.Visible = false

	wait(0.2)

	loader.Visible = false

end)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.97, Color3.fromRGB(70, 70, 70)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}

UIGradient.Rotation = 90

UIGradient.Parent = exit

ScrollingFrame.Parent = loader2

ScrollingFrame.Active = true

ScrollingFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

ScrollingFrame.BorderColor3 = Color3.fromRGB(131, 131, 131)

ScrollingFrame.Position = UDim2.new(0.0275861025, 0, 0.0518868491, 0)

ScrollingFrame.Size = UDim2.new(0, 272, 0, 137)

ScrollingFrame.ScrollBarThickness = 6

BloxWheels.Name = "BloxWheels"

BloxWheels.Parent = ScrollingFrame

BloxWheels.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

BloxWheels.BackgroundTransparency = 1.000

BloxWheels.BorderSizePixel = 0

BloxWheels.Position = UDim2.new(0.075000003, 0, 0.250999987, 0)

BloxWheels.Size = UDim2.new(0, 59, 0, 23)

BloxWheels.Font = Enum.Font.SourceSans

BloxWheels.Text = "Load"

BloxWheels.TextColor3 = Color3.fromRGB(255, 255, 255)

BloxWheels.TextSize = 18.000

BloxWheels.TextStrokeColor3 = Color3.fromRGB(104, 104, 104)

BloxWheels.TextStrokeTransparency = 0.600

BloxWheels.MouseButton1Click:Connect(function()

	loadstring(game:HttpGet("https://raw.githubusercontent.com/Danixik/loader/main/bloxwheels", true))()

	loader.Visible = false

end)

CheatLabelText.Name = "CheatLabelText"

CheatLabelText.Parent = loader2

CheatLabelText.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

CheatLabelText.BorderColor3 = Color3.fromRGB(0, 0, 0)

CheatLabelText.BorderSizePixel = 0

CheatLabelText.Position = UDim2.new(0.0469999984, 0, 0.0179999992, 0)

CheatLabelText.Size = UDim2.new(0, 45, 0, 14)

CheatLabelText.Font = Enum.Font.Code

CheatLabelText.Text = "Cheat"

CheatLabelText.TextColor3 = Color3.fromRGB(255, 255, 255)

CheatLabelText.TextSize = 15.000

CheatLabelText.TextStrokeTransparency = 0.850

	script.Parent.MouseLeave:Connect(function()

		script.Parent.TextColor3 = Color3.new(255, 255, 255)

	end)

coroutine.wrap(XZMMI_fake_script)()

local function QDDLCMZ_fake_script() -- BloxWheels.StormyButtonScript 

	local script = Instance.new('LocalScript', BloxWheels)
 print("loaded")
