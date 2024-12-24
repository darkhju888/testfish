Library = {}

local function Tw(info)
	local Value = info.vu or info.Value or info.value or info.Vu or info.v or info.u
	local Time = info.Time or info.t or info.T or 0
	local Style = info.Style or info.style or info.Sty or info.sty or info.s or info.S or "Linear"
	local Direction = info.Direction or info.direction or info.d or info.D or info.Drt or info.drt or info.dt or info.Dt or "Out"
	local Goal = info.Goal or info.goal or info.go or info.Go or info.G or info.g

	return game:GetService("TweenService"):Create(Value,TweenInfo.new(Time,Enum.EasingStyle[Style],Enum.EasingDirection[Direction]),Goal)
end

local function lak(a)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
		local Tween = game:GetService("TweenService"):Create(a, TweenInfo.new(0.3), {Position = pos})
		Tween:Play()
	end

	a.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = input.Position
			StartPosition = a.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)

	a.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			DragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == DragInput and Dragging then
			Update(input)
		end
	end)
end

local function infolib(tbl, key)
	local lowerKey = string.lower(key)
	for k, v in pairs(tbl) do
		if string.lower(k) == lowerKey then
			return v
		end
	end
	for k, v in pairs(tbl) do
		if string.find(string.lower(k), lowerKey) then
			return v
		end
	end
	return nil
end

local Synack = Instance.new("ScreenGui")

Synack.Name = "Synack"
Synack.Parent = not game:GetService("RunService"):IsStudio() and game:GetService("CoreGui") or game:GetService("Players").LocalPlayer.PlayerGui

