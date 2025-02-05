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
	local CloseUI = Instance.new("TextButton")
	local UICorner_1 = Instance.new("UICorner")
	local Icon_1 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local ImageLabel_1 = Instance.new("ImageLabel")

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

	CloseUI.Name = "CloseUI"
	CloseUI.Parent = Synack
	CloseUI.AnchorPoint = Vector2.new(0, 1)
	CloseUI.BackgroundColor3 = Color3.fromRGB(22,22,22)
	CloseUI.BorderColor3 = Color3.fromRGB(0,0,0)
	CloseUI.BorderSizePixel = 0
	CloseUI.Position = UDim2.new(0.00999999978, 0,0.99000001, 0)
	CloseUI.Size = UDim2.new(0, 50,0, 50)
	CloseUI.Text = ""

	lak(CloseUI)

	UICorner_1.Parent = CloseUI
	UICorner_1.CornerRadius = UDim.new(1,0)

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

	local function closeopenui()
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
		Shadow.Visible = not Shadow.Visible
	end

	CloseUI.MouseButton1Click:Connect(function()
		closeopenui()
	end)

	game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
		if not gameProcessed and input.KeyCode == Enum.KeyCode.LeftControl then
			closeopenui()
		end
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

	function Library.Tab:SetVisible(tab, value)
		for i, v in pairs(ScrollingFrame_1:GetChildren()) do
			if v:IsA("Frame") and v:FindFirstChild("List") and v.List:FindFirstChild("Title") and v.List.Title:FindFirstChild("TitleTab") and v.List.Title.TitleTab.Text == tab then
				v.Visible = value
			end
		end
	end

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
			UIListLayout_9.Padding = UDim.new(0,5)
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

			function Library.Main:SetVisible(value)
				Section_1.Visible = value
			end

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
				local Rounding = infolib(info, "rounding") or 0
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

				local function roundToDecimal(value, decimals)
					local factor = 10 ^ decimals
					return math.floor(value * factor + 0.5) / factor
				end

				local function updateSlider(value)
					value = math.clamp(value, Min, Max)
					value = roundToDecimal(value, Rounding)

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
						ValueBox_1.Text = tostring(roundToDecimal(currentValue, Rounding))
						ValueBox_1.Size = UDim2.new(0, ValueBox_1.TextBounds.X + 20, 0, 20)
					end

					ValueBox_1.Text = tostring(roundToDecimal(targetValue, Rounding))
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
					local value = relativeX * (Max - Min) + Min
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

				local Title = infolib(info, "name") or infolib(info, "title") or "Dropdown"
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

				function itemslist:Clear(a)
					local function shouldClear(v)
						if a == nil then
							return true
						elseif type(a) == "string" then
							return v:FindFirstChild("LabelFrame") and v.LabelFrame:FindFirstChild("Title") and v.LabelFrame.Title.Text == a
						elseif type(a) == "table" then
							for _, name in ipairs(a) do
								if v:FindFirstChild("LabelFrame") and v.LabelFrame:FindFirstChild("Title") and v.LabelFrame.Title.Text == name then
									return true
								end
							end
						end
						return false
					end

					for _, v in ipairs(ScrollingFrame_1:GetChildren()) do
						if v:IsA("Frame") and shouldClear(v) then
							if selectedItem and v:FindFirstChild("LabelFrame") and v.LabelFrame:FindFirstChild("Title") and v.LabelFrame.Title.Text == selectedItem then
								selectedItem = nil
								Selected_1.Text = ""
							end
							v:Destroy()
						end
					end

					if selectedItem == a or Selected_1.Text == a then
						selectedItem = nil
						Selected_1.Text = ""
					end

					if a == nil then
						selectedItem = nil
						Selected_1.Text = ""
					end
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
							if #selectedList > 0 then
								Selected_1.Text = table.concat(selectedList, ", ")
							else
								Selected_1.Text = ""
							end
							pcall(function()
								Callback(selectedList)
							end)
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
								if #selectedList > 0 then
									Selected_1.Text = table.concat(selectedList, ", ")
								else
									Selected_1.Text = ""
								end
								pcall(function()
									Callback(selectedList)
								end)
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
					Desc_1.AutomaticSize = Enum.AutomaticSize.Y
					Desc_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Desc_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Desc_1.BackgroundTransparency = 1
					Desc_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Desc_1.BorderSizePixel = 0
					Desc_1.LayoutOrder = 1
					Desc_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
					Desc_1.Size = UDim2.new(0, 130,0, 11)
					Desc_1.Font = Enum.Font.GothamBold
					Desc_1.Text = tostring(Desc)
					Desc_1.TextColor3 = Color3.fromRGB(255,255,255)
					Desc_1.TextSize = 8
					Desc_1.TextTransparency = 0.5
					Desc_1.TextXAlignment = Enum.TextXAlignment.Left
					Desc_1.TextWrapped = true

					Title_1.Name = "Title"
					Title_1.Parent = TextHub_1
					Title_1.AutomaticSize = Enum.AutomaticSize.Y
					Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Title_1.BackgroundTransparency = 1
					Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Title_1.BorderSizePixel = 0
					Title_1.Position = UDim2.new(0.248750001, 0,0.0644999966, 0)
					Title_1.Size = UDim2.new(0, 130,0, 11)
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

					UIListLayout_1:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
						Image.Size = UDim2.new(1, 0, 0, UIListLayout_1.AbsoluteContentSize.Y + 15)
					end)

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
					Desc_1.AutomaticSize = Enum.AutomaticSize.Y
					Desc_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Desc_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Desc_1.BackgroundTransparency = 1
					Desc_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Desc_1.BorderSizePixel = 0
					Desc_1.LayoutOrder = 1
					Desc_1.Position = UDim2.new(0.248750001, 0,0.0944999978, 0)
					Desc_1.Size = UDim2.new(0, 130,0, 11)
					Desc_1.Font = Enum.Font.GothamBold
					Desc_1.Text = tostring(Desc)
					Desc_1.TextColor3 = Color3.fromRGB(255,255,255)
					Desc_1.TextSize = 8
					Desc_1.TextTransparency = 0.5
					Desc_1.TextXAlignment = Enum.TextXAlignment.Left
					Desc_1.TextWrapped = true

					Title_1.Name = "Title"
					Title_1.Parent = TextHub_1
					Title_1.AutomaticSize = Enum.AutomaticSize.Y
					Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
					Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Title_1.BackgroundTransparency = 1
					Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Title_1.BorderSizePixel = 0
					Title_1.Position = UDim2.new(0.248750001, 0,0.0644999966, 0)
					Title_1.Size = UDim2.new(0, 130,0, 11)
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

					UIListLayout_1:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
						ImageToggle.Size = UDim2.new(1, 0, 0, UIListLayout_1.AbsoluteContentSize.Y + 35)
					end)

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

			function Library.Main:CreateSelect(info)
				local Title = infolib(info, "name") or infolib(info, "title") or "Selection"
				local Desc = infolib(info, "desc") or infolib(info, "description")
				local Value = infolib(info, "defuse") or infolib(info, "value")
				local Callback = infolib(info, "callback") or function() end
				local List = infolib(info, "list")

				local SelectMode = Instance.new("Frame")
				local inside_1 = Instance.new("Frame")
				local UICorner_1 = Instance.new("UICorner")
				local TextHub_1 = Instance.new("Frame")
				local UIListLayout_1 = Instance.new("UIListLayout")
				local Desc_1 = Instance.new("TextLabel")
				local Title_1 = Instance.new("TextLabel")
				local ListFunc_1 = Instance.new("Frame")
				local ValueBox_1 = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local UIPageLayout_1 = Instance.new("UIPageLayout")
				local UIListLayout_2 = Instance.new("UIListLayout")
				local Right_1 = Instance.new("ImageButton")
				local Left_1 = Instance.new("ImageButton")

				SelectMode.Name = "SelectMode"
				SelectMode.Parent = Section_1
				SelectMode.BackgroundColor3 = Color3.fromRGB(255,255,255)
				SelectMode.BackgroundTransparency = 1
				SelectMode.BorderColor3 = Color3.fromRGB(0,0,0)
				SelectMode.BorderSizePixel = 0
				SelectMode.LayoutOrder = 2
				SelectMode.Size = UDim2.new(1, 0,0, 35)

				inside_1.Name = "inside"
				inside_1.Parent = SelectMode
				inside_1.AnchorPoint = Vector2.new(0.5, 0.5)
				inside_1.BackgroundColor3 = Color3.fromRGB(44,44,44)
				inside_1.BorderColor3 = Color3.fromRGB(0,0,0)
				inside_1.BorderSizePixel = 0
				inside_1.Position = UDim2.new(0.5, 0,0.5, 0)
				inside_1.Size = UDim2.new(0.899999976, 0,1, 0)

				UICorner_1.Parent = inside_1
				UICorner_1.CornerRadius = UDim.new(0,5)

				TextHub_1.Name = "TextHub"
				TextHub_1.Parent = inside_1
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
				Desc_1.Text = Desc
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
				Title_1.Text = Title
				Title_1.TextColor3 = Color3.fromRGB(255,255,255)
				Title_1.TextSize = 11
				Title_1.TextXAlignment = Enum.TextXAlignment.Left

				ListFunc_1.Name = "ListFunc"
				ListFunc_1.Parent = inside_1
				ListFunc_1.AnchorPoint = Vector2.new(1, 0.5)
				ListFunc_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ListFunc_1.BackgroundTransparency = 1
				ListFunc_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ListFunc_1.BorderSizePixel = 0
				ListFunc_1.Position = UDim2.new(0.980000019, 0,0.5, 0)
				ListFunc_1.Size = UDim2.new(0, 20,0, 20)

				ValueBox_1.Name = "ValueBox"
				ValueBox_1.Parent = ListFunc_1
				ValueBox_1.AnchorPoint = Vector2.new(1, 0.5)
				ValueBox_1.BackgroundColor3 = Color3.fromRGB(22,22,22)
				ValueBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ValueBox_1.BorderSizePixel = 0
				ValueBox_1.Position = UDim2.new(0.959999979, 0,0.5, 0)
				ValueBox_1.Size = UDim2.new(0, 60,0, 20)
				ValueBox_1.ClipsDescendants = true

				UICorner_2.Parent = ValueBox_1
				UICorner_2.CornerRadius = UDim.new(1,0)

				UIPageLayout_1.Parent = ValueBox_1
				UIPageLayout_1.EasingStyle = Enum.EasingStyle.Exponential
				UIPageLayout_1.TweenTime = 0.5
				UIPageLayout_1.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIPageLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center
				UIPageLayout_1.ScrollWheelInputEnabled = false

				UIListLayout_2.Parent = ListFunc_1
				UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
				UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Right
				UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

				Right_1.Name = "Right"
				Right_1.Parent = ListFunc_1
				Right_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Right_1.BackgroundTransparency = 1
				Right_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Right_1.BorderSizePixel = 0
				Right_1.LayoutOrder = -1
				Right_1.Size = UDim2.new(0, 20,0, 20)
				Right_1.Image = "rbxassetid://14916981327"

				Left_1.Name = "Left"
				Left_1.Parent = ListFunc_1
				Left_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Left_1.BackgroundTransparency = 1
				Left_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Left_1.BorderSizePixel = 0
				Left_1.LayoutOrder = 1
				Left_1.Size = UDim2.new(0, 20,0, 20)
				Left_1.Image = "rbxassetid://14929077622"

				local g = {}

				function g:addlist(item)
					local Value_1 = Instance.new("TextLabel")
					Value_1.Name = "Value"
					Value_1.Parent = ValueBox_1
					Value_1.BackgroundTransparency = 1
					Value_1.Size = UDim2.new(0.9, 0, 1, 0)
					Value_1.Font = Enum.Font.Gotham
					Value_1.Text = item
					Value_1.TextColor3 = Color3.fromRGB(255,255,255)
					Value_1.TextSize = 9
				end

				for _, item in ipairs(List) do
					g:addlist(item)
				end

				Right_1.MouseButton1Click:Connect(function()
					UIPageLayout_1:Previous()
					Callback(UIPageLayout_1.CurrentPage.Text)
					Tw({
						v = ValueBox_1,
						t = 0.15,
						s = "Exponential",
						d = "Out",
						g = {Size = UDim2.new(0, UIPageLayout_1.CurrentPage.TextBounds.X + 10,0, 20)}
					}):Play()
				end)

				Left_1.MouseButton1Click:Connect(function()
					UIPageLayout_1:Next()
					Callback(UIPageLayout_1.CurrentPage.Text)
					Tw({
						v = ValueBox_1,
						t = 0.15,
						s = "Exponential",
						d = "Out",
						g = {Size = UDim2.new(0, UIPageLayout_1.CurrentPage.TextBounds.X + 10,0, 20)}
					}):Play()
				end)

				delay(0,function()
					for i, v in pairs(ValueBox_1:GetChildren()) do
						if v:IsA("TextLabel") and v.Text == Value then
							UIPageLayout_1:JumpTo(v)
						end
					end
					Tw({
						v = ValueBox_1,
						t = 0.15,
						s = "Exponential",
						d = "Out",
						g = {Size = UDim2.new(0, UIPageLayout_1.CurrentPage.TextBounds.X + 10,0, 20)}
					}):Play()
					Callback(UIPageLayout_1.CurrentPage.Text)
				end)

				return g
			end

			function Library.Main:CreateKeybind(info)
				local Title = infolib(info, "name") or infolib(info, "title") or "Keybind"
				local Key = infolib(info, "key") or Enum.KeyCode.Q
				local Value = infolib(info, "defuse") or infolib(info, "value") or false
				local Callback = infolib(info, "callback") or function() end

				local Keybind = Instance.new("Frame")
				local Inside_1 = Instance.new("Frame")
				local UIPadding_1 = Instance.new("UIPadding")
				local Title_1 = Instance.new("TextLabel")
				local bind_1 = Instance.new("Frame")
				local UICorner_1 = Instance.new("UICorner")
				local Value_1 = Instance.new("TextLabel")
				local UICorner_2 = Instance.new("UICorner")
				local Click_1 = Instance.new("TextButton")

				Keybind.Name = "Keybind"
				Keybind.Parent = Section_1
				Keybind.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Keybind.BackgroundTransparency = 1
				Keybind.BorderColor3 = Color3.fromRGB(0,0,0)
				Keybind.BorderSizePixel = 0
				Keybind.LayoutOrder = 2
				Keybind.Size = UDim2.new(1, 0,0, 30)

				Inside_1.Name = "Inside"
				Inside_1.Parent = Keybind
				Inside_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Inside_1.BackgroundColor3 = Color3.fromRGB(44,44,44)
				Inside_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Inside_1.BorderSizePixel = 0
				Inside_1.Position = UDim2.new(0.5, 0,0.5, 0)
				Inside_1.Size = UDim2.new(0.899999976, 0,0, 30)

				UIPadding_1.Parent = Inside_1
				UIPadding_1.PaddingLeft = UDim.new(0,8)
				UIPadding_1.PaddingRight = UDim.new(0,5)

				Title_1.Name = "Title"
				Title_1.Parent = Inside_1
				Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_1.BackgroundTransparency = 1
				Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_1.BorderSizePixel = 0
				Title_1.Size = UDim2.new(0.800000012, 0,1, 0)
				Title_1.Font = Enum.Font.GothamBold
				Title_1.Text = Title
				Title_1.TextColor3 = Color3.fromRGB(255,255,255)
				Title_1.TextSize = 10
				Title_1.TextXAlignment = Enum.TextXAlignment.Left
				Title_1.TextTransparency = 0.5

				bind_1.Name = "bind"
				bind_1.Parent = Inside_1
				bind_1.AnchorPoint = Vector2.new(1, 0.5)
				bind_1.BackgroundColor3 = Color3.fromRGB(22,22,22)
				bind_1.BorderColor3 = Color3.fromRGB(0,0,0)
				bind_1.BorderSizePixel = 0
				bind_1.LayoutOrder = 1
				bind_1.Size = UDim2.new(0, 20,0, 20)
				bind_1.Position = UDim2.new(1, 0, 0.5, 0)

				UICorner_1.Parent = bind_1
				UICorner_1.CornerRadius = UDim.new(0,4)

				Value_1.Name = "Value"
				Value_1.Parent = bind_1
				Value_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Value_1.BackgroundTransparency = 1
				Value_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Value_1.BorderSizePixel = 0
				Value_1.Size = UDim2.new(1, 0,1, 0)
				Value_1.Font = Enum.Font.GothamBold
				Value_1.Text = tostring(Key):gsub("Enum.KeyCode.", "")
				Value_1.TextColor3 = Color3.fromRGB(255,255,255)
				Value_1.TextSize = 10

				UICorner_2.Parent = Inside_1
				UICorner_2.CornerRadius = UDim.new(0,5)

				Click_1.Name = "Click"
				Click_1.Parent = Keybind
				Click_1.Active = true
				Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Click_1.BackgroundTransparency = 1
				Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Click_1.BorderSizePixel = 0
				Click_1.Size = UDim2.new(1, 0,1, 0)
				Click_1.Font = Enum.Font.SourceSans
				Click_1.Text = ""
				Click_1.TextSize = 14

				local function adjustBoxBindSize()
					local textSize = game:GetService("TextService"):GetTextSize(Value_1.Text, Value_1.TextSize, Value_1.Font, Vector2.new(1000, 1000))
					bind_1.Size = UDim2.new(0, textSize.X + 10, 0, 20)
				end

				adjustBoxBindSize()

				local function changeKey()
					Value_1.Text = "..."
					local inputConnection
					Tw({
						v = Title_1,
						t = 0.15,
						s = "Linear",
						d = "Out",
						g = {TextTransparency = 0}
					}):Play()

					inputConnection = game:GetService("UserInputService").InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.Keyboard then
							Key = input.KeyCode
							Value_1.Text = tostring(Key):gsub("Enum.KeyCode.", "")
							adjustBoxBindSize()
							inputConnection:Disconnect()
							Tw({
								v = Title_1,
								t = 0.15,
								s = "Linear",
								d = "Out",
								g = {TextTransparency = 0.5}
							}):Play()
							Callback(Key, Value)
						end
					end)
				end

				game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessed)
					if input.KeyCode == Key then
						Value = not Value
						if Value then
							Tw({
								v = Title_1,
								t = 0.15,
								s = "Linear",
								d = "Out",
								g = {TextTransparency = 0}
							}):Play()
						else
							Tw({
								v = Title_1,
								t = 0.15,
								s = "Linear",
								d = "Out",
								g = {TextTransparency = 0.5}
							}):Play()
						end
						Callback(Key, Value)
					end
				end)

				delay(0, function()
					Callback(Key, Value)
				end)

				Click_1.MouseButton1Click:Connect(function()
					changeKey()
				end)
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
return Library
