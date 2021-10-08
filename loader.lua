local BloxWheels = Instance.new("TextButton")
local loader = Instance.new("Frame")

local loader2 = Instance.new("Frame")

BloxWheels.Name = "Onetap V1 | Credit to danix for loader ui :)"

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

	loadstring(game:HttpGet("https://raw.githubusercontent.com/luciouss/onetap/main/onetap.lua?token=ATXY5SMS7YKD4YHM63OIUXTBMDM6Q", true))()
    loader.Visible = false
    
end)