function Library:CreateWindow(info)

	local NameHub = infolib(info, "name") or infolib(info, "title")
	local Icon = infolib(info, "logo") or infolib(info, "icon")
	
	local Shadow = Instance.new("ImageLabel")

	Shadow.Name = "Shadow"
	Shadow.Parent = Synack
	Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow.BackgroundTransparency = 1.000
	Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	Shadow.Size = UDim2.new(0, 463,0, 360)
	Shadow.ZIndex = -5
	Shadow.Image = "rbxassetid://1316045217"
	Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Shadow.ScaleType = Enum.ScaleType.Slice
	Shadow.SliceCenter = Rect.new(10, 10, 118, 118)
	Shadow.ImageTransparency = 0.2
	
	local CloseUI = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local Status_1 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local TextHub_1 = Instance.new("Frame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local Day_1 = Instance.new("TextLabel")
	local Fps_1 = Instance.new("TextLabel")
	local Discord_1 = Instance.new("TextLabel")
	local Icon_1 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local ImageLabel_1 = Instance.new("ImageLabel")
	local Click_1 = Instance.new("TextButton")

	CloseUI.Name = "CloseUI"
	CloseUI.Parent = Synack
	CloseUI.AnchorPoint = Vector2.new(0, 1)
	CloseUI.BackgroundColor3 = Color3.fromRGB(22,22,22)
	CloseUI.BorderColor3 = Color3.fromRGB(0,0,0)
	CloseUI.BorderSizePixel = 0
	CloseUI.Position = UDim2.new(0.00999999978, 0,0.99000001, 0)
	CloseUI.Size = UDim2.new(0, 50,0, 50)

	UICorner_1.Parent = CloseUI
	UICorner_1.CornerRadius = UDim.new(1,0)

	Status_1.Name = "Status"
	Status_1.Parent = CloseUI
	Status_1.AnchorPoint = Vector2.new(0, 0.5)
	Status_1.BackgroundColor3 = Color3.fromRGB(42,42,42)
	Status_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Status_1.BorderSizePixel = 0
	Status_1.Position = UDim2.new(0.300000161, 0,0.5, 0)
	Status_1.Size = UDim2.new(0, 182,0, 40)

	UICorner_2.Parent = Status_1
	UICorner_2.CornerRadius = UDim.new(1,0)

	TextHub_1.Name = "TextHub"
	TextHub_1.Parent = Status_1
	TextHub_1.AnchorPoint = Vector2.new(0, 0.5)
	TextHub_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	TextHub_1.BackgroundTransparency = 1
	TextHub_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TextHub_1.BorderSizePixel = 0
	TextHub_1.Position = UDim2.new(0.219999999, 0,0.5, 0)
	TextHub_1.Size = UDim2.new(0, 45,0, 45)

	UIListLayout_1.Parent = TextHub_1
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

	Day_1.Name = "Day"
	Day_1.Parent = TextHub_1
	Day_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Day_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Day_1.BackgroundTransparency = 1
	Day_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Day_1.BorderSizePixel = 0
	Day_1.LayoutOrder = 1
	Day_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
	Day_1.Size = UDim2.new(0, 63,0, 10)
	Day_1.Font = Enum.Font.SourceSansBold
	Day_1.Text = os.date("%A %d %B %Y")
	Day_1.TextColor3 = Color3.fromRGB(255,255,255)
	Day_1.TextSize = 10
	Day_1.TextXAlignment = Enum.TextXAlignment.Left

	Fps_1.Name = "Fps"
	Fps_1.Parent = TextHub_1
	Fps_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Fps_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Fps_1.BackgroundTransparency = 1
	Fps_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Fps_1.BorderSizePixel = 0
	Fps_1.Position = UDim2.new(0.248750001, 0,0.0644999966, 0)
	Fps_1.Size = UDim2.new(0, 63,0, 10)
	Fps_1.Font = Enum.Font.SourceSansBold
	Fps_1.Text = "FPS : 999"
	Fps_1.TextColor3 = Color3.fromRGB(255,255,255)
	Fps_1.TextSize = 10
	Fps_1.TextTransparency = 0.30000001192092896
	Fps_1.TextXAlignment = Enum.TextXAlignment.Left
	
	local fps = 0
	local lastTime = tick()
	
	game:GetService("RunService").RenderStepped:Connect(function()
		local currentTime = tick()
		local deltaTime = currentTime - lastTime
		lastTime = currentTime
		fps = 1 / deltaTime
		Fps_1.Text = "FPS : "..string.format("%.0f", fps)
	end)
	
	Discord_1.Name = "Discord"
	Discord_1.Parent = TextHub_1
	Discord_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Discord_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Discord_1.BackgroundTransparency = 1
	Discord_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Discord_1.BorderSizePixel = 0
	Discord_1.LayoutOrder = 1
	Discord_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
	Discord_1.Size = UDim2.new(0, 63,0, 10)
	Discord_1.Font = Enum.Font.SourceSansBold
	Discord_1.Text = "https://discord.gg/themoodeng"
	Discord_1.TextColor3 = Color3.fromRGB(92, 225, 230)
	Discord_1.TextSize = 10
	Discord_1.TextXAlignment = Enum.TextXAlignment.Left

	Icon_1.Name = "Icon"
	Icon_1.Parent = CloseUI
	Icon_1.BackgroundColor3 = Color3.fromRGB(22,22,22)
	Icon_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Icon_1.BorderSizePixel = 0
	Icon_1.Size = UDim2.new(0, 50,0, 50)

	UICorner_3.Parent = Icon_1
	UICorner_3.CornerRadius = UDim.new(1,0)

	ImageLabel_1.Parent = Icon_1
	ImageLabel_1.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ImageLabel_1.BackgroundTransparency = 1
	ImageLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ImageLabel_1.BorderSizePixel = 0
	ImageLabel_1.Position = UDim2.new(0.5, 0,0.5, 0)
	ImageLabel_1.Size = UDim2.new(0, 45,0, 45)
	if type(Icon) == 'string' and not Icon:find('rbxassetid://') then
		ImageLabel_1.Image = "rbxassetid://".. Icon
	elseif type(Icon) == 'number' then
		ImageLabel_1.Image = "rbxassetid://".. Icon
	else
		ImageLabel_1.Image = Icon
	end

	Click_1.Name = "Click"
	Click_1.Parent = Icon_1
	Click_1.Active = true
	Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Click_1.BackgroundTransparency = 1
	Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Click_1.BorderSizePixel = 0
	Click_1.Size = UDim2.new(1, 0,1, 0)
	Click_1.Font = Enum.Font.SourceSans
	Click_1.Text = ""
	Click_1.TextSize = 14
	
	local Background_1 = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local Line_1 = Instance.new("Frame")
	local Hub_1 = Instance.new("Frame")
	local UIListLayout_6 = Instance.new("UIListLayout")
	local Logo_1 = Instance.new("ImageLabel")
	
	Background_1.Name = "Background"
	Background_1.Parent = Shadow
	Background_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Background_1.BackgroundColor3 = Color3.fromRGB(18,18,18)
	Background_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Background_1.BorderSizePixel = 0
	Background_1.Position = UDim2.new(0.5, 0,0.5, 0)
	Background_1.Size = UDim2.new(0.97, 0,0.97, 0)
	Background_1.ClipsDescendants = true
	
	local ShadowInside = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local UICorner = Instance.new("UICorner")

	ShadowInside.Name = "ShadowInside"
	ShadowInside.Parent = Background_1
	ShadowInside.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	ShadowInside.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ShadowInside.BorderSizePixel = 0
	ShadowInside.Size = UDim2.new(1, 0, 1, 0)
	ShadowInside.ZIndex = 2

	UIGradient.Rotation = 90
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.70, 1.00), NumberSequenceKeypoint.new(1.00, 0.20)}
	UIGradient.Parent = ShadowInside

	UICorner.CornerRadius = UDim.new(0, 10)
	UICorner.Parent = ShadowInside
	
	local LoadFrame = Instance.new("Frame")
	local Logo = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")

	LoadFrame.Name = "LoadFrame"
	LoadFrame.Parent = Background_1
	LoadFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	LoadFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	LoadFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadFrame.BorderSizePixel = 0
	LoadFrame.Size = UDim2.new(1, 0, 1, 0)
	LoadFrame.ZIndex = 2
	LoadFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

	Logo.Name = "Logo"
	Logo.Parent = LoadFrame
	Logo.AnchorPoint = Vector2.new(0.5, 0.5)
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Logo.BorderSizePixel = 0
	Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
	Logo.Size = UDim2.new(0, 130, 0, 130)
	Logo.ZIndex = 2
	Logo.Image = "rbxassetid://124835224003145"

	UICorner.CornerRadius = UDim.new(0, 10)
	UICorner.Parent = LoadFrame
	
	local isopenui = false
	
	local function closeopenui()
		isopenui = not isopenui
		task.spawn(function()
			Tw({
				v = ImageLabel_1,
				t = 0.2,
				s = "Back",
				d = "Out",
				g = {Size = UDim2.new(0, 35,0, 35)}
			}):Play()
			delay(.016,function()
				Tw({
					v = ImageLabel_1,
					t = 0.2,
					s = "Back",
					d = "Out",
					g = {Size = UDim2.new(0, 45,0, 45)}
				}):Play()
			end)
		end)
		if not isopenui then
			Tw({
				v = Background_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {Size = UDim2.new(0.97, 0,0.97, 0)}
			}):Play()
			Tw({
				v = Status_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {Size = UDim2.new(0, 182,0, 40)}
			}):Play()
			Tw({
				v = Day_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 0}
			}):Play()
			Tw({
				v = Discord_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 0.3}
			}):Play()
			Tw({
				v = Fps_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 0.3}
			}):Play()
			Tw({
				v = Shadow,
				t = 0.2,
				s = "Back",
				d = "Out",
				g = {Size = UDim2.new(0, 463,0, 360)}
			}):Play()
			wait(.3)
			Tw({
				v = LoadFrame,
				t = 0.3,
				s = "Back",
				d = "Out",
				g = {Size = UDim2.new(0, 0, 0, 0)}
			}):Play()
			Tw({
				v = Logo,
				t = 0.3,
				s = "Back",
				d = "Out",
				g = {Size = UDim2.new(0, 0, 0, 0)}
			}):Play()
		else
			Tw({
				v = LoadFrame,
				t = 0.3,
				s = "Back",
				d = "Out",
				g = {Size = UDim2.new(1, 0, 1, 0)}
			}):Play()
			Tw({
				v = Logo,
				t = 0.3,
				s = "Back",
				d = "Out",
				g = {Size = UDim2.new(0, 130, 0, 130)}
			}):Play()
			wait(.3)
			Tw({
				v = Background_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {Size = UDim2.new(0, 0,0, 0)}
			}):Play()
			Tw({
				v = Status_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {Size = UDim2.new(0, 0,0, 40)}
			}):Play()
			Tw({
				v = Day_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 1}
			}):Play()
			Tw({
				v = Discord_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 1}
			}):Play()
			Tw({
				v = Fps_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 1}
			}):Play()
			Tw({
				v = Shadow,
				t = 0.2,
				s = "Back",
				d = "Out",
				g = {Size = UDim2.new(0, 0,0, 0)}
			}):Play()
		end
	end

	Click_1.MouseButton1Click:Connect(function()
		closeopenui()
	end)

	game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
		if not gameProcessed and input.KeyCode == Enum.KeyCode.LeftControl then
			closeopenui()
		end
	end)
	
	delay(.5, function()
		Tw({
			v = LoadFrame,
			t = 0.3,
			s = "Back",
			d = "Out",
			g = {Size = UDim2.new(0, 0, 0, 0)}
		}):Play()
		Tw({
			v = Logo,
			t = 0.3,
			s = "Back",
			d = "Out",
			g = {Size = UDim2.new(0, 0, 0, 0)}
		}):Play()
	end)
	
	lak(Shadow)

	UICorner_1.Parent = Background_1
	UICorner_1.CornerRadius = UDim.new(0,10)
	
	Line_1.Name = "Line"
	Line_1.Parent = Background_1
	Line_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Line_1.BackgroundTransparency = 0.5
	Line_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Line_1.BorderSizePixel = 0
	Line_1.Position = UDim2.new(0, 0,0.170000002, 0)
	Line_1.Size = UDim2.new(1, 0,0, 2)

	Hub_1.Name = "Hub"
	Hub_1.Parent = Background_1
	Hub_1.AnchorPoint = Vector2.new(0, 0.5)
	Hub_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Hub_1.BackgroundTransparency = 1
	Hub_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Hub_1.BorderSizePixel = 0
	Hub_1.Position = UDim2.new(0.0299999993, 0,0.0799999982, 0)
	Hub_1.Size = UDim2.new(0, 45,0, 45)

	UIListLayout_6.Parent = Hub_1
	UIListLayout_6.Padding = UDim.new(0,10)
	UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center

	Logo_1.Name = "Logo"
	Logo_1.Parent = Hub_1
	Logo_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Logo_1.BackgroundTransparency = 1
	Logo_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Logo_1.BorderSizePixel = 0
	Logo_1.Size = UDim2.new(0, 45,0, 45)
	if type(Icon) == 'string' and not Icon:find('rbxassetid://') then
		Logo_1.Image = "rbxassetid://".. Icon
	elseif type(Icon) == 'number' then
		Logo_1.Image = "rbxassetid://".. Icon
	else
		Logo_1.Image = Icon
	end
	
	local Tablist_1 = Instance.new("Frame")
	local ScrollingFrame_1 = Instance.new("ScrollingFrame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	
	Tablist_1.Name = "Tablist"
	Tablist_1.Parent = Background_1
	Tablist_1.AnchorPoint = Vector2.new(1, 0.5)
	Tablist_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Tablist_1.BackgroundTransparency = 1
	Tablist_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Tablist_1.BorderSizePixel = 0
	Tablist_1.Position = UDim2.new(0.970000029, 0,0.0799999982, 0)
	Tablist_1.Size = UDim2.new(0, 360,0, 45)

	ScrollingFrame_1.Name = "ScrollingFrame"
	ScrollingFrame_1.Parent = Tablist_1
	ScrollingFrame_1.Active = true
	ScrollingFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ScrollingFrame_1.BackgroundTransparency = 1
	ScrollingFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ScrollingFrame_1.BorderSizePixel = 0
	ScrollingFrame_1.Size = UDim2.new(1, 0,1, 0)
	ScrollingFrame_1.ClipsDescendants = true
	ScrollingFrame_1.AutomaticCanvasSize = Enum.AutomaticSize.None
	ScrollingFrame_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	ScrollingFrame_1.CanvasPosition = Vector2.new(0, 0)
	ScrollingFrame_1.CanvasSize = UDim2.new(2, 0,0, 0)
	ScrollingFrame_1.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
	ScrollingFrame_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	ScrollingFrame_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	ScrollingFrame_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
	ScrollingFrame_1.ScrollBarImageTransparency = 0
	ScrollingFrame_1.ScrollBarThickness = 0
	ScrollingFrame_1.ScrollingDirection = Enum.ScrollingDirection.XY
	ScrollingFrame_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	ScrollingFrame_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
	ScrollingFrame_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

	UIListLayout_1.Parent = ScrollingFrame_1
	UIListLayout_1.Padding = UDim.new(0,8)
	UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center
	
	Library.Tab = {
		Value = false
	}
	
	function Library.Tab:CreateTab(info)
		
		local Title = infolib(info, "name") or infolib(info, "title") or "Tab"
		local Desc = infolib(info, "description") or infolib(info, "desc") or "Description"
		local Icon = infolib(info, "icon")
		
		local Tab_1 = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local List_1 = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local Icon_1 = Instance.new("Frame")
		local Icon_2 = Instance.new("ImageLabel")
		local Title_1 = Instance.new("Frame")
		local UIListLayout_3 = Instance.new("UIListLayout")
		local DesTab_1 = Instance.new("TextLabel")
		local TitleTab_1 = Instance.new("TextLabel")
		local LineTab_1 = Instance.new("Frame")
		local Click_1 = Instance.new("TextButton")
		
		Tab_1.Name = "Tab"
		Tab_1.Parent = ScrollingFrame_1
		Tab_1.BackgroundColor3 = Color3.fromRGB(136,136,136)
		Tab_1.BackgroundTransparency = 1
		Tab_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Tab_1.BorderSizePixel = 0
		Tab_1.Position = UDim2.new(0, 0,0.111111112, 0)
		Tab_1.Size = UDim2.new(0, 105,0, 35)
		Tab_1.ClipsDescendants = true

		UICorner_2.Parent = Tab_1
		UICorner_2.CornerRadius = UDim.new(0,6)

		List_1.Name = "List"
		List_1.Parent = Tab_1
		List_1.AnchorPoint = Vector2.new(0.5, 0.5)
		List_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		List_1.BackgroundTransparency = 1
		List_1.BorderColor3 = Color3.fromRGB(0,0,0)
		List_1.BorderSizePixel = 0
		List_1.Position = UDim2.new(0.5, 0,0.5, 0)
		List_1.Size = UDim2.new(0.899999976, 0,0.899999976, 0)

		UIListLayout_2.Parent = List_1
		UIListLayout_2.Padding = UDim.new(0,4)
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Left
		UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

		Icon_1.Name = "Icon"
		Icon_1.Parent = List_1
		Icon_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Icon_1.BackgroundTransparency = 1
		Icon_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Icon_1.BorderSizePixel = 0
		Icon_1.Size = UDim2.new(0, 30,0, 30)

		Icon_2.Name = "Icon"
		Icon_2.Parent = Icon_1
		Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Icon_2.BackgroundTransparency = 1
		Icon_2.BorderColor3 = Color3.fromRGB(0,0,0)
		Icon_2.BorderSizePixel = 0
		Icon_2.Position = UDim2.new(0.5, 0,0.5, 0)
		Icon_2.Size = UDim2.new(0, 25,0, 25)
		Icon_2.ImageTransparency = 0.5
		if type(Icon) == 'string' and not Icon:find('rbxassetid://') then
			Icon_2.Image = "rbxassetid://".. Icon
		elseif type(Icon) == 'number' then
			Icon_2.Image = "rbxassetid://".. Icon
		else
			Icon_2.Image = Icon
		end

		Title_1.Name = "Title"
		Title_1.Parent = List_1
		Title_1.AnchorPoint = Vector2.new(0, 0.5)
		Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Title_1.BackgroundTransparency = 1
		Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Title_1.BorderSizePixel = 0
		Title_1.Position = UDim2.new(0.0299999993, 0,0.0799999982, 0)
		Title_1.Size = UDim2.new(0, 45,0, 45)

		UIListLayout_3.Parent = Title_1
		UIListLayout_3.Padding = UDim.new(0,3)
		UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

		DesTab_1.Name = "DesTab"
		DesTab_1.Parent = Title_1
		DesTab_1.AnchorPoint = Vector2.new(0.5, 0.5)
		DesTab_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		DesTab_1.BackgroundTransparency = 1
		DesTab_1.BorderColor3 = Color3.fromRGB(0,0,0)
		DesTab_1.BorderSizePixel = 0
		DesTab_1.LayoutOrder = 1
		DesTab_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
		DesTab_1.Size = UDim2.new(1, 0,0, 10)
		DesTab_1.FontFace = Font.new("rbxassetid://16658237174", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		DesTab_1.Text = tostring(Desc)
		DesTab_1.TextColor3 = Color3.fromRGB(255,255,255)
		DesTab_1.TextSize = 8
		DesTab_1.TextTransparency = 0.5
		DesTab_1.TextXAlignment = Enum.TextXAlignment.Left

		TitleTab_1.Name = "TitleTab"
		TitleTab_1.Parent = Title_1
		TitleTab_1.AnchorPoint = Vector2.new(0.5, 0.5)
		TitleTab_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		TitleTab_1.BackgroundTransparency = 1
		TitleTab_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TitleTab_1.BorderSizePixel = 0
		TitleTab_1.Position = UDim2.new(0.248750001, 0,0.0644999966, 0)
		TitleTab_1.Size = UDim2.new(1, 0,0, 10)
		TitleTab_1.Font = Enum.Font.SourceSansBold
		TitleTab_1.Text = tostring(Title)
		TitleTab_1.TextColor3 = Color3.fromRGB(255,255,255)
		TitleTab_1.TextSize = 13
		TitleTab_1.TextXAlignment = Enum.TextXAlignment.Left
		TitleTab_1.TextTransparency = 0.5

		LineTab_1.Name = "LineTab"
		LineTab_1.Parent = Tab_1
		LineTab_1.AnchorPoint = Vector2.new(0, 1)
		LineTab_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		LineTab_1.BorderColor3 = Color3.fromRGB(0,0,0)
		LineTab_1.BorderSizePixel = 0
		LineTab_1.Position = UDim2.new(0, 0,1, 0)
		LineTab_1.Size = UDim2.new(1, 0,0, 2)
		LineTab_1.BackgroundTransparency = 1

		Click_1.Name = "Click"
		Click_1.Parent = Tab_1
		Click_1.Active = true
		Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Click_1.BackgroundTransparency = 1
		Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Click_1.BorderSizePixel = 0
		Click_1.Size = UDim2.new(1, 0,1, 0)
		Click_1.Font = Enum.Font.SourceSans
		Click_1.Text = ""
		Click_1.TextSize = 14
		
		local Page_1 = Instance.new("Frame")
		local UIListLayout_8 = Instance.new("UIListLayout")
		local PageLeft_1 = Instance.new("ScrollingFrame")
		local PageRight_1 = Instance.new("ScrollingFrame")
		local UIListLayout_12 = Instance.new("UIListLayout")
		local UIListLayout_13 = Instance.new("UIListLayout")
		
		Page_1.Name = "Page"
		Page_1.Parent = Background_1
		Page_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Page_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Page_1.BackgroundTransparency = 1
		Page_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Page_1.BorderSizePixel = 0
		Page_1.Position = UDim2.new(0.5, 0,0.65, 0)
		Page_1.Size = UDim2.new(0.949999988, 0,0, 270)
		Page_1.Visible = false

		UIListLayout_8.Parent = Page_1
		UIListLayout_8.Padding = UDim.new(0,5)
		UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
		
		PageLeft_1.Name = "PageLeft"
		PageLeft_1.Parent = Page_1
		PageLeft_1.Active = true
		PageLeft_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		PageLeft_1.BackgroundTransparency = 1
		PageLeft_1.BorderColor3 = Color3.fromRGB(0,0,0)
		PageLeft_1.BorderSizePixel = 0
		PageLeft_1.Size = UDim2.new(0.5, 0,1, 0)
		PageLeft_1.ClipsDescendants = true
		PageLeft_1.AutomaticCanvasSize = Enum.AutomaticSize.None
		PageLeft_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
		PageLeft_1.CanvasPosition = Vector2.new(0, 0)
		PageLeft_1.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
		PageLeft_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
		PageLeft_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		PageLeft_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
		PageLeft_1.ScrollBarImageTransparency = 0
		PageLeft_1.ScrollBarThickness = 0
		PageLeft_1.ScrollingDirection = Enum.ScrollingDirection.XY
		PageLeft_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
		PageLeft_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
		PageLeft_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
		
		UIListLayout_12.Parent = PageLeft_1
		UIListLayout_12.Padding = UDim.new(0,10)
		UIListLayout_12.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_12.SortOrder = Enum.SortOrder.LayoutOrder
		
		PageRight_1.Name = "PageRight"
		PageRight_1.Parent = Page_1
		PageRight_1.Active = true
		PageRight_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		PageRight_1.BackgroundTransparency = 1
		PageRight_1.BorderColor3 = Color3.fromRGB(0,0,0)
		PageRight_1.BorderSizePixel = 0
		PageRight_1.Size = UDim2.new(0.5, 0,1, 0)
		PageRight_1.ClipsDescendants = true
		PageRight_1.AutomaticCanvasSize = Enum.AutomaticSize.None
		PageRight_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
		PageRight_1.CanvasPosition = Vector2.new(0, 0)
		PageRight_1.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
		PageRight_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
		PageRight_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		PageRight_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
		PageRight_1.ScrollBarImageTransparency = 0
		PageRight_1.ScrollBarThickness = 0
		PageRight_1.ScrollingDirection = Enum.ScrollingDirection.XY
		PageRight_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
		PageRight_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
		PageRight_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
		
		UIListLayout_13.Parent = PageRight_1
		UIListLayout_13.Padding = UDim.new(0,10)
		UIListLayout_13.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_13.SortOrder = Enum.SortOrder.LayoutOrder

		local TextService = game:GetService("TextService")

		local titleSize = TextService:GetTextSize(tostring(Title), 13, Enum.Font.SourceSansBold, Vector2.new(math.huge, 10))
		local descSize = TextService:GetTextSize(tostring(Desc), 9, Enum.Font.SourceSans, Vector2.new(math.huge, 10))

		local maxWidth = math.max(titleSize.X, descSize.X) + 60

		Tab_1.Size = UDim2.new(0, maxWidth, 0, 35)

		TitleTab_1.Size = UDim2.new(0, titleSize.X, 0, 10)
		DesTab_1.Size = UDim2.new(0, descSize.X, 0, 10)
		
		Click_1.MouseButton1Click:Connect(function()
			for i, v in pairs(Background_1:GetChildren()) do
				if v.Name == "Page" then
					v.Visible = false
					v.Position = UDim2.new(0.5, 0,0.65, 0)
				end
			end
			for i, v in pairs(ScrollingFrame_1:GetChildren()) do
				if v:IsA("Frame") then
					Tw({
						v = v,
						t = 0.2,
						s = "Linear",
						d = "Out",
						g = {BackgroundTransparency = 1}
					}):Play()
					Tw({
						v = v.LineTab,
						t = 0.2,
						s = "Linear",
						d = "Out",
						g = {BackgroundTransparency = 1}
					}):Play()
					Tw({
						v = v.List.Title.TitleTab,
						t = 0.2,
						s = "Linear",
						d = "Out",
						g = {TextTransparency = 0.5}
					}):Play()
					Tw({
						v = v.List.Icon.Icon,
						t = 0.2,
						s = "Linear",
						d = "Out",
						g = {ImageTransparency = 0.5}
					}):Play()
				end
			end
			Page_1.Visible = true
			Tw({
				v = Tab_1,
				t = 0.2,
				s = "Linear",
				d = "Out",
				g = {BackgroundTransparency = 0.8}
			}):Play()
			Tw({
				v = LineTab_1,
				t = 0.2,
				s = "Linear",
				d = "Out",
				g = {BackgroundTransparency = 0}
			}):Play()
			Tw({
				v = TitleTab_1,
				t = 0.2,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 0}
			}):Play()
			Tw({
				v = Icon_2,
				t = 0.2,
				s = "Linear",
				d = "Out",
				g = {ImageTransparency = 0}
			}):Play()
			Tw({
				v = Page_1,
				t = 0.2,
				s = "Linear",
				d = "Out",
				g = {Position = UDim2.new(0.5, 0,0.579999983, 0)}
			}):Play()
		end)
		
		delay(0.2,function()
			if not Library.Tab.Value then
				Tw({
					v = Tab_1,
					t = 0.2,
					s = "Linear",
					d = "Out",
					g = {BackgroundTransparency = 0.8}
				}):Play()
				Tw({
					v = LineTab_1,
					t = 0.2,
					s = "Linear",
					d = "Out",
					g = {BackgroundTransparency = 0}
				}):Play()
				Tw({
					v = TitleTab_1,
					t = 0.2,
					s = "Linear",
					d = "Out",
					g = {TextTransparency = 0}
				}):Play()
				Tw({
					v = Icon_2,
					t = 0.2,
					s = "Linear",
					d = "Out",
					g = {ImageTransparency = 0}
				}):Play()
				Tw({
					v = Page_1,
					t = 0.2,
					s = "Linear",
					d = "Out",
					g = {Position = UDim2.new(0.5, 0,0.579999983, 0)}
				}):Play()
				Page_1.Visible = true
				Library.Tab.Value = true
			end
		end)
		
		local function GetSide(side)
			if not side then
				return PageLeft_1
			end

			local sideLower = string.lower(tostring(side))
			if sideLower == "r" or sideLower == "right" or side == 2 then
				return PageRight_1
			elseif sideLower == "l" or sideLower == "left" or side == 1 then
				return PageLeft_1
			else
				return PageLeft_1
			end
		end

		Library.Section = {}
		
		function Library.Section:CreateSection(info)
			
			local Title = infolib(info, "name") or infolib(info, "title") or "Section"
			local Side = infolib(info, "side")
			
			local Section_1 = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")
			local UIListLayout_9 = Instance.new("UIListLayout")
			local SectionTitle_1 = Instance.new("TextLabel")
			local Line_2 = Instance.new("Frame")
			local UIGradient_1 = Instance.new("UIGradient")
			
			Section_1.Name = "Section"
			Section_1.Parent = GetSide(Side)
			Section_1.BackgroundColor3 = Color3.fromRGB(13,13,13)
			Section_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Section_1.BorderSizePixel = 0
			Section_1.Position = UDim2.new(0.0049999305, 0,0.0250000004, 0)
			Section_1.Size = UDim2.new(0.99000001, 0,0, 200)
			Section_1.ClipsDescendants = true

			UICorner_4.Parent = Section_1

			UIListLayout_9.Parent = Section_1
			UIListLayout_9.Padding = UDim.new(0,3)
			UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder

			SectionTitle_1.Name = "SectionTitle"
			SectionTitle_1.Parent = Section_1
			SectionTitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SectionTitle_1.BackgroundTransparency = 1
			SectionTitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SectionTitle_1.BorderSizePixel = 0
			SectionTitle_1.Size = UDim2.new(1, 0,0, 20)
			SectionTitle_1.Font = Enum.Font.GothamBold
			SectionTitle_1.Text = tostring(Title)
			SectionTitle_1.TextColor3 = Color3.fromRGB(255,255,255)
			SectionTitle_1.TextSize = 12
			SectionTitle_1.TextYAlignment = Enum.TextYAlignment.Bottom
			
			Line_2.Name = "Line"
			Line_2.Parent = Section_1
			Line_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
			Line_2.BackgroundTransparency = 0.6000000238418579
			Line_2.BorderColor3 = Color3.fromRGB(0,0,0)
			Line_2.BorderSizePixel = 0
			Line_2.LayoutOrder = 1
			Line_2.Size = UDim2.new(1, 0,0, 2)
			
			UIGradient_1.Parent = Line_2
			UIGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(13, 13, 13)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(12, 12, 12))}
			
			Library.Main = {}
			
			function Library.Main:CreateToggle(info)
				
				local Title = infolib(info, "name") or infolib(info, "title") or "Toggle"
				local Value = infolib(info, "defuse") or infolib(info, "value") or false
				local Callback = infolib(info, "callback") or function() end
				
				local Toggle = Instance.new("Frame")
				local ListfunctionToggle_1 = Instance.new("Frame")
				local UIListLayout_1 = Instance.new("UIListLayout")
				local Title_1 = Instance.new("TextLabel")
				local ToggleO_1 = Instance.new("Frame")
				local UICorner_1 = Instance.new("UICorner")
				local UIGradient_1 = Instance.new("UIGradient")
				local done_1 = Instance.new("ImageLabel")
				local UICorner_2 = Instance.new("UICorner")
				local UICorner_3 = Instance.new("UICorner")
				local Click_1 = Instance.new("TextButton")

				Toggle.Name = "Toggle"
				Toggle.Parent = Section_1
				Toggle.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Toggle.BackgroundTransparency = 1
				Toggle.BorderColor3 = Color3.fromRGB(0,0,0)
				Toggle.BorderSizePixel = 0
				Toggle.LayoutOrder = 2
				Toggle.Size = UDim2.new(1, 0,0, 25)

				ListfunctionToggle_1.Name = "ListfunctionToggle"
				ListfunctionToggle_1.Parent = Toggle
				ListfunctionToggle_1.AnchorPoint = Vector2.new(0.5, 0.5)
				ListfunctionToggle_1.BackgroundColor3 = Color3.fromRGB(44,44,44)
				ListfunctionToggle_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ListfunctionToggle_1.BorderSizePixel = 0
				ListfunctionToggle_1.Position = UDim2.new(0.5, 0,0.5, 0)
				ListfunctionToggle_1.Size = UDim2.new(0.9, 0,0, 25)

				UIListLayout_1.Parent = ListfunctionToggle_1
				UIListLayout_1.Padding = UDim.new(0,8)
				UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
				UIListLayout_1.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

				Title_1.Name = "Title"
				Title_1.Parent = ListfunctionToggle_1
				Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_1.BackgroundTransparency = 1
				Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_1.BorderSizePixel = 0
				Title_1.Size = UDim2.new(0.800000012, 0,1, 0)
				Title_1.Font = Enum.Font.GothamBold
				Title_1.Text = tostring(Title)
				Title_1.TextColor3 = Color3.fromRGB(255,255,255)
				Title_1.TextSize = 10
				Title_1.TextTransparency = 0.5
				Title_1.TextXAlignment = Enum.TextXAlignment.Left

				ToggleO_1.Name = "ToggleO"
				ToggleO_1.Parent = ListfunctionToggle_1
				ToggleO_1.BackgroundColor3 = Color3.fromRGB(18,18,18)
				ToggleO_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ToggleO_1.BorderSizePixel = 0
				ToggleO_1.LayoutOrder = 1
				ToggleO_1.Size = UDim2.new(0, 14,0, 14)

				UICorner_1.Parent = ToggleO_1
				UICorner_1.CornerRadius = UDim.new(1,0)

				UIGradient_1.Parent = ToggleO_1
				UIGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(122, 122, 122))}
				UIGradient_1.Rotation = 30

				done_1.Name = "done"
				done_1.Parent = ToggleO_1
				done_1.AnchorPoint = Vector2.new(0.5, 0.5)
				done_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
				done_1.BackgroundTransparency = 1
				done_1.BorderColor3 = Color3.fromRGB(27,27,27)
				done_1.Position = UDim2.new(0.5, 0,0.5, 0)
				done_1.Size = UDim2.new(0.8, 0,0.8, 0)
				done_1.ZIndex = 2
				done_1.Image = "rbxassetid://3926305904"
				done_1.ImageColor3 = Color3.fromRGB(27,27,27)
				done_1.ImageRectOffset = Vector2.new(644, 204)
				done_1.ImageRectSize = Vector2.new(36, 36)
				done_1.ImageTransparency = 1

				UICorner_2.Parent = done_1
				UICorner_2.CornerRadius = UDim.new(0,4)

				UICorner_3.Parent = ListfunctionToggle_1
				UICorner_3.CornerRadius = UDim.new(0,5)

				Click_1.Name = "Click"
				Click_1.Parent = Toggle
				Click_1.Active = true
				Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Click_1.BackgroundTransparency = 1
				Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Click_1.BorderSizePixel = 0
				Click_1.Size = UDim2.new(1, 0,1, 0)
				Click_1.Font = Enum.Font.SourceSans
				Click_1.Text = ""
				Click_1.TextSize = 14
				
				local function ToggleC(Value)
					if not Value then 
						Callback(Value)
						Tw({
							v = ToggleO_1,
							t = 0.15,
							s = "Linear",
							d = "Out",
							g = {BackgroundColor3 = Color3.fromRGB(18,18,18)}
						}):Play()
						Tw({
							v = Title_1,
							t = 0.3,
							s = "Linear",
							d = "Out",
							g = {TextTransparency = 0.5}
						}):Play()
						Tw({
							v = done_1,
							t = 0.3,
							s = "Linear",
							d = "Out",
							g = {ImageTransparency = 1, Size = UDim2.new(0, 0,0, 0), Rotation = 360}
						}):Play()
					elseif Value then 
						Callback(Value)
						local blackgroundtoggle = Tw({
							v = ToggleO_1,
							t = 0.15,
							s = "Linear",
							d = "Out",
							g = {BackgroundColor3 = Color3.fromRGB(255,255,255)}
						})
						blackgroundtoggle:Play()
						Tw({
							v = Title_1,
							t = 0.3,
							s = "Linear",
							d = "Out",
							g = {TextTransparency = 0}
						}):Play()
						blackgroundtoggle.Completed:Connect(function()
							Tw({
								v = done_1,
								t = 0.3,
								s = "Back",
								d = "Out",
								g = {ImageTransparency = 0, Size = UDim2.new(0.8, 0,0.8, 0), Rotation = 0}
							}):Play()
						end)
					end
				end

				Click_1.MouseButton1Click:Connect(function()
					Value = not Value
					ToggleC(Value)
				end)

				ToggleC(Value)

				local NewValue = {}

				function NewValue:SetValue(a)
					Value = a
					ToggleC(Value)
				end
				
				function NewValue:SetVisible(a)
					Toggle.Visible = a
				end

				function NewValue:Set(b)
					Title_1.Text = b
				end

				return NewValue
			end
			
			function Library.Main:CreateButton(info)
				
				local Title = infolib(info, "name") or infolib(info, "title") or "Button"
				local Desc = infolib(info, "desc") or infolib(info, "description") or "Description"
				local Mode = infolib(info, "mode") or 1
				local Callback = infolib(info, "callback") or function() end
				
				if Mode	== 1 then
				
					local Button = Instance.new("Frame")
					local ButtonFrame_1 = Instance.new("Frame")
					local UICorner_1 = Instance.new("UICorner")
					local Title_1 = Instance.new("TextLabel")
					local UIGradient_1 = Instance.new("UIGradient")
					local Click_1 = Instance.new("TextButton")

					Button.Name = "Button"
					Button.Parent = Section_1
					Button.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Button.BackgroundTransparency = 1
					Button.BorderColor3 = Color3.fromRGB(0,0,0)
					Button.BorderSizePixel = 0
					Button.LayoutOrder = 2
					Button.Size = UDim2.new(1, 0,0, 28)

					ButtonFrame_1.Name = "ButtonFrame"
					ButtonFrame_1.Parent = Button
					ButtonFrame_1.AnchorPoint = Vector2.new(0.5, 0.5)
					ButtonFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					ButtonFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
					ButtonFrame_1.BorderSizePixel = 0
					ButtonFrame_1.Position = UDim2.new(0.5, 0,0.5, 0)
					ButtonFrame_1.Size = UDim2.new(0.899999976, 0,0, 25)
					ButtonFrame_1.ClipsDescendants = true

					UICorner_1.Parent = ButtonFrame_1
					UICorner_1.CornerRadius = UDim.new(0,5)

					Title_1.Name = "Title"
					Title_1.Parent = ButtonFrame_1
					Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Title_1.BackgroundTransparency = 1
					Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Title_1.BorderSizePixel = 0
					Title_1.Size = UDim2.new(1, 0,1, 0)
					Title_1.Font = Enum.Font.GothamBold
					Title_1.Text = tostring(Title)
					Title_1.TextColor3 = Color3.fromRGB(204,204,204)
					Title_1.TextSize = 11

					UIGradient_1.Parent = ButtonFrame_1
					UIGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(113, 113, 113)), ColorSequenceKeypoint.new(1, Color3.fromRGB(94, 94, 94))}

					Click_1.Name = "Click"
					Click_1.Parent = Button
					Click_1.Active = true
					Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Click_1.BackgroundTransparency = 1
					Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Click_1.BorderSizePixel = 0
					Click_1.Size = UDim2.new(1, 0,1, 0)
					Click_1.Font = Enum.Font.SourceSans
					Click_1.Text = ""
					Click_1.TextSize = 14
					
					Click_1.MouseButton1Click:Connect(function()
						local Mouse = game.Players.LocalPlayer:GetMouse()

						local relativeX = Mouse.X - ButtonFrame_1.AbsolutePosition.X
						local relativeY = Mouse.Y - ButtonFrame_1.AbsolutePosition.Y

						if relativeX < 0 or relativeY < 0 or relativeX > ButtonFrame_1.AbsoluteSize.X or relativeY > ButtonFrame_1.AbsoluteSize.Y then
							return
						end

						local ClickButtonCircle = Instance.new("Frame")

						ClickButtonCircle.Name = "ClickButtonCircle"
						ClickButtonCircle.Parent = ButtonFrame_1
						ClickButtonCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ClickButtonCircle.BackgroundTransparency = 0.5
						ClickButtonCircle.BorderSizePixel = 0
						ClickButtonCircle.AnchorPoint = Vector2.new(0.5, 0.5)
						ClickButtonCircle.Position = UDim2.new(0, relativeX, 0, relativeY)
						ClickButtonCircle.Size = UDim2.new(0, 0, 0, 0)
						ClickButtonCircle.ZIndex = 10

						local UICorner = Instance.new("UICorner")
						UICorner.CornerRadius = UDim.new(1, 0)
						UICorner.Parent = ClickButtonCircle

						local expandTween = game:GetService("TweenService"):Create(ClickButtonCircle, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Size = UDim2.new(0, ButtonFrame_1.AbsoluteSize.X * 1.5, 0, ButtonFrame_1.AbsoluteSize.X * 1.5),
							BackgroundTransparency = 1
						})

						expandTween.Completed:Connect(function()
							ClickButtonCircle:Destroy()
						end)

						expandTween:Play()
						
						Callback()
					end)
					
					local NewValue = {}

					function NewValue:SetVisible(a)
						Button.Visible = a
					end

					function NewValue:Set(b)
						Title_1.Text = b
					end

					return NewValue
					
				elseif Mode == 2 then
					
					local Button2 = Instance.new("Frame")
					local ButtonFrame_1 = Instance.new("Frame")
					local UICorner_1 = Instance.new("UICorner")
					local TextHub_1 = Instance.new("Frame")
					local UIListLayout_1 = Instance.new("UIListLayout")
					local Desc_1 = Instance.new("TextLabel")
					local Title_1 = Instance.new("TextLabel")
					local ImageLabel_1 = Instance.new("ImageLabel")
					local Click_1 = Instance.new("TextButton")

					Button2.Name = "Button2"
					Button2.Parent = Section_1
					Button2.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Button2.BackgroundTransparency = 1
					Button2.BorderColor3 = Color3.fromRGB(0,0,0)
					Button2.BorderSizePixel = 0
					Button2.LayoutOrder = 2
					Button2.Size = UDim2.new(1, 0,0, 40)

					ButtonFrame_1.Name = "ButtonFrame"
					ButtonFrame_1.Parent = Button2
					ButtonFrame_1.AnchorPoint = Vector2.new(0.5, 0.5)
					ButtonFrame_1.BackgroundColor3 = Color3.fromRGB(44,44,44)
					ButtonFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
					ButtonFrame_1.BorderSizePixel = 0
					ButtonFrame_1.Position = UDim2.new(0.5, 0,0.5, 0)
					ButtonFrame_1.Size = UDim2.new(0.9, 0,1, 0)
					ButtonFrame_1.ClipsDescendants = true

					UICorner_1.Parent = ButtonFrame_1
					UICorner_1.CornerRadius = UDim.new(0,5)

					TextHub_1.Name = "TextHub"
					TextHub_1.Parent = ButtonFrame_1
					TextHub_1.AnchorPoint = Vector2.new(0, 0.5)
					TextHub_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					TextHub_1.BackgroundTransparency = 1
					TextHub_1.BorderColor3 = Color3.fromRGB(0,0,0)
					TextHub_1.BorderSizePixel = 0
					TextHub_1.Position = UDim2.new(0.0299999993, 0,0.5, 0)
					TextHub_1.Size = UDim2.new(1, 0,1, 0)

					UIListLayout_1.Parent = TextHub_1
					UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

					Desc_1.Name = "Desc"
					Desc_1.Parent = TextHub_1
					Desc_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Desc_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Desc_1.BackgroundTransparency = 1
					Desc_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Desc_1.BorderSizePixel = 0
					Desc_1.LayoutOrder = 1
					Desc_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
					Desc_1.Size = UDim2.new(0, 150,0, 15)
					Desc_1.Font = Enum.Font.GothamBold
					Desc_1.Text = tostring(Desc)
					Desc_1.TextColor3 = Color3.fromRGB(255,255,255)
					Desc_1.TextSize = 8
					Desc_1.TextTransparency = 0.5
					Desc_1.TextXAlignment = Enum.TextXAlignment.Left

					Title_1.Name = "Title"
					Title_1.Parent = TextHub_1
					Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Title_1.BackgroundTransparency = 1
					Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Title_1.BorderSizePixel = 0
					Title_1.Position = UDim2.new(0.248750001, 0,0.0644999966, 0)
					Title_1.Size = UDim2.new(0, 150,0, 15)
					Title_1.Font = Enum.Font.GothamBold
					Title_1.Text = tostring(Title)
					Title_1.TextColor3 = Color3.fromRGB(255,255,255)
					Title_1.TextSize = 11
					Title_1.TextXAlignment = Enum.TextXAlignment.Left

					ImageLabel_1.Parent = ButtonFrame_1
					ImageLabel_1.AnchorPoint = Vector2.new(1, 0.5)
					ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					ImageLabel_1.BackgroundTransparency = 1
					ImageLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
					ImageLabel_1.BorderSizePixel = 0
					ImageLabel_1.Position = UDim2.new(0.970000029, 0,0.5, 0)
					ImageLabel_1.Size = UDim2.new(0, 10,0, 10)
					ImageLabel_1.Image = "rbxassetid://11419703997"

					Click_1.Name = "Click"
					Click_1.Parent = Button2
					Click_1.Active = true
					Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Click_1.BackgroundTransparency = 1
					Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Click_1.BorderSizePixel = 0
					Click_1.Size = UDim2.new(1, 0,1, 0)
					Click_1.Font = Enum.Font.SourceSans
					Click_1.Text = ""
					Click_1.TextSize = 14
					
					Click_1.MouseButton1Click:Connect(function()
						local Mouse = game.Players.LocalPlayer:GetMouse()

						local relativeX = Mouse.X - ButtonFrame_1.AbsolutePosition.X
						local relativeY = Mouse.Y - ButtonFrame_1.AbsolutePosition.Y

						if relativeX < 0 or relativeY < 0 or relativeX > ButtonFrame_1.AbsoluteSize.X or relativeY > ButtonFrame_1.AbsoluteSize.Y then
							return
						end

						local ClickButtonCircle = Instance.new("Frame")
						
						ClickButtonCircle.Name = "ClickButtonCircle"
						ClickButtonCircle.Parent = ButtonFrame_1
						ClickButtonCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ClickButtonCircle.BackgroundTransparency = 0.5
						ClickButtonCircle.BorderSizePixel = 0
						ClickButtonCircle.AnchorPoint = Vector2.new(0.5, 0.5)
						ClickButtonCircle.Position = UDim2.new(0, relativeX, 0, relativeY)
						ClickButtonCircle.Size = UDim2.new(0, 0, 0, 0)
						ClickButtonCircle.ZIndex = 10

						local UICorner = Instance.new("UICorner")
						UICorner.CornerRadius = UDim.new(1, 0)
						UICorner.Parent = ClickButtonCircle

						local expandTween = game:GetService("TweenService"):Create(ClickButtonCircle, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Size = UDim2.new(0, ButtonFrame_1.AbsoluteSize.X * 1.5, 0, ButtonFrame_1.AbsoluteSize.X * 1.5),
							BackgroundTransparency = 1
						})

						expandTween.Completed:Connect(function()
							ClickButtonCircle:Destroy()
						end)

						expandTween:Play()
						
						Callback()
					end)
					
					local NewValue = {}

					function NewValue:SetVisible(a)
						Button2.Visible = a
					end

					function NewValue:SetTitle(b)
						Title_1.Text = b
					end

					function NewValue:SetDesc(c)
						Desc_1.Text = c
					end

					return NewValue
				end
			end
			
			function Library.Main:CreateLabel(info)
				
				local Title = infolib(info, "name") or infolib(info, "title") or "Label"
				local Side = infolib(info, "side") or infolib(info, "textxalignment") or "Center"
				
				local function GetAlignment(va)
					local sideLower = string.lower(tostring(va))
					if sideLower == "left" then
						return Enum.TextXAlignment.Left
					elseif sideLower == "right" then
						return Enum.TextXAlignment.Right
					else
						return Enum.TextXAlignment.Center
					end
				end
				
				local Label = Instance.new("Frame")
				local LabelFrame_1 = Instance.new("Frame")
				local UICorner_1 = Instance.new("UICorner")
				local Title_1 = Instance.new("TextLabel")
				local UIGradient_1 = Instance.new("UIGradient")

				Label.Name = "Label"
				Label.Parent = Section_1
				Label.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Label.BackgroundTransparency = 1
				Label.BorderColor3 = Color3.fromRGB(0,0,0)
				Label.BorderSizePixel = 0
				Label.LayoutOrder = 2
				Label.Size = UDim2.new(1, 0,0, 25)

				LabelFrame_1.Name = "LabelFrame"
				LabelFrame_1.Parent = Label
				LabelFrame_1.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				LabelFrame_1.BackgroundTransparency = 1
				LabelFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
				LabelFrame_1.BorderSizePixel = 0
				LabelFrame_1.Position = UDim2.new(0.5, 0,0.5, 0)
				LabelFrame_1.Size = UDim2.new(0.899999976, 0,0, 25)

				UICorner_1.Parent = LabelFrame_1
				UICorner_1.CornerRadius = UDim.new(0,5)

				Title_1.Name = "Title"
				Title_1.Parent = LabelFrame_1
				Title_1.AnchorPoint = Vector2.new(0 ,0.5)
				Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_1.BackgroundTransparency = 1
				Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_1.BorderSizePixel = 0
				Title_1.Size = UDim2.new(1, 0,1, 0)
				Title_1.Font = Enum.Font.GothamBold
				Title_1.RichText = true
				Title_1.Text = tostring(Title)
				Title_1.TextColor3 = Color3.fromRGB(204,204,204)
				Title_1.TextSize = 9
				Title_1.TextWrapped = true
				Title_1.TextXAlignment = GetAlignment(Side)
				Title_1.Position = UDim2.new(0, 0,0.5, 0)

				UIGradient_1.Parent = LabelFrame_1
				UIGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(113, 113, 113)), ColorSequenceKeypoint.new(1, Color3.fromRGB(94, 94, 94))}
				
				Title_1.Size = UDim2.new(1, 0, 0, Title_1.TextBounds.Y)
				LabelFrame_1.Size = UDim2.new(.9, 0, 0, Title_1.TextBounds.Y + 5)
				Label.Size = UDim2.new(1, 0, 0, Title_1.TextBounds.Y + 10)

				local NewText = {}

				function NewText:SetVisible(a)
					Label.Visible = a
				end

				function NewText:Set(b)
					Title_1.Text = tostring(b)
					Title_1.Size = UDim2.new(1, 0, 0, Title_1.TextBounds.Y)
					LabelFrame_1.Size = UDim2.new(.9, 0, 0, Title_1.TextBounds.Y + 5)
					Label.Size = UDim2.new(1, 0, 0, Title_1.TextBounds.Y + 10)
				end
				return NewText
			end
			
			function Library.Main:CreateSlider(info)
				
				local Title = infolib(info, "name") or infolib(info, "title") or "Slider"
				local Desc = infolib(info, "desc") or infolib(info, "description") or "Description"
				local Min = infolib(info, "min") or 0
				local Max = infolib(info, "max") or 100
				local Value = infolib(info, "defuse") or infolib(info, "value") or Min
				local Callback = infolib(info, "callback") or function() end
				
				local Slider = Instance.new("Frame")
				local Inslider_1 = Instance.new("Frame")
				local UICorner_1 = Instance.new("UICorner")
				local TextHub_1 = Instance.new("Frame")
				local UIListLayout_1 = Instance.new("UIListLayout")
				local Desc_1 = Instance.new("TextLabel")
				local Title_1 = Instance.new("TextLabel")
				local SliderBar_1 = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local SliderBarValue_1 = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local UIGradient_1 = Instance.new("UIGradient")
				local Click_1 = Instance.new("TextButton")
				local ValueBox_1 = Instance.new("TextBox")
				local UICorner_4 = Instance.new("UICorner")

				Slider.Name = "Slider"
				Slider.Parent = Section_1
				Slider.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Slider.BackgroundTransparency = 1
				Slider.BorderColor3 = Color3.fromRGB(0,0,0)
				Slider.BorderSizePixel = 0
				Slider.LayoutOrder = 2
				Slider.Size = UDim2.new(1, 0,0, 50)

				Inslider_1.Name = "Inslider"
				Inslider_1.Parent = Slider
				Inslider_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Inslider_1.BackgroundColor3 = Color3.fromRGB(44,44,44)
				Inslider_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Inslider_1.BorderSizePixel = 0
				Inslider_1.Position = UDim2.new(0.5, 0,0.5, 0)
				Inslider_1.Size = UDim2.new(0.899999976, 0,1, 0)

				UICorner_1.Parent = Inslider_1
				UICorner_1.CornerRadius = UDim.new(0,5)

				TextHub_1.Name = "TextHub"
				TextHub_1.Parent = Inslider_1
				TextHub_1.AnchorPoint = Vector2.new(0, 0.5)
				TextHub_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				TextHub_1.BackgroundTransparency = 1
				TextHub_1.BorderColor3 = Color3.fromRGB(0,0,0)
				TextHub_1.BorderSizePixel = 0
				TextHub_1.Position = UDim2.new(0.0299999993, 0,0.5, 0)
				TextHub_1.Size = UDim2.new(1, 0,0.800000012, 0)

				UIListLayout_1.Parent = TextHub_1
				UIListLayout_1.Padding = UDim.new(0,2)
				UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

				Desc_1.Name = "Desc"
				Desc_1.Parent = TextHub_1
				Desc_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Desc_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Desc_1.BackgroundTransparency = 1
				Desc_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Desc_1.BorderSizePixel = 0
				Desc_1.LayoutOrder = 1
				Desc_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
				Desc_1.Size = UDim2.new(0, 150,0, 11)
				Desc_1.Font = Enum.Font.GothamBold
				Desc_1.Text = tostring(Desc)
				Desc_1.TextColor3 = Color3.fromRGB(255,255,255)
				Desc_1.TextSize = 8
				Desc_1.TextTransparency = 0.5
				Desc_1.TextXAlignment = Enum.TextXAlignment.Left

				Title_1.Name = "Title"
				Title_1.Parent = TextHub_1
				Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_1.BackgroundTransparency = 1
				Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_1.BorderSizePixel = 0
				Title_1.Position = UDim2.new(0.248750001, 0,0.0644999966, 0)
				Title_1.Size = UDim2.new(0, 150,0, 11)
				Title_1.Font = Enum.Font.GothamBold
				Title_1.Text = tostring(Title)
				Title_1.TextColor3 = Color3.fromRGB(255,255,255)
				Title_1.TextSize = 11
				Title_1.TextXAlignment = Enum.TextXAlignment.Left

				SliderBar_1.Name = "SliderBar"
				SliderBar_1.Parent = Slider
				SliderBar_1.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderBar_1.BackgroundColor3 = Color3.fromRGB(14,14,14)
				SliderBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderBar_1.BorderSizePixel = 0
				SliderBar_1.Position = UDim2.new(0.5, 0,0.75, 0)
				SliderBar_1.Size = UDim2.new(0, 180,0, 8)

				UICorner_2.Parent = SliderBar_1
				UICorner_2.CornerRadius = UDim.new(1,0)

				SliderBarValue_1.Name = "SliderBarValue"
				SliderBarValue_1.Parent = SliderBar_1
				SliderBarValue_1.AnchorPoint = Vector2.new(0, 0.5)
				SliderBarValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				SliderBarValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderBarValue_1.BorderSizePixel = 0
				SliderBarValue_1.Position = UDim2.new(0, 0,0.5, 0)
				SliderBarValue_1.Size = UDim2.new(0.800000012, 0,0, 8)
				
				local ValueLine = Instance.new("Frame")
				local UICornerBar_1 = Instance.new("UICorner")

				ValueLine.Name = "ValueLine"
				ValueLine.Parent = SliderBarValue_1
				ValueLine.AnchorPoint = Vector2.new(1, 0.5)
				ValueLine.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ValueLine.BorderColor3 = Color3.fromRGB(0,0,0)
				ValueLine.BorderSizePixel = 0
				ValueLine.Position = UDim2.new(1, 0,0.5, 0)
				ValueLine.Size = UDim2.new(0, 6,0, 12)

				UICornerBar_1.Parent = ValueLine
				UICornerBar_1.CornerRadius = UDim.new(1,0)

				UICorner_3.Parent = SliderBarValue_1
				UICorner_3.CornerRadius = UDim.new(1,0)

				UIGradient_1.Parent = SliderBarValue_1
				UIGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(122, 122, 122))}
				UIGradient_1.Rotation = 90

				Click_1.Name = "Click"
				Click_1.Parent = SliderBar_1
				Click_1.Active = true
				Click_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Click_1.BackgroundTransparency = 1
				Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Click_1.BorderSizePixel = 0
				Click_1.Position = UDim2.new(0.5, 0,0.5, 0)
				Click_1.Size = UDim2.new(1, 10,1, 10)
				Click_1.Font = Enum.Font.SourceSans
				Click_1.Text = ""
				Click_1.TextSize = 14

				ValueBox_1.Name = "ValueBox"
				ValueBox_1.Parent = Slider
				ValueBox_1.Active = true
				ValueBox_1.AnchorPoint = Vector2.new(1, 0.5)
				ValueBox_1.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				ValueBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ValueBox_1.BorderSizePixel = 0
				ValueBox_1.Position = UDim2.new(0.920000017, 0,0.349999994, 0)
				ValueBox_1.Size = UDim2.new(0, 30,0, 20)
				ValueBox_1.Font = Enum.Font.GothamBold
				ValueBox_1.PlaceholderColor3 = Color3.fromRGB(178,178,178)
				ValueBox_1.PlaceholderText = ""
				ValueBox_1.Text = tostring(Value)
				ValueBox_1.TextColor3 = Color3.fromRGB(255,255,255)
				ValueBox_1.TextSize = 10
				ValueBox_1.TextTransparency = 0.30000001192092896

				UICorner_4.Parent = ValueBox_1
				UICorner_4.CornerRadius = UDim.new(1,0)
				
				local TweenService = game:GetService("TweenService")

				local function updateSlider(value)
					value = math.clamp(value, Min, Max)

					Tw({
						v = SliderBarValue_1,
						t = 0.15,
						s = "Exponential",
						d = "Out",
						g = {Size = UDim2.new((value - Min) / (Max - Min), 0, 1, 0)}
					}):Play()

					local startValue = tonumber(ValueBox_1.Text) or 0
					local targetValue = value

					local steps = 5

					local currentValue = startValue
					for i = 1, steps do
						wait(0.1 / steps)
						currentValue = currentValue + (targetValue - startValue) / steps
						ValueBox_1.Text = tostring(math.round(currentValue))
						ValueBox_1.Size = UDim2.new(0, ValueBox_1.TextBounds.X + 20, 0, 20)
					end

					ValueBox_1.Text = tostring(targetValue)
					ValueBox_1.Size = UDim2.new(0, ValueBox_1.TextBounds.X + 20, 0, 20)

					Callback(value)
				end

				updateSlider(Value or 0)

				ValueBox_1.FocusLost:Connect(function()
					local value = tonumber(ValueBox_1.Text) or Min
					updateSlider(value)
				end)

				local function move(input)
					local sliderBar = SliderBar_1
					local relativeX = math.clamp((input.Position.X - sliderBar.AbsolutePosition.X) / sliderBar.AbsoluteSize.X, 0, 1)
					local value = math.floor(relativeX * (Max - Min) + Min)
					updateSlider(value)
				end

				local dragging = false

				Click_1.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						dragging = true
						move(input)
					end
				end)

				Click_1.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						dragging = false
					end
				end)

				game:GetService("UserInputService").InputChanged:Connect(function(input)
					if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
						move(input)
					end
				end)
				
				local NewValue = {}

				function NewValue:SetValue(a)
					Value = a
					updateSlider(Value)
				end

				function NewValue:SetVisible(a)
					Slider.Visible = a
				end

				function NewValue:SetTitle(b)
					Title_1.Text = b
				end

				function NewValue:SetDesc(c)
					Desc_1.Text = c
				end

				return NewValue
			end
			
			function Library.Main:CreateDropdown(info)
				
				local Title = infolib(info, "name") or infolib(info, "title") or "Slider"
				local Value = infolib(info, "defuse") or infolib(info, "value")
				local Callback = infolib(info, "callback") or function() end
				local List = infolib(info, "list")
				local Multi = infolib(info, "multi") or infolib(info, "multidropdown") or false
				
				local Dropdown = Instance.new("Frame")
				local DropdownFrame_1 = Instance.new("Frame")
				local UICorner_1 = Instance.new("UICorner")
				local TextHub_1 = Instance.new("Frame")
				local UIListLayout_1 = Instance.new("UIListLayout")
				local Selected_1 = Instance.new("TextLabel")
				local Title_1 = Instance.new("TextLabel")
				local ImageLabel_1 = Instance.new("ImageLabel")
				local Click_1 = Instance.new("TextButton")

				Dropdown.Name = "Dropdown"
				Dropdown.Parent = Section_1
				Dropdown.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Dropdown.BackgroundTransparency = 1
				Dropdown.BorderColor3 = Color3.fromRGB(0,0,0)
				Dropdown.BorderSizePixel = 0
				Dropdown.LayoutOrder = 2
				Dropdown.Size = UDim2.new(1, 0,0, 30)

				DropdownFrame_1.Name = "DropdownFrame"
				DropdownFrame_1.Parent = Dropdown
				DropdownFrame_1.AnchorPoint = Vector2.new(0.5, 0.5)
				DropdownFrame_1.BackgroundColor3 = Color3.fromRGB(44,44,44)
				DropdownFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
				DropdownFrame_1.BorderSizePixel = 0
				DropdownFrame_1.Position = UDim2.new(0.5, 0,0.5, 0)
				DropdownFrame_1.Size = UDim2.new(0.899999976, 0,1, 0)

				UICorner_1.Parent = DropdownFrame_1
				UICorner_1.CornerRadius = UDim.new(0,5)

				TextHub_1.Name = "TextHub"
				TextHub_1.Parent = DropdownFrame_1
				TextHub_1.AnchorPoint = Vector2.new(0, 0.5)
				TextHub_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				TextHub_1.BackgroundTransparency = 1
				TextHub_1.BorderColor3 = Color3.fromRGB(0,0,0)
				TextHub_1.BorderSizePixel = 0
				TextHub_1.Position = UDim2.new(0.0299999993, 0,0.5, 0)
				TextHub_1.Size = UDim2.new(1, 0,0.800000012, 0)

				UIListLayout_1.Parent = TextHub_1
				UIListLayout_1.Padding = UDim.new(0,2)
				UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

				Selected_1.Name = "Selected"
				Selected_1.Parent = TextHub_1
				Selected_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Selected_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Selected_1.BackgroundTransparency = 1
				Selected_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Selected_1.BorderSizePixel = 0
				Selected_1.LayoutOrder = 1
				Selected_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
				Selected_1.Size = UDim2.new(0, 150,0, 11)
				Selected_1.Font = Enum.Font.GothamBold
				if type(Value) == "table" then
					Selected_1.Text = table.concat(Value, ", ")
				else
					Selected_1.Text = Value
				end
				Selected_1.TextColor3 = Color3.fromRGB(255,255,255)
				Selected_1.TextSize = 8
				Selected_1.TextTransparency = 0.5
				Selected_1.TextXAlignment = Enum.TextXAlignment.Left

				Title_1.Name = "Title"
				Title_1.Parent = TextHub_1
				Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_1.BackgroundTransparency = 1
				Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_1.BorderSizePixel = 0
				Title_1.Position = UDim2.new(0.248750001, 0,0.0644999966, 0)
				Title_1.Size = UDim2.new(0, 150,0, 11)
				Title_1.Font = Enum.Font.GothamBold
				Title_1.Text = tostring(Title)
				Title_1.TextColor3 = Color3.fromRGB(255,255,255)
				Title_1.TextSize = 10
				Title_1.TextXAlignment = Enum.TextXAlignment.Left

				ImageLabel_1.Parent = DropdownFrame_1
				ImageLabel_1.AnchorPoint = Vector2.new(1, 0.5)
				ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ImageLabel_1.BackgroundTransparency = 1
				ImageLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ImageLabel_1.BorderSizePixel = 0
				ImageLabel_1.Position = UDim2.new(0.970000029, 0,0.5, 0)
				ImageLabel_1.Size = UDim2.new(0, 10,0, 10)
				ImageLabel_1.Image = "rbxassetid://11419703997"

				Click_1.Name = "Click"
				Click_1.Parent = Dropdown
				Click_1.Active = true
				Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Click_1.BackgroundTransparency = 1
				Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Click_1.BorderSizePixel = 0
				Click_1.Size = UDim2.new(1, 0,1, 0)
				Click_1.Font = Enum.Font.SourceSans
				Click_1.Text = ""
				Click_1.TextSize = 14
				
				local DropdownSelect = Instance.new("Frame")
				local DropdownFrame_1 = Instance.new("Frame")
				local UICorner_1 = Instance.new("UICorner")
				local ScrollingFrame_1 = Instance.new("ScrollingFrame")
				local UIListLayout_1 = Instance.new("UIListLayout")

				DropdownSelect.Name = "DropdownSelect"
				DropdownSelect.Parent = Section_1
				DropdownSelect.BackgroundColor3 = Color3.fromRGB(255,255,255)
				DropdownSelect.BackgroundTransparency = 1
				DropdownSelect.BorderColor3 = Color3.fromRGB(0,0,0)
				DropdownSelect.BorderSizePixel = 0
				DropdownSelect.LayoutOrder = 2
				DropdownSelect.Size = UDim2.new(1, 0,0, 0)

				DropdownFrame_1.Name = "DropdownFrame"
				DropdownFrame_1.Parent = DropdownSelect
				DropdownFrame_1.AnchorPoint = Vector2.new(0.5, 0.5)
				DropdownFrame_1.BackgroundColor3 = Color3.fromRGB(28,28,28)
				DropdownFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
				DropdownFrame_1.BorderSizePixel = 0
				DropdownFrame_1.Position = UDim2.new(0.5, 0,0.5, 0)
				DropdownFrame_1.Size = UDim2.new(0.899999976, 0,1, 0)

				UICorner_1.Parent = DropdownFrame_1
				UICorner_1.CornerRadius = UDim.new(0,5)

				ScrollingFrame_1.Name = "ScrollingFrame"
				ScrollingFrame_1.Parent = DropdownFrame_1
				ScrollingFrame_1.Active = true
				ScrollingFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ScrollingFrame_1.BackgroundTransparency = 1
				ScrollingFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ScrollingFrame_1.BorderSizePixel = 0
				ScrollingFrame_1.Size = UDim2.new(1, 0,1, 0)
				ScrollingFrame_1.ClipsDescendants = true
				ScrollingFrame_1.AutomaticCanvasSize = Enum.AutomaticSize.None
				ScrollingFrame_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
				ScrollingFrame_1.CanvasPosition = Vector2.new(0, 0)
				ScrollingFrame_1.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
				ScrollingFrame_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
				ScrollingFrame_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
				ScrollingFrame_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
				ScrollingFrame_1.ScrollBarImageTransparency = 0
				ScrollingFrame_1.ScrollBarThickness = 0
				ScrollingFrame_1.ScrollingDirection = Enum.ScrollingDirection.XY
				ScrollingFrame_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
				ScrollingFrame_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
				ScrollingFrame_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

				UIListLayout_1.Parent = ScrollingFrame_1
				UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
				
				local isOpen = false

				Click_1.MouseButton1Click:Connect(function()
					isOpen = not isOpen
					if isOpen then
						Tw({
							v = ImageLabel_1,
							t = 0.15,
							s = "Exponential",
							d = "Out",
							g = {Rotation = 90}
						}):Play()
						if UIListLayout_1.AbsoluteContentSize.Y + 5 < 100 then
							Tw({
								v = DropdownSelect,
								t = 0.15,
								s = "Exponential",
								d = "Out",
								g = {Size = UDim2.new(1, 0,0, UIListLayout_1.AbsoluteContentSize.Y + 5)}
							}):Play()
						else
							Tw({
								v = DropdownSelect,
								t = 0.15,
								s = "Exponential",
								d = "Out",
								g = {Size = UDim2.new(1, 0,0, 100)}
							}):Play()
						end
					else
						Tw({
							v = ImageLabel_1,
							t = 0.15,
							s = "Exponential",
							d = "Out",
							g = {Rotation = 0}
						}):Play()
						Tw({
							v = DropdownSelect,
							t = 0.15,
							s = "Exponential",
							d = "Out",
							g = {Size = UDim2.new(1, 0,0, 0)}
						}):Play()
					end
					
					local NewValue = {}

					function NewValue:SetVisible(a)
						Dropdown.Visible = a
						DropdownSelect.Visible = a
					end

					function NewValue:Set(b)
						Title_1.Text = b
					end

					return NewValue
					
				end)
				
				local itemslist = {}
				local selectedItem

				function itemslist:Clear()
					for _, child in ipairs(ScrollingFrame_1:GetChildren()) do
						if child:IsA("Frame") then
							child:Destroy()
						end
					end

					selectedItem = nil
					Selected_1.Text = ""
				end

				local selectedValues = {}
				
				function itemslist:AddList(text)
					
					local Item_1 = Instance.new("Frame")
					local LabelFrame_1 = Instance.new("Frame")
					local UICorner_2 = Instance.new("UICorner")
					local Title_1 = Instance.new("TextLabel")
					local UIGradient_1 = Instance.new("UIGradient")
					local SelectedFrame_1 = Instance.new("Frame")
					local UICorner_3 = Instance.new("UICorner")
					local Click_1 = Instance.new("TextButton")
					
					Item_1.Name = "Item"
					Item_1.Parent = ScrollingFrame_1
					Item_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Item_1.BackgroundTransparency = 1
					Item_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Item_1.BorderSizePixel = 0
					Item_1.LayoutOrder = 2
					Item_1.Size = UDim2.new(1, 0,0, 25)

					LabelFrame_1.Name = "LabelFrame"
					LabelFrame_1.Parent = Item_1
					LabelFrame_1.AnchorPoint = Vector2.new(0.5, 0.5)
					LabelFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					LabelFrame_1.BackgroundTransparency = 1
					LabelFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
					LabelFrame_1.BorderSizePixel = 0
					LabelFrame_1.Position = UDim2.new(0.5, 0,0.5, 0)
					LabelFrame_1.Size = UDim2.new(0.899999976, 0,0, 25)

					UICorner_2.Parent = LabelFrame_1
					UICorner_2.CornerRadius = UDim.new(0,5)

					Title_1.Name = "Title"
					Title_1.Parent = LabelFrame_1
					Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Title_1.BackgroundTransparency = 1
					Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Title_1.BorderSizePixel = 0
					Title_1.Size = UDim2.new(1, 0,1, 0)
					Title_1.Font = Enum.Font.GothamBold
					Title_1.RichText = true
					Title_1.Text = tostring(text)
					Title_1.TextColor3 = Color3.fromRGB(204,204,204)
					Title_1.TextSize = 9
					Title_1.TextWrapped = true
					Title_1.TextTransparency = 0.5

					UIGradient_1.Parent = LabelFrame_1
					UIGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(113, 113, 113)), ColorSequenceKeypoint.new(1, Color3.fromRGB(94, 94, 94))}

					SelectedFrame_1.Name = "SelectedFrame"
					SelectedFrame_1.Parent = Item_1
					SelectedFrame_1.AnchorPoint = Vector2.new(0.5, 0.5)
					SelectedFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					SelectedFrame_1.BackgroundTransparency = 1
					SelectedFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
					SelectedFrame_1.BorderSizePixel = 0
					SelectedFrame_1.Position = UDim2.new(0.5, 0,0.899999976, 0)
					SelectedFrame_1.Size = UDim2.new(0, 40,0, 2)

					UICorner_3.Parent = SelectedFrame_1
					UICorner_3.CornerRadius = UDim.new(1,0)

					Click_1.Name = "Click"
					Click_1.Parent = Item_1
					Click_1.Active = true
					Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Click_1.BackgroundTransparency = 1
					Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Click_1.BorderSizePixel = 0
					Click_1.Size = UDim2.new(1, 0,1, 0)
					Click_1.Font = Enum.Font.SourceSans
					Click_1.Text = ""
					Click_1.TextSize = 14
					
					Click_1.MouseButton1Click:Connect(function()
						if Multi then
							if selectedValues[text] then
								selectedValues[text] = nil
								Tw({
									v = Title_1,
									t = 0.15,
									s = "Exponential",
									d = "Out",
									g = {TextTransparency = 0.5}
								}):Play()
								Tw({
									v = SelectedFrame_1,
									t = 0.15,
									s = "Exponential",
									d = "Out",
									g = {BackgroundTransparency = 1}
								}):Play()
							else
								selectedValues[text] = true
								Tw({
									v = Title_1,
									t = 0.15,
									s = "Exponential",
									d = "Out",
									g = {TextTransparency = 0}
								}):Play()
								Tw({
									v = SelectedFrame_1,
									t = 0.15,
									s = "Exponential",
									d = "Out",
									g = {BackgroundTransparency = 0.3}
								}):Play()
							end
							local selectedList = {}
							for i, v in pairs(selectedValues) do
								table.insert(selectedList, i)
							end
							Selected_1.Text = table.concat(selectedList, ", ")
							Callback(Selected_1.Text)
						else
							for i,v in pairs(ScrollingFrame_1:GetChildren()) do
								if v:IsA("Frame") then
									Tw({
										v = v.LabelFrame.Title,
										t = 0.15,
										s = "Exponential",
										d = "Out",
										g = {TextTransparency = 0.5}
									}):Play()
									Tw({
										v = v.SelectedFrame,
										t = 0.15,
										s = "Exponential",
										d = "Out",
										g = {BackgroundTransparency = 1}
									}):Play()
								end
							end
							Tw({
								v = Title_1,
								t = 0.15,
								s = "Exponential",
								d = "Out",
								g = {TextTransparency = 0}
							}):Play()
							Tw({
								v = SelectedFrame_1,
								t = 0.15,
								s = "Exponential",
								d = "Out",
								g = {BackgroundTransparency = 0.3}
							}):Play()
							Tw({
								v = DropdownSelect,
								t = 0.15,
								s = "Exponential",
								d = "Out",
								g = {Size = UDim2.new(1, 0,0, 0)}
							}):Play()
							isOpen = false
							Value = text
							Selected_1.Text = text
							Callback(Selected_1.Text)
						end
					end)

					local function isValueInTable(val, tbl)
						if type(tbl) ~= "table" then
							return false
						end

						for _, v in pairs(tbl) do
							if v == val then
								return true
							end
						end
						return false
					end

					delay(0,function()
						if Multi then
							if isValueInTable(text, Value) then
								Tw({
									v = Title_1,
									t = 0.15,
									s = "Exponential",
									d = "Out",
									g = {TextTransparency = 0}
								}):Play()
								Tw({
									v = SelectedFrame_1,
									t = 0.15,
									s = "Exponential",
									d = "Out",
									g = {BackgroundTransparency = 0.3}
								}):Play()

								selectedValues[text] = true
								local selectedList = {}
								for i, v in pairs(selectedValues) do
									table.insert(selectedList, i)
								end
								Selected_1.Text = table.concat(selectedList, ", ")
								Callback(Selected_1.Text)
							end
						else
							if text == Value then
								Tw({
									v = Title_1,
									t = 0.15,
									s = "Exponential",
									d = "Out",
									g = {TextTransparency = 0}
								}):Play()
								Tw({
									v = SelectedFrame_1,
									t = 0.15,
									s = "Exponential",
									d = "Out",
									g = {BackgroundTransparency = 0.3}
								}):Play()

								Value = text
								Selected_1.Text = text
								Callback(Selected_1.Text)
							end
						end
					end)
				end
				
				for i,v in ipairs(List) do
					itemslist:AddList(v, i)
				end

				UIListLayout_1:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
					ScrollingFrame_1.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_1.AbsoluteContentSize.Y + 5)
				end)

				return itemslist
			end
			
			function Library.Main:CreateTextbox(info)
				
				local Title = infolib(info, "name") or infolib(info, "title") or "TextBox"
				local Desc = infolib(info, "desc") or infolib(info, "description") or "Description"
				local Placeholder = infolib(info, "Placeholder") or "Paste Your Text"
				local Value = infolib(info, "defuse") or infolib(info, "value")
				local Callback = infolib(info, "callback") or function() end
				local ClearText = infolib(info, "cleartextonfocus") or infolib(info, "cleartext") or false
				
				local TextBox = Instance.new("Frame")
				local Textboxinside_1 = Instance.new("Frame")
				local UICorner_1 = Instance.new("UICorner")
				local TextHub_1 = Instance.new("Frame")
				local UIListLayout_1 = Instance.new("UIListLayout")
				local Desc_1 = Instance.new("TextLabel")
				local Title_1 = Instance.new("TextLabel")
				local TextBoxBar_1 = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local TextBoxValue_1 = Instance.new("TextBox")

				TextBox.Name = "TextBox"
				TextBox.Parent = Section_1
				TextBox.BackgroundColor3 = Color3.fromRGB(255,255,255)
				TextBox.BackgroundTransparency = 1
				TextBox.BorderColor3 = Color3.fromRGB(0,0,0)
				TextBox.BorderSizePixel = 0
				TextBox.LayoutOrder = 2
				TextBox.Size = UDim2.new(1, 0,0, 35)

				Textboxinside_1.Name = "Textboxinside"
				Textboxinside_1.Parent = TextBox
				Textboxinside_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Textboxinside_1.BackgroundColor3 = Color3.fromRGB(44,44,44)
				Textboxinside_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Textboxinside_1.BorderSizePixel = 0
				Textboxinside_1.Position = UDim2.new(0.5, 0,0.5, 0)
				Textboxinside_1.Size = UDim2.new(0.899999976, 0,1, 0)

				UICorner_1.Parent = Textboxinside_1
				UICorner_1.CornerRadius = UDim.new(0,5)

				TextHub_1.Name = "TextHub"
				TextHub_1.Parent = Textboxinside_1
				TextHub_1.AnchorPoint = Vector2.new(0, 0.5)
				TextHub_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				TextHub_1.BackgroundTransparency = 1
				TextHub_1.BorderColor3 = Color3.fromRGB(0,0,0)
				TextHub_1.BorderSizePixel = 0
				TextHub_1.Position = UDim2.new(0.0299999993, 0,0.5, 0)
				TextHub_1.Size = UDim2.new(1, 0,0.800000012, 0)

				UIListLayout_1.Parent = TextHub_1
				UIListLayout_1.Padding = UDim.new(0,2)
				UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

				Desc_1.Name = "Desc"
				Desc_1.Parent = TextHub_1
				Desc_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Desc_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Desc_1.BackgroundTransparency = 1
				Desc_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Desc_1.BorderSizePixel = 0
				Desc_1.LayoutOrder = 1
				Desc_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
				Desc_1.Size = UDim2.new(0, 90,0, 11)
				Desc_1.Font = Enum.Font.GothamBold
				Desc_1.Text = tostring(Desc)
				Desc_1.TextColor3 = Color3.fromRGB(255,255,255)
				Desc_1.TextSize = 8
				Desc_1.TextTransparency = 0.5
				Desc_1.TextXAlignment = Enum.TextXAlignment.Left

				Title_1.Name = "Title"
				Title_1.Parent = TextHub_1
				Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_1.BackgroundTransparency = 1
				Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_1.BorderSizePixel = 0
				Title_1.Position = UDim2.new(0.248750001, 0,0.0644999966, 0)
				Title_1.Size = UDim2.new(0, 90,0, 11)
				Title_1.Font = Enum.Font.GothamBold
				Title_1.Text = tostring(Title)
				Title_1.TextColor3 = Color3.fromRGB(255,255,255)
				Title_1.TextSize = 11
				Title_1.TextXAlignment = Enum.TextXAlignment.Left

				TextBoxBar_1.Name = "TextBoxBar"
				TextBoxBar_1.Parent = Textboxinside_1
				TextBoxBar_1.AnchorPoint = Vector2.new(1, 0.5)
				TextBoxBar_1.BackgroundColor3 = Color3.fromRGB(22,22,22)
				TextBoxBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
				TextBoxBar_1.BorderSizePixel = 0
				TextBoxBar_1.Position = UDim2.new(0.959999979, 0,0.5, 0)
				TextBoxBar_1.Size = UDim2.new(0, 80,0, 20)
				TextBoxBar_1.ClipsDescendants = true

				UICorner_2.Parent = TextBoxBar_1
				UICorner_2.CornerRadius = UDim.new(0,4)

				TextBoxValue_1.Name = "TextBoxValue"
				TextBoxValue_1.Parent = TextBoxBar_1
				TextBoxValue_1.Active = true
				TextBoxValue_1.AnchorPoint = Vector2.new(0.5, 0.5)
				TextBoxValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				TextBoxValue_1.BackgroundTransparency = 1
				TextBoxValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
				TextBoxValue_1.BorderSizePixel = 0
				TextBoxValue_1.Position = UDim2.new(0.5, 0,0.5, 0)
				TextBoxValue_1.Size = UDim2.new(0.899999976, 0,1, 0)
				TextBoxValue_1.Font = Enum.Font.Gotham
				TextBoxValue_1.PlaceholderColor3 = Color3.fromRGB(145,145,145)
				TextBoxValue_1.PlaceholderText = tostring(Placeholder)
				TextBoxValue_1.Text = tostring(Value)
				TextBoxValue_1.TextColor3 = Color3.fromRGB(255,255,255)
				TextBoxValue_1.TextSize = 9
				TextBoxValue_1.ClearTextOnFocus = ClearText
				
				TextBoxValue_1:GetPropertyChangedSignal("Text"):Connect(function()
					local textLength = math.clamp(TextBoxValue_1.TextBounds.X + 5, 30, 80)
					TextBoxBar_1.Size = UDim2.new(0, textLength, 0, 20)
				end)

				TextBoxValue_1.FocusLost:Connect(function()
					if #TextBoxValue_1.Text > 0 then
						pcall(Callback, TextBoxValue_1.Text)
					end
				end)

				delay(0, function()
					local textLength = math.clamp(TextBoxValue_1.TextBounds.X + 5, 30, 80)
					TextBoxBar_1.Size = UDim2.new(0, textLength, 0, 20)
				end)
				
				local NewValue = {}

				function NewValue:SetValue(a)
					Value = a
					TextBoxValue_1.Text = a
				end

				function NewValue:SetVisible(a)
					TextBox.Visible = a
				end

				function NewValue:SetTitle(b)
					Title_1.Text = b
				end

				function NewValue:SetDesc(c)
					Desc_1.Text = c
				end

				return NewValue
			end

			function Library.Main:CreateImage(info)
				
				local Title = infolib(info, "name") or infolib(info, "title") or "TextBox"
				local Desc = infolib(info, "desc") or infolib(info, "description") or "Description"
				local Toggle = infolib(info, "toggle") or false
				local Value = infolib(info, "defuse") or infolib(info, "value") or false
				local Callback = infolib(info, "callback") or function() end
				local Icon = infolib(info, "icon") or infolib(info, "logo") or infolib(info, "image") or infolib(info, "imageid")
				
				if not Toggle then
					
					local Image = Instance.new("Frame")
					local Inside_1 = Instance.new("Frame")
					local UICorner_1 = Instance.new("UICorner")
					local TextHub_1 = Instance.new("Frame")
					local UIListLayout_1 = Instance.new("UIListLayout")
					local Desc_1 = Instance.new("TextLabel")
					local Title_1 = Instance.new("TextLabel")
					local ImageID_1 = Instance.new("ImageLabel")
					local UICorner_2 = Instance.new("UICorner")

					Image.Name = "Image"
					Image.Parent = Section_1
					Image.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Image.BackgroundTransparency = 1
					Image.BorderColor3 = Color3.fromRGB(0,0,0)
					Image.BorderSizePixel = 0
					Image.LayoutOrder = 2
					Image.Size = UDim2.new(1, 0,0, 50)

					Inside_1.Name = "Inside"
					Inside_1.Parent = Image
					Inside_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Inside_1.BackgroundColor3 = Color3.fromRGB(44,44,44)
					Inside_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Inside_1.BorderSizePixel = 0
					Inside_1.Position = UDim2.new(0.5, 0,0.5, 0)
					Inside_1.Size = UDim2.new(0.899999976, 0,1, 0)

					UICorner_1.Parent = Inside_1
					UICorner_1.CornerRadius = UDim.new(0,5)

					TextHub_1.Name = "TextHub"
					TextHub_1.Parent = Inside_1
					TextHub_1.AnchorPoint = Vector2.new(0, 0.5)
					TextHub_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					TextHub_1.BackgroundTransparency = 1
					TextHub_1.BorderColor3 = Color3.fromRGB(0,0,0)
					TextHub_1.BorderSizePixel = 0
					TextHub_1.Position = UDim2.new(0.0299999993, 0,0.5, 0)
					TextHub_1.Size = UDim2.new(1, 0,0.800000012, 0)

					UIListLayout_1.Parent = TextHub_1
					UIListLayout_1.Padding = UDim.new(0,2)
					UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

					Desc_1.Name = "Desc"
					Desc_1.Parent = TextHub_1
					Desc_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Desc_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Desc_1.BackgroundTransparency = 1
					Desc_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Desc_1.BorderSizePixel = 0
					Desc_1.LayoutOrder = 1
					Desc_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
					Desc_1.Size = UDim2.new(0, 150,0, 11)
					Desc_1.Font = Enum.Font.GothamBold
					Desc_1.Text = tostring(Desc)
					Desc_1.TextColor3 = Color3.fromRGB(255,255,255)
					Desc_1.TextSize = 8
					Desc_1.TextTransparency = 0.5
					Desc_1.TextXAlignment = Enum.TextXAlignment.Left

					Title_1.Name = "Title"
					Title_1.Parent = TextHub_1
					Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Title_1.BackgroundTransparency = 1
					Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Title_1.BorderSizePixel = 0
					Title_1.Position = UDim2.new(0.248750001, 0,0.0644999966, 0)
					Title_1.Size = UDim2.new(0, 150,0, 11)
					Title_1.Font = Enum.Font.GothamBold
					Title_1.Text = tostring(Title)
					Title_1.TextColor3 = Color3.fromRGB(255,255,255)
					Title_1.TextSize = 11
					Title_1.TextXAlignment = Enum.TextXAlignment.Left

					ImageID_1.Parent = Inside_1
					ImageID_1.AnchorPoint = Vector2.new(1, 0.5)
					ImageID_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					ImageID_1.BackgroundTransparency = 1
					ImageID_1.BorderColor3 = Color3.fromRGB(0,0,0)
					ImageID_1.BorderSizePixel = 0
					ImageID_1.Position = UDim2.new(0.970000029, 0,0.5, 0)
					ImageID_1.Size = UDim2.new(0, 40,0, 40)
					if type(Icon) == 'string' and not Icon:find('rbxassetid://') then
						ImageID_1.Image = "rbxassetid://".. Icon
					elseif type(Icon) == 'number' then
						ImageID_1.Image = "rbxassetid://".. Icon
					else
						ImageID_1.Image = Icon
					end

					UICorner_2.Parent = ImageID_1
					UICorner_2.CornerRadius = UDim.new(0,4)
					
					local NewValue = {}

					function NewValue:SetImage(a)
						Value = a
						if type(a) == 'string' and not a:find('rbxassetid://') then
							ImageID_1.Image = "rbxassetid://".. a
						elseif type(a) == 'number' then
							ImageID_1.Image = "rbxassetid://".. a
						else
							ImageID_1.Image = a
						end
					end

					function NewValue:SetVisible(a)
						Image.Visible = a
					end

					function NewValue:SetTitle(b)
						Title_1.Text = b
					end
					
					function NewValue:SetDesc(c)
						Desc_1.Text = c
					end

					return NewValue
					
				else
					
					local ImageToggle = Instance.new("Frame")
					local Inside_1 = Instance.new("Frame")
					local UICorner_1 = Instance.new("UICorner")
					local TextHub_1 = Instance.new("Frame")
					local UIListLayout_1 = Instance.new("UIListLayout")
					local Desc_1 = Instance.new("TextLabel")
					local Title_1 = Instance.new("TextLabel")
					local UIStroke_1 = Instance.new("UIStroke")
					local ImageID_1 = Instance.new("ImageLabel")
					local UICorner_2 = Instance.new("UICorner")
					local ToggleO_1 = Instance.new("Frame")
					local UICorner_3 = Instance.new("UICorner")
					local O_1 = Instance.new("Frame")
					local UIGradient_1 = Instance.new("UIGradient")
					local UICorner_4 = Instance.new("UICorner")
					local Click_1 = Instance.new("TextButton")

					ImageToggle.Name = "ImageToggle"
					ImageToggle.Parent = Section_1
					ImageToggle.BackgroundColor3 = Color3.fromRGB(255,255,255)
					ImageToggle.BackgroundTransparency = 1
					ImageToggle.BorderColor3 = Color3.fromRGB(0,0,0)
					ImageToggle.BorderSizePixel = 0
					ImageToggle.LayoutOrder = 2
					ImageToggle.Size = UDim2.new(1, 0,0, 55)

					Inside_1.Name = "Inside"
					Inside_1.Parent = ImageToggle
					Inside_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Inside_1.BackgroundColor3 = Color3.fromRGB(44,44,44)
					Inside_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Inside_1.BorderSizePixel = 0
					Inside_1.Position = UDim2.new(0.5, 0,0.5, 0)
					Inside_1.Size = UDim2.new(0.899999976, 0,1, 0)

					UICorner_1.Parent = Inside_1
					UICorner_1.CornerRadius = UDim.new(0,5)

					TextHub_1.Name = "TextHub"
					TextHub_1.Parent = Inside_1
					TextHub_1.AnchorPoint = Vector2.new(0, 0.5)
					TextHub_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					TextHub_1.BackgroundTransparency = 1
					TextHub_1.BorderColor3 = Color3.fromRGB(0,0,0)
					TextHub_1.BorderSizePixel = 0
					TextHub_1.Position = UDim2.new(0.0299999993, 0,0.5, 0)
					TextHub_1.Size = UDim2.new(1, 0,0.800000012, 0)

					UIListLayout_1.Parent = TextHub_1
					UIListLayout_1.Padding = UDim.new(0,2)
					UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

					Desc_1.Name = "Desc"
					Desc_1.Parent = TextHub_1
					Desc_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Desc_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Desc_1.BackgroundTransparency = 1
					Desc_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Desc_1.BorderSizePixel = 0
					Desc_1.LayoutOrder = 1
					Desc_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
					Desc_1.Size = UDim2.new(0, 150,0, 11)
					Desc_1.Font = Enum.Font.GothamBold
					Desc_1.Text = tostring(Desc)
					Desc_1.TextColor3 = Color3.fromRGB(255,255,255)
					Desc_1.TextSize = 8
					Desc_1.TextTransparency = 0.5
					Desc_1.TextXAlignment = Enum.TextXAlignment.Left

					Title_1.Name = "Title"
					Title_1.Parent = TextHub_1
					Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Title_1.BackgroundTransparency = 1
					Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Title_1.BorderSizePixel = 0
					Title_1.Position = UDim2.new(0.248750001, 0,0.0644999966, 0)
					Title_1.Size = UDim2.new(0, 150,0, 11)
					Title_1.Font = Enum.Font.GothamBold
					Title_1.Text = tostring(Title)
					Title_1.TextColor3 = Color3.fromRGB(255,255,255)
					Title_1.TextSize = 11
					Title_1.TextXAlignment = Enum.TextXAlignment.Left

					UIStroke_1.Parent = Inside_1
					UIStroke_1.Color = Color3.fromRGB(39,39,39)
					UIStroke_1.Thickness = 1

					ImageID_1.Parent = Inside_1
					ImageID_1.AnchorPoint = Vector2.new(1, 0.5)
					ImageID_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					ImageID_1.BackgroundTransparency = 1
					ImageID_1.BorderColor3 = Color3.fromRGB(0,0,0)
					ImageID_1.BorderSizePixel = 0
					ImageID_1.Position = UDim2.new(0.970000029, 0,0.5, 0)
					ImageID_1.Size = UDim2.new(0, 40,0, 40)
					if type(Icon) == 'string' and not Icon:find('rbxassetid://') then
						ImageID_1.Image = "rbxassetid://".. Icon
					elseif type(Icon) == 'number' then
						ImageID_1.Image = "rbxassetid://".. Icon
					else
						ImageID_1.Image = Icon
					end

					UICorner_2.Parent = ImageID_1
					UICorner_2.CornerRadius = UDim.new(0,4)

					ToggleO_1.Name = "ToggleO"
					ToggleO_1.Parent = Inside_1
					ToggleO_1.AnchorPoint = Vector2.new(0, 0.5)
					ToggleO_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
					ToggleO_1.BorderColor3 = Color3.fromRGB(0,0,0)
					ToggleO_1.BorderSizePixel = 0
					ToggleO_1.LayoutOrder = -1
					ToggleO_1.Position = UDim2.new(0.0299999993, 0,0.75, 0)
					ToggleO_1.Size = UDim2.new(0, 35,0, 18)

					UICorner_3.Parent = ToggleO_1
					UICorner_3.CornerRadius = UDim.new(1,0)

					O_1.Name = "O"
					O_1.Parent = ToggleO_1
					O_1.AnchorPoint = Vector2.new(0.5, 0.5)
					O_1.BackgroundColor3 = Color3.fromRGB(68,68,68)
					O_1.BorderColor3 = Color3.fromRGB(0,0,0)
					O_1.BorderSizePixel = 0
					O_1.Position = UDim2.new(0.300000012, 0,0.5, 0)
					O_1.Size = UDim2.new(0, 14,0, 14)

					UIGradient_1.Parent = O_1
					UIGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(122, 122, 122))}
					UIGradient_1.Rotation = 30

					UICorner_4.Parent = O_1
					UICorner_4.CornerRadius = UDim.new(1,0)
					
					Click_1.Name = "Click"
					Click_1.Parent = Inside_1
					Click_1.Active = true
					Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Click_1.BackgroundTransparency = 1
					Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Click_1.BorderSizePixel = 0
					Click_1.Size = UDim2.new(1, 0,1, 0)
					Click_1.Font = Enum.Font.SourceSans
					Click_1.Text = ""
					Click_1.TextSize = 14
					
					local function ToggleC(Value)
						if not Value then 
							Callback(Value)
							Tw({
								v = O_1,
								t = 0.15,
								s = "Back",
								d = "Out",
								g = {Position = UDim2.new(0.3, 0,0.5, 0), BackgroundTransparency = 0}
							}):Play()
							Tw({
								v = ToggleO_1,
								t = 0.15,
								s = "Linear",
								d = "Out",
								g = {BackgroundColor3 = Color3.fromRGB(84, 84, 84)}
							}):Play()
						elseif Value then 
							Callback(Value)
							Tw({
								v = O_1,
								t = 0.15,
								s = "Back",
								d = "Out",
								g = {Position = UDim2.new(0.7, 0,0.5, 0), BackgroundTransparency = 0.6}
							}):Play()
							Tw({
								v = ToggleO_1,
								t = 0.15,
								s = "Linear",
								d = "Out",
								g = {BackgroundColor3 = Color3.fromRGB(255,255,255)}
							}):Play()
						end
					end

					Click_1.MouseButton1Click:Connect(function()
						Value = not Value
						ToggleC(Value)
					end)

					ToggleC(Value)

					local NewValue = {}

					function NewValue:SetValue(a)
						Value = a
						ToggleC(Value)
					end

					function NewValue:SetTitle(b)
						Title_1.Text = b
					end

					function NewValue:SetDesc(c)
						Desc_1.Text = c
					end
					
					function NewValue:SetImage(a)
						Value = a
						if type(a) == 'string' and not a:find('rbxassetid://') then
							ImageID_1.Image = "rbxassetid://".. a
						elseif type(a) == 'number' then
							ImageID_1.Image = "rbxassetid://".. a
						else
							ImageID_1.Image = a
						end
					end

					function NewValue:SetVisible(a)
						ImageToggle.Visible = a
					end

					return NewValue
				end
			end

			UIListLayout_12:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				PageLeft_1.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_12.AbsoluteContentSize.Y + 20)
			end)
			UIListLayout_13:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				PageRight_1.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_13.AbsoluteContentSize.Y + 20)
			end)
			
			UIListLayout_9:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				Section_1.Size = UDim2.new(0.99000001, 0, 0, UIListLayout_9.AbsoluteContentSize.Y + 10)
			end)
			
			return Library.Main
		end
		
		return Library.Section
	end
	
	UIListLayout_1:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		ScrollingFrame_1.CanvasSize = UDim2.new(0, UIListLayout_1.AbsoluteContentSize.X + 5, 0, 0)
	end)
	
	return Library.Tab
end

local Notification = Instance.new("Frame")
local UIListLayout_1 = Instance.new("UIListLayout")

Notification.Name = "Notification"
Notification.Parent = Synack
Notification.AnchorPoint = Vector2.new(1, 1)
Notification.BackgroundColor3 = Color3.fromRGB(255,255,255)
Notification.BackgroundTransparency = 1
Notification.BorderColor3 = Color3.fromRGB(0,0,0)
Notification.BorderSizePixel = 0
Notification.Position = UDim2.new(0.99000001, 0,0.99000001, 0)
Notification.Size = UDim2.new(0, 100,0, 100)

UIListLayout_1.Parent = Notification
UIListLayout_1.Padding = UDim.new(0,5)
UIListLayout_1.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Bottom

function Library:Notify(info)
	
	local Title = infolib(info, "name") or infolib(info, "title") or "Notification"
	local Desc = infolib(info, "description") or infolib(info, "desc") or "Description"
	local Icon = infolib(info, "logo") or infolib(info, "icon")
	local Time = infolib(info, "time") or 5
	
	local NotifyTemple_1 = Instance.new("Frame")
	local NotificaitonTemple_1 = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local Text_1 = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Desc_1 = Instance.new("TextLabel")
	local Frame_1 = Instance.new("Frame")
	local Title_1 = Instance.new("TextLabel")
	local Logo_1 = Instance.new("ImageLabel")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local UIStroke_1 = Instance.new("UIStroke")
	local Logo_2 = Instance.new("ImageLabel")
	local Time_1 = Instance.new("TextLabel")

	NotifyTemple_1.Name = "NotifyTemple"
	NotifyTemple_1.Parent = Notification
	NotifyTemple_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	NotifyTemple_1.BackgroundTransparency = 1
	NotifyTemple_1.BorderColor3 = Color3.fromRGB(0,0,0)
	NotifyTemple_1.BorderSizePixel = 0
	NotifyTemple_1.Size = UDim2.new(0, 0,0, 0)

	NotificaitonTemple_1.Name = "NotificaitonTemple"
	NotificaitonTemple_1.Parent = NotifyTemple_1
	NotificaitonTemple_1.BackgroundColor3 = Color3.fromRGB(18,18,18)
	NotificaitonTemple_1.BorderColor3 = Color3.fromRGB(0,0,0)
	NotificaitonTemple_1.BorderSizePixel = 0
	NotificaitonTemple_1.Size = UDim2.new(0, 150,0, 50)
	NotificaitonTemple_1.ClipsDescendants = true
	NotificaitonTemple_1.Rotation = -10

	UICorner_1.Parent = NotificaitonTemple_1
	UICorner_1.CornerRadius = UDim.new(0,6)

	Text_1.Name = "Text"
	Text_1.Parent = NotificaitonTemple_1
	Text_1.AnchorPoint = Vector2.new(0, 0.5)
	Text_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Text_1.BackgroundTransparency = 1
	Text_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Text_1.BorderSizePixel = 0
	Text_1.Position = UDim2.new(0.0500000007, 0,0.5, 0)
	Text_1.Size = UDim2.new(0, 45,0, 45)

	UIListLayout_2.Parent = Text_1
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	Desc_1.Name = "Desc"
	Desc_1.Parent = Text_1
	Desc_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Desc_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Desc_1.BackgroundTransparency = 1
	Desc_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Desc_1.BorderSizePixel = 0
	Desc_1.LayoutOrder = 1
	Desc_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
	Desc_1.Size = UDim2.new(0, 120,0, 30)
	Desc_1.Font = Enum.Font.GothamBold
	Desc_1.Text = tostring(Desc)
	Desc_1.TextColor3 = Color3.fromRGB(255,255,255)
	Desc_1.TextSize = 9
	Desc_1.TextTransparency = 0.5
	Desc_1.TextWrapped = true
	Desc_1.TextXAlignment = Enum.TextXAlignment.Left
	Desc_1.TextYAlignment = Enum.TextYAlignment.Top

	Frame_1.Parent = Text_1
	Frame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Frame_1.BackgroundTransparency = 1
	Frame_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Frame_1.BorderSizePixel = 0
	Frame_1.Size = UDim2.new(0, 63,0, 15)

	Title_1.Name = "Title"
	Title_1.Parent = Frame_1
	Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Title_1.BackgroundTransparency = 1
	Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Title_1.BorderSizePixel = 0
	Title_1.LayoutOrder = 1
	Title_1.Size = UDim2.new(0, 63,0, 15)
	Title_1.Font = Enum.Font.SourceSansBold
	Title_1.Text = tostring(Title)
	Title_1.TextColor3 = Color3.fromRGB(255,255,255)
	Title_1.TextSize = 12
	Title_1.TextXAlignment = Enum.TextXAlignment.Left

	Logo_1.Name = "Logo"
	Logo_1.Parent = Frame_1
	Logo_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Logo_1.BackgroundTransparency = 1
	Logo_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Logo_1.BorderSizePixel = 0
	Logo_1.Size = UDim2.new(0, 15,0, 15)
	if type(Icon) == 'string' and not Icon:find('rbxassetid://') then
		Logo_1.Image = "rbxassetid://".. Icon
	elseif type(Icon) == 'number' then
		Logo_1.Image = "rbxassetid://".. Icon
	else
		Logo_1.Image = Icon
	end

	UIListLayout_3.Parent = Frame_1
	UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

	UIStroke_1.Parent = NotificaitonTemple_1
	UIStroke_1.Color = Color3.fromRGB(59,59,59)
	UIStroke_1.Thickness = 1

	Logo_2.Name = "Logo"
	Logo_2.Parent = NotificaitonTemple_1
	Logo_2.AnchorPoint = Vector2.new(1, 0.5)
	Logo_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Logo_2.BackgroundTransparency = 1
	Logo_2.BorderColor3 = Color3.fromRGB(0,0,0)
	Logo_2.BorderSizePixel = 0
	Logo_2.Position = UDim2.new(1.08000004, 0,0.300000012, 0)
	Logo_2.Size = UDim2.new(0, 110,0, 110)
	if type(Icon) == 'string' and not Icon:find('rbxassetid://') then
		Logo_2.Image = "rbxassetid://".. Icon
	elseif type(Icon) == 'number' then
		Logo_2.Image = "rbxassetid://".. Icon
	else
		Logo_2.Image = Icon
	end
	Logo_2.ImageTransparency = 1

	Time_1.Name = "Time"
	Time_1.Parent = NotificaitonTemple_1
	Time_1.AnchorPoint = Vector2.new(1, 0.5)
	Time_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Time_1.BackgroundTransparency = 1
	Time_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Time_1.BorderSizePixel = 0
	Time_1.Position = UDim2.new(0.99000001, 0,0.25, 0)
	Time_1.Size = UDim2.new(0, 20,0, 20)
	Time_1.Font = Enum.Font.GothamBold
	Time_1.Text = tonumber(Time)
	Time_1.TextColor3 = Color3.fromRGB(255,255,255)
	Time_1.TextSize = 14
	
	Tw({
		v = NotifyTemple_1,
		t = 0.2,
		s = "Exponential",
		d = "Out",
		g = {Size = UDim2.new(0, 150,0, 50)}
	}):Play()
	local rotnotify = Tw({
		v = NotificaitonTemple_1,
		t = 0.2,
		s = "Exponential",
		d = "Out",
		g = {Rotation = 0}
	})
	rotnotify:Play()
	rotnotify.Completed:Connect(function()
		Tw({
			v = Logo_2,
			t = 0.2,
			s = "Linear",
			d = "Out",
			g = {ImageTransparency = 0.9}
		}):Play()
	end)
	
	task.spawn(function()
		for i = Time,1,-1 do
			Time_1.Text = i
			task.wait(1)
		end
		Tw({
			v = NotificaitonTemple_1,
			t = 0.2,
			s = "Exponential",
			d = "Out",
			g = {Rotation = 10}
		}):Play()
		Tw({
			v = Logo_2,
			t = 0.1,
			s = "Exponential",
			d = "Out",
			g = {ImageTransparency = 1}
		}):Play()
		local twclose = Tw({
			v = NotifyTemple_1,
			t = .3,
			s = "Quint",
			d = "InOut",
			g = {Size = UDim2.new(0, 0,0, 0)}
		})
		twclose:Play()
		twclose.Completed:Connect(function()
			NotifyTemple_1:Destroy()
		end)
	end)
end
if game:IsLoaded() then
		pcall(function()
			local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
                        Camera:Stop()
			hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function() return end)
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function() return end)
		end)
	end
_G.Hitbox = 100
_G.CanAtackPlayers = false
local environment, replicatedstorage, players, net, client, modulepath, characterfolder, enemyfolder do
	environment = (getgenv or getrenv or getfenv)()
	replicatedstorage = game:GetService("ReplicatedStorage")
	players = game:GetService("Players")
	client = players.LocalPlayer
	modulepath = replicatedstorage:WaitForChild("Modules")
	net = modulepath:WaitForChild("Net")
	characterfolder = workspace:WaitForChild("Characters")
	enemyfolder = workspace:WaitForChild("Enemies")
end
local Module = {}
Module.AttackCooldown = tick()
local CachedChars = {}
function Module.IsAlive(Char: Model?): boolean
	if not Char then
		return nil
	end

	if CachedChars[Char] then
		return CachedChars[Char].Health > 0
	end

	local Hum = Char:FindFirstChildOfClass("Humanoid")
	CachedChars[Char] = Hum
	return Hum and Hum.Health > 0
end
local Settings = {
	ClickDelay = 0,
	AutoClick = false
}
Module.FastAttack = (function()
	if environment._trash_attack then
		return environment._trash_attack
	end
	local module = {
		NextAttack = 0,
		Distance = _G.Hitbox,
		attackMobs = true,
		attackPlayers = _G.CanAtackPlayers,
	}
	local RegisterAttack = net:WaitForChild("RE/RegisterAttack")
	local RegisterHit = net:WaitForChild("RE/RegisterHit")
	function module:AttackEnemy(EnemyHead,Table) 
		if EnemyHead and client:DistanceFromCharacter(EnemyHead.Position) < self.Distance then
			if not self.FirstAttack then
				RegisterAttack:FireServer(Settings.ClickDelay)
				self.FirstAttack = true
			end
			RegisterHit:FireServer(EnemyHead, (Table) and Table or {})
		end
	end
	function module:AttackNearest()
		local args = {
			[1] = nil,
			[2] = {}
		}
		for _, Enemy in enemyfolder:GetChildren() do
			if not args[1] and Enemy:FindFirstChild("HumanoidRootPart",true) and client:DistanceFromCharacter(Enemy.HumanoidRootPart.Position) < self.Distance then
				args[1] = Enemy:FindFirstChild("UpperTorso")
			else
				if Enemy:FindFirstChild("HumanoidRootPart",true) and client:DistanceFromCharacter(Enemy.HumanoidRootPart.Position) < self.Distance then
					table.insert(args[2],{
						[1] = Enemy,
						[2] = Enemy:FindFirstChild("UpperTorso")
					})
				end
			end
		end
		self:AttackEnemy(unpack(args))

		for _, Enemy in characterfolder:GetChildren() do
			if Enemy ~= client.Character then
				self:AttackEnemy(Enemy:FindFirstChild("UpperTorso"))
			end
		end

		if not self.FirstAttack then
			task.wait(0.5)
		end
	end

	function module:BladeHits()
		self:AttackNearest()
		self.FirstAttack = false
	end

	task.spawn(function()
		while task.wait(Settings.ClickDelay or 0.125) do
			if (tick() - Module.AttackCooldown) < 0.4833333194255829 then continue end
			if not Settings.AutoClick then continue end
			if not Module.IsAlive(client.Character) then continue end
			if not client.Character:FindFirstChildOfClass("Tool") then continue end

			module:BladeHits()
		end
	end)

	environment._trash_attack = module
	return module
end)()

if game.PlaceId == 2753915549 then
		W1 = true
	elseif game.PlaceId == 4442272183 then
		W2 = true
	elseif game.PlaceId == 7449423635 then
		W3 = true
	end

icons = {
	home = "133613215741054",
	setting = "137991920483370",
	visual = "127654928705257",
}

_G.Tween = false
_G.Auto_Level = false
_G.Auto_Farm_Near = false
_G.Kill_Aura = false
_G.Auto_Boss = false
_G.Auto_CakePrince = false
_G.Auto_Bone = false
_G.Auto_Random_Bone = false
_G.Auto_Elite = false
_G.Auto_HallowBoss = false
_G.Auto_ActiveV4 = false
_G.Auto_ActiveV3 = false
_G.Auto_Find_Berry = false
_G.Auto_Find_Fruit = false
_G.Auto_Farm_Chest = false
_G.Auto_Pull_Lever = false
_G.Auto_Pole1 = false
_G.Auto_Triden = false
_G.Auto_BisentoV2 = false
_G.Auto_Rengoku = false
_G.Auto_Swan_Glasses = false
_G.Auto_Law = false
_G.AutoChipLaw = false
_G.Auto_Dragon_Talon = false
_G.Auto_Electric_Claw = false
_G.Auto_SharkMan_Karate = false
_G.Auto_Superhuman = false
_G.Auto_God_Human = false
_G.RemoveNotify = false
_G.WalkonWater = false
_G.Remove_Fog = false
_G.AutoStat = false
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Auto_Level or
            _G.Auto_Farm_Near or
            _G.Kill_Aura or
            _G.Auto_Boss or
            _G.Auto_CakePrince or
            _G.Auto_Bone or
            _G.Auto_Elite or
            _G.Auto_HallowBoss or
            _G.Auto_Find_Berry or
            _G.Auto_Find_Fruit or
            _G.Auto_Farm_Chest or
            _G.Auto_Pull_Lever or
            _G.Auto_Pole1 or
            _G.Auto_Triden or
            _G.Auto_BisentoV2 or
            _G.Auto_Rengoku or
            _G.Auto_Swan_Glasses or
            _G.Auto_Law or
            _G.Auto_Dragon_Talon or
            _G.Auto_Electric_Claw or
            _G.Auto_SharkMan_Karate or
            _G.Auto_Superhuman or
            _G.Auto_God_Human then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)
spawn(function()
        while wait() do
            if _G.RemoveNotify then
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
            else
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
        end
    end
end)
spawn(function()
	while wait() do
		if _G.Remove_Fog then
			game:GetService("Lighting").FogEnd = 9e99
		else
			game:GetService("Lighting").FogEnd = 1500
		end
	end	
end)
function Notify(Header, Desc, Time)
    Library:Notify({
        Title = Header,
        Desc = Desc,
        Logo = 124835224003145,
        Time = Time
    })
end
Window = Library:CreateWindow({
	Title = "Syntax.dev",
	Logo = 124835224003145
})
General = Window:CreateTab({Title = "General", Desc = "ทั่วไป", Icon = icons.home})
Auto = Window:CreateTab({Title = "Automatic",Desc = "อัตโนมัติ",Icon = icons.home})
Item = Window:CreateTab({Title = "Items",Desc = "ไอเทม",Icon = icons.item})
Visual = Window:CreateTab({Title = "Visual",Desc = "การมองเห็น",Icon = icons.visual})
TP = Window:CreateTab({Title = "Teleport",Desc = "เทเลพอร์ท",Icon = icons.visual})
Misc = Window:CreateTab({Title = "Miscellaneous",Desc = "อื่นๆ",Icon = icons.visual})

General_Status = General:CreateSection({Title = "Status",Side = "Left"})
General_Level = General:CreateSection({Title = "Level",Side = "Left"})
General_Setting = General:CreateSection({Title = "Settings",Side = "Right"})
General_State = General:CreateSection({Title = "Stats",Side = "Right"})

Spawn = "<font color="rgb(144, 238, 144)">Spawn!</font>"
NotSpawn = "<font color="rgb(255, 99, 71)">Not Spawn</font>"

--Status
Elite = General_Status:CreateLabel({Title = "Elite Hunter : nil",Side = "Left"})
Lever = General_Status:CreateLabel({Title = "Pull The Lever : nil",Side = "Left"})
Fullnoon = General_Status:CreateLabel({Title = "Full Moon : nil",Side = "Left"})
Mirage_Island = General_Status:CreateLabel({Title = "'Mirage Island : nil",Side = "Left"})
Volcano_Island = General_Status:CreateLabel({Title = "Volcano Island : nil",Side = "Left"})
Kitsune_Island = General_Status:CreateLabel({Title = "Kitsune Island : nil",Side = "Left"})
Frozen_Dimensoin = General_Status:CreateLabel({Title = "Frozen Dimensoin : nil",Side = "Left"})

spawn(function()
    while task.wait(1) do
    pcall(function()
        if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
           Fullmoon:Set("Full Moon : 100%")
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
            Fullmoon:Set("Full Moon : 75%")
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
            Fullmoon:Set("Full Moon : 50%")
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
            Fullmoon:Set("Full Moon : 25%")
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
            Fullmoon:Set("Full Moon : 0%")
        else
            Fullmoon:Set("Full Moon : nil")
        end
    end)
	end
end)
spawn(function()
        while task.wait(1) do
            pcall(function()
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                Mirage_Island:Set("Mirage Island : " ..Spawn)
            else
                Mirage_Island:Set("Mirage Island : " ..NotSpawn)
             end
        end)
    end
end)
spawn(function()
    while task.wait(1) do
        pcall(function()
            if game.Workspace.Map:FindFirstChild("KitsuneIsland") then
                Kitsune_Island:Set("Kitsune Island : " ..Spawn)
            else
                Kitsune_Island:Set("Kitsune Island : " ..NotSpawn)
             end
        end)
    end
end)
spawn(function()
	pcall(function()
    	while task.wait(1) do
        	if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
            	Frozen_Dimensoin:Set("Frozen Dimensoin : " ..Spawn)
			else
            	Frozen_Dimensoin:Set("Frozen Dimensoin : " ..NotSpawn)
        	end
    	end
	end)
end)

spawn(function()
    while task.wait(1) do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or 
               game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or 
               game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or 
               game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or 
               game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or 
               game:GetService("Workspace").Enemies:FindFirstChild("Urban") then

                Elite:Set("Elite : " .. Spawn .. " | Killed : " .. 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))
            else
                Elite:Set("Elite : " .. NotSpawn .. " | Killed : " .. 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))
            end
        end)
    end
end)

--Level
General_Level:CreateToggle({Title = "Automatic Farm Level",Value = false,Callback = function(value)
	print(value)
end})
General_Level:CreateToggle({Title = "Automatic Farm Nearest",Value = false,Callback = function(value)
	print(value)
end})

--Settings
General_Setting:CreateDropdown({Title = "Select Weapon",List = {"Melee", "Sword"},Value = "Melee",Multi = false,Callback = function(value)
	print(value)
end})

General_Setting:CreateToggle({Title = "Fast Attack",Value = Settings.AutoClick,Callback = function(value)
	Settings.AutoClick = value
end})
General_Setting:CreateToggle({Title = "Can Attack Players",Value = _G.CanAtackPlayers,Callback = function(value)
	_G.CanAtackPlayers = value
end})
General_Setting:CreateSlider({Title = "Hitbox",Desc = "Fast Attack Hitbox",Min = 1,Max = 300,Value = _G.Hitbox,Callback = function(value)
	_G.Hitbox = value
end})
General_Setting:CreateToggle({Title = "Enable Race V3",Value = _G.Auto_ActiveV3,Callback = function(value)
	_G.Auto_ActiveV3 = value
end})
General_Setting:CreateToggle({Title = "Enable Race V4",Value = _G.Auto_ActiveV4,Callback = function(value)
	_G.Auto_ActiveV4 = value
end})
General_Setting:CreateToggle({Title = "Remove Notify",Value = _G.RemoveNotify,Callback = function(value)
	_G.RemoveNotify = value
end})
General_Setting:CreateToggle({Title = "No fog",Value = _G.Remove_Fog,Callback = function(value)
	_G.Remove_Fog = value
end})
General_Setting:CreateToggle({Title = "Walk On Water",Value = _G.WalkonWater,Callback = function(value)
	_G.WalkonWater = value
end})

melee = 1
sword = 1
gun = 1
bloxfruit = 1
hp = 1

General_State:CreateSlider({Title = "Melee",Desc = "Upgrade Melee Stats",Min = 1,Max = 2600,Value = 1,Callback = function(value)
	melee = value
end})
General_State:CreateSlider({Title = "Health",Desc = "Upgrade Health Stats",Min = 1,Max = 2600,Value = 1,Callback = function(value)
	hp = value
end})
General_State:CreateSlider({Title = "Sword",Desc = "Upgrade Sword Stats",Min = 1,Max = 2600,Value = 1,Callback = function(value)
	sword = value
end})
General_State:CreateSlider({Title = "Gun",Desc = "Upgrade Gun Stats",Min = 1,Max = 2600,Value = 1,Callback = function(value)
	gun = value
end})
General_State:CreateSlider({Title = "Bloxfruit",Desc = "Upgrade Bloxfruit Stats",Min = 1,Max = 2600,Value = 1,Callback = function(value)
	bloxfruit = value
end})
General_State:CreateToggle({Title = "Automatic Upgrade",Value = _G.AutoStat,Callback = function(value)
	_G.AutoStat = value
end})
spawn(function()
	while task.wait(0.3) do
		if _G.AutoStat then
			local args = {
        [1] = "AddPoint",
        [2] = "Melee",
        [3] = melee
    }            
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args2 = {
        [1] = "AddPoint",
        [2] = "Defense",
        [3] = hp
	}              
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args2))
	local args3 = {
        [1] = "AddPoint",
        [2] = "Sword",
        [3] = sword
    }            
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args3))
	local args4 = {
        [1] = "AddPoint",
        [2] = "Gun",
        [3] = gun
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args4))
	local args5 = {
        [1] = "AddPoint",
        [2] = "Demon Fruit",
        [3] = bloxfruit
    }            
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args5))
		end
	end
end)
General_State:CreateButton({Title = "UPGRADE",Mode = 1,Callback = function()
	local args = {
        [1] = "AddPoint",
        [2] = "Melee",
        [3] = melee
    }            
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args2 = {
        [1] = "AddPoint",
        [2] = "Defense",
        [3] = hp
	}              
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args2))
	local args3 = {
        [1] = "AddPoint",
        [2] = "Sword",
        [3] = sword
    }            
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args3))
	local args4 = {
        [1] = "AddPoint",
        [2] = "Gun",
        [3] = gun
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args4))
	local args5 = {
        [1] = "AddPoint",
        [2] = "Demon Fruit",
        [3] = bloxfruit
    }            
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args5))
end})
General_State:CreateButton({Title = "Reset Stats",Mode = 1,Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end})
General_State:CreateButton({Title = "Reroll Race",Mode = 1,Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end})










--Automatic
Auto1 = General:CreateSection({Title = "Boss Automatic",Side = "Right"})
Auto2 = General:CreateSection({Title = "Automatic",Side = "Left"})
Sea = General:CreateSection({Title = "Sea Events",Side = "Right"})
volcano = General:CreateSection({Title = "Vocalno Island",Side = "Left"})
mirage = General:CreateSection({Title = "Mirage Island",Side = "Right"})
kitsune = General:CreateSection({Title = "Vocalno Island",Side = "Left"})
frozen = General:CreateSection({Title = "Frozen Dimensoin",Side = "Right"})
Auto1:CreateImage({Title = "Automatic",Desc = "Cake Prince",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})
Auto1:CreateImage({Title = "Automatic",Desc = "Elite Hunter",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})
Auto1:CreateImage({Title = "Automatic",Desc = "Rip_Indra",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})
Auto2:CreateImage({Title = "Automatic",Desc = "Bone",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})
Auto2:CreateToggle({Title = "Automatic Random Bone",Value = _G.AutoStat,Callback = function(value)
	_G.AutoStat = value
end})
Auto2:CreateToggle({Title = "Automatic Pray",Value = _G.AutoStat,Callback = function(value)
	_G.AutoStat = value
end})
Sea:CreateToggle({Title = "Automatic Sea Events",Value = _G.AutoStat,Callback = function(value)
	_G.AutoStat = value
end})
Sea:CreateToggle({Title = "No Clip Ship",Value = _G.AutoStat,Callback = function(value)
	_G.AutoStat = value
end})
Sea:CreateToggle({Title = "Remove Rock",Value = _G.AutoStat,Callback = function(value)
	_G.AutoStat = value
end})
Sea:CreateToggle({Title = "Ignore Monster",Value = _G.AutoStat,Callback = function(value)
	_G.AutoStat = value
end})
Sea:CreateDropdown({
	Title = "Select Ignore Monster",
	List = {"Shark", "Ship", "Ghost Ship", "Terror Shark", "Piranha"},
	Value = {"Ship", "Shark", "Piranha"},
	Multi = true,
	Callback = function(value)
		print(value)
end})
Sea:CreateSlider({Title = "Speed",Desc = "Insert Ship Speed",Min = 1,Max = 350,Value = 1,Callback = function(value)
	bloxfruit = value
end})
volcano:CreateImage({Title = "Tween",Desc = "Tween to Volcano Island",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})
volcano:CreateImage({Title = "Automatic",Desc = "Reduce Pressure",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})
volcano:CreateImage({Title = "Automatic",Desc = "Collect Dragon Egg",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})
volcano:CreateImage({Title = "Automatic",Desc = "Collect Dinosaur Bone",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})
mirage:CreateImage({Title = "Tween",Desc = "Tween to Mirage Island",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})
mirage:CreateToggle({Title = "Find Advanced Dealer",Value = _G.AutoStat,Callback = function(value)
	_G.AutoStat = value
end})
mirage:CreateToggle({Title = "Farm Chest",Value = _G.AutoStat,Callback = function(value)
	_G.AutoStat = value
end})
kitsune:CreateImage({Title = "Tween",Desc = "Tween to Kitsune Island",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})
kitsune:CreateImage({Title = "Automatic",Desc = "Azure Amber",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})
frozen:CreateImage({Title = "Tween",Desc = "Tween to Frozen Dimensoin",Icon = 79977248698994,Toggle = true,Value = false,Callback = function(value)
	print(value)
end})