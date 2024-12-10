gs_ = game.GetService;
w = wait;
t = task;
tw = t.wait;
v3 = Vector3.new;
new = Instance.new;
c = c;
_ws = gs_(game, "Workspace");
_py = gs_(game, "Players");
_cui = gs_(game, "CoreGui");
_rs = gs_(game, "RunService");
_t = gs_(game, "TweenService");
_tps = gs_(game, "TeleportService");
_vsi = gs_(game "VirtualUser");
_hb = _rs.Heartbeat;
_id = game.PlaceId;
_localpy = _py.LocalPlayer;
_bp = _localpy.BackPack;
_pui = _localpy:WaitForChild("PlayerGui");
_charpy = _localpy and _localpy.Character;
_humanoid = _charpy and _charpy:WaitforChild("Humanoid");
_root = _charpy and _charpy:WaitForChild("HumanoidRootPart");
_c = _root.CFrame;
ESP = {};
if not _G.FullBrightExecuted then
	_G.FullBrightEnabled = false
	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}
	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)
	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)
	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)
	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)
	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)
	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end
l = new("Folder")
l.Name = "s;"
l.Parent = _ws
_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
TheMimic = {
	AutoDisableOmukade = false,
	AutoButterfly = false,
	AutoHeart = false,
	AutoSaigomo = false,
	AutoLevers = false,
	AutoTowerSafe = false,
	AutoNotes = false,
	AutoNureStage2 = false,
	AutoCanon = false,
	Autofreeyourself = false,
	AutoRaft = false,
	AutoSafePlace = false,
	AutoSafePlayDad = false,
	AutoEquipKatanaYurie = false,
	AutoCollectKatana = false,
	AutoRingmaster = false,
	AutoToys = false,
	AutoCandy = false,
	AutoOrbs = false,
	AutoShrine = false
}
icons = {
	jigoku = "77433089329441",
	halloween = "80672854478576",
	classic = "130838633275293",
	twt = "77862734718204",
	skip = "79038346329753",
	home = "133613215741054",
	setting = "137991920483370",
	visual = "127654928705257",
	butterfly = "136647226583796",
	armor = "77536494874217",
	heart = "106174042646581",
	city = "138337860897539",
	book = "120492650036987",
	rat = "90638151031209",
	nagisa = "139594112747975",
	town = "122206914121113",
	picture = "116071198205647",
	candle = "87665575601109",
	ship = "126114158412949",
	candle12345 = "103691622726449",
	sea = "119791624131256",
	cow = "80559215432493",
	meat = "140363178495071",
	skull = "121988360964140",
	lever = "114749792758381",
	cook = "111144954590601",
	run = "81057527274586",
	curse = "84093924271385",
	tower = "87317317173411",
	kid = "116806426916397",
	note = "114762848241346",
	mezu = "78340265109296",
	torch = "113335549060774",
	puzzle = "112798812841371",
	boat = "83061453290004",
	dad = "80508165247811",
	train = "87987329351272",
	larve = "91110594624023",
	mud = "101980536250174",
	tree = "78279302198719",
	pumpkin = "75277530889783",
	toy = "129725092479761",
	sleing = "79435923333967",
	key = "86752945329344",
	helpfriends = "106898999468334",
	box = "84397131528427",
	card = "78548387815144",
	ringmasterhat = "130947881197627",
	quest = "97213053447234",
	orb = "81808294923292",
	boss = "117068825773483",
	misc = "126463033320653",
	item = "102070016277492",
	ghost = "82369995769113",
	candy = "123573154587128",
	potion = "139466623335838",
	information = "70579613022218",
	bookmark = "109302457739317",
	teleport = "70572099255504",
	bypass = "73725962179866",
	Warning = "138989383837411",
	messeng = "81861848107088",
	shrine = "114056999986858"
}
local Iden
pcall(function() Iden = identifyexecutor() end)
local UNC
function fireproximitypromptX(obj)
	if Iden == "Solara" then
		pcall(function()
			UNC = (getgenv and getgenv()) or _G or shared

			function UNC.fireSolaraPrompt(ProximityPrompt, ...)
				local Execonce = Instance.new("Part")
				Execonce.Anchored = true
				Execonce.CanTouch = false
				Execonce.CanCollide = false
				Execonce.CanQuery = false
				Execonce.CastShadow = false
				Execonce.Size = Vector3.new(0.01, 0.01, 0.01)
				Execonce.Parent = workspace
				Execonce.Name = "Register"
				Execonce.Transparency = 1

				local function Init()
					local Camera = workspace.CurrentCamera
					Execonce.CFrame = Camera.CFrame * c(0, 0, -4)
					ProximityPrompt.HoldDuration = -5
					ProximityPrompt.MaxActivationDistance = 250
					ProximityPrompt.Enabled = true
					ProximityPrompt.RequiresLineOfSight = false
					ProximityPrompt.Parent = Execonce

					local spam = task.spawn(function()
						while true do
							tw()
							Execonce.CFrame = Camera.CFrame * c(0, 0, -4)
							ProximityPrompt:InputHoldBegin()
							game:GetService("RunService").RenderStepped:Wait()
							ProximityPrompt:InputHoldEnd()
						end
					end)

					ProximityPrompt.Triggered:Wait()
					pcall(function() task.cancel(spam) end)

					local Loaded = UNC.Prompts[ProximityPrompt]
					if Loaded then
						ProximityPrompt.HoldDuration = Loaded.HoldDuration
						ProximityPrompt.MaxActivationDistance = Loaded.MaxActivationDistance
						ProximityPrompt.RequiresLineOfSight = Loaded.RequiresLineOfSight
						ProximityPrompt.Parent = Loaded.Parent
					end
				end

				Init()
			end

			UNC["fireSolaraPrompt"] = UNC.fireSolaraPrompt
		end)

		local c = obj:FindFirstChildOfClass("ProximityPrompt", true)
		if c then
			UNC.fireSolaraPrompt(c)
		end
	else
		local c = obj:FindFirstChildOfClass("ProximityPrompt", true)
		if c then
			fireproximityprompt(c)
		end
	end
end
function fire(prompt)
	if Iden == "Solara" then
		pcall(function()
			UNC = (getgenv and getgenv()) or _G or shared

			function UNC.fireSolaraPrompt(ProximityPrompt, ...)
				local Execonce = Instance.new("Part")
				Execonce.Anchored = true
				Execonce.CanTouch = false
				Execonce.CanCollide = false
				Execonce.CanQuery = false
				Execonce.CastShadow = false
				Execonce.Size = Vector3.new(0.01, 0.01, 0.01)
				Execonce.Parent = workspace
				Execonce.Name = "Register"
				Execonce.Transparency = 1

				local function Init()
					local Camera = workspace.CurrentCamera
					Execonce.CFrame = Camera.CFrame * c(0, 0, -4)
					ProximityPrompt.HoldDuration = -5
					ProximityPrompt.MaxActivationDistance = 250
					ProximityPrompt.Enabled = true
					ProximityPrompt.RequiresLineOfSight = false
					ProximityPrompt.Parent = Execonce

					local spam = task.spawn(function()
						while true do
							tw()
							Execonce.CFrame = Camera.CFrame * c(0, 0, -4)
							ProximityPrompt:InputHoldBegin()
							game:GetService("RunService").RenderStepped:Wait()
							ProximityPrompt:InputHoldEnd()
						end
					end)

					ProximityPrompt.Triggered:Wait()
					pcall(function() task.cancel(spam) end)

					local Loaded = UNC.Prompts[ProximityPrompt]
					if Loaded then
						ProximityPrompt.HoldDuration = Loaded.HoldDuration
						ProximityPrompt.MaxActivationDistance = Loaded.MaxActivationDistance
						ProximityPrompt.RequiresLineOfSight = Loaded.RequiresLineOfSight
						ProximityPrompt.Parent = Loaded.Parent
					end
				end

				Init()
			end

			UNC["fireSolaraPrompt"] = UNC.fireSolaraPrompt
		end)

		local c = obj:FindFirstChildOfClass("ProximityPrompt", true)
		if c then
			UNC.fireSolaraPrompt(c)
		end
	else
		local c = obj:FindFirstChildOfClass("ProximityPrompt", true)
		if c then
			fireproximityprompt(c)
		end
	end
end


Set = {
	Click = false
}

function noclip(value)
	if value then
		Clip = value
		function Nocl()
			if Clip == false and _charpy ~= nil then
				for _, v in pairs(_charpy:GetDescendants()) do
					if v:IsA"BasePart" and v.CanCollide and v.Name ~= floatName then v.CanCollide = false end
				end
			end
			tw(0.21)
		end
		Noclip = _rs.Stepped:Connect(Nocl)
	else
		if Noclip then
			Noclip:Disconnect()
		end
		Clip = true
	end
end

local connection
local import
_def = {
	["Find"] = {
		["Normal"] = function(obj, finalobj, callback, deep)
			if not deep then
				import = obj:FindFirstChild(finalobj)
			else
				import = obj:FindFirstChild(finalobj, true)
			end
			if import then
				callback(import)
			end
		end;
		["Class"] = function(obj, finalobj, callback, deep)
			if not deep then
				import = obj:FindFirstChildOfClass(finalobj)
			else
				import = obj:FindFirstChildOfClass(finalobj, true)
			end
			if import then
				callback(import)
			end
		end;
		["Fireprompt"] = function(obj)
			Prompt = obj:FindFirstChildOfClass("ProximityPrompt", true)
			if Prompt then
				tw(0.1)
				fireproximitypromptX(Prompt)
			end
		end;
	};
	["for _, v"] = {
		["GetChildren"] ={
			["Name"] = function(obj, Name, callback)
					for _, v in pairs(obj:GetChildren()) do
						if v.Name == Name then
							callback(v)
						end
				end
			end;
			["Class"] = function(obj, Name, callback)
					for _, v in pairs(obj:GetChildren()) do
						if v.ClassName == Name then
							callback(v)
						end
				end
			end;
			["IsA"] = function(obj, Name, callback)
					for _, v in pairs(obj:GetChildren()) do
						if v:IsA(Name) then
							callback(v)
						end
					end
			end;
		};
		["GetDescendants"] = {
			["Name"] = function(obj, Name, callback)
				for _, v in pairs(obj:GetDescendants()) do
						if v.Name == Name then
							callback(v)
						end
				end
			end;
			["Class"] = function(obj, Name, callback)
				for _, v in pairs(obj:GetDescendants()) do
						if v.ClassName == Name then
							callback(v)
						end
				end
			end;
			["IsA"] = function(obj, Name, callback)
				for _, v in pairs(obj:GetDescendants()) do
						if v:IsA(Name) then
							callback(v)
						end
				end
			end;
		}
	};
	["Loop"] = function(global, delay, callback)
        while global do
            tw(delay)
            callback()
        end
    end
}

_setFunctions = {
	["fire"] = function()
		_def["GetDescendants"].IsA(_ws, "ProximityPrompt", function(v)
			fire(v)
		end)
	end;
	["TP"] = {
		["Normal"] = function(C, val, S)
			pcall(function()
				Tween = val
				local c = C
				if not Tween then
					_c = c
				else
					local startPos = _c
					local startTime = tick()
					local distance = (startPos.Position - c.Position).Magnitude
					local duration = distance / S
					connection = _hb:Connect(function()
						local elapsedTime = tick() - startTime
						local alpha = math.min(elapsedTime / duration, 1)
						local newCFrame = startPos:Lerp(c, alpha)
						noclip(true)
						_c = newCFrame
						if alpha >= 1 then
							connection:Disconnect()
							noclip(false)
						end
					end)
				end
			end)
		end;
		["Model"] = function(model, val, S)
			pcall(function()
				C = model:GetPivot()
				Tween = val
				local c = C.WorldPivot.CFrame
				if not Tween then
					_c = c
				else
					local startPos = _c
					local startTime = tick()
					local distance = (startPos.Position - c.Position).Magnitude
					local duration = distance / S
					connection = _hb:Connect(function()
						local elapsedTime = tick() - startTime
						local alpha = math.min(elapsedTime / duration, 1)
						local newCFrame = startPos:Lerp(c, alpha)
						noclip(true)
						_c = newCFrame
						if alpha >= 1 then
							connection:Disconnect()
							noclip(false)
						end
					end)
				end
			end)
		end;
	};
	["Control"] = function(v)
		Controls = require(_localpy:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule")):GetControls()
		if v then
			Controls:Enable()
		else
			Controls:Disable()
		end
	end;
	["TeleportID"] = function(id)
		_tps:Teleport(id, _localpy)
	end;
	["KickHandle"] = function(str, de)
		tw(de)
		_localpy:Kick(str)
	end;
	["+"] = function(name, size, pos)
		S = new("Part")
		S.Parent = l
		S.Transparency = 1
		S.Anchored = true
		S.Size = size
		S.CFrame = pos
		S.Name = name
	end;
	["Click"] = function(value)
		if value then
			Set.Click = true
			_def["Loop"](Set.Click, 0.1, function()
				_vsi:CaptureController()
				_vsi(Vector2.new(1.28e3, 500))
				tw(0.1)
			end)
		else
			Set.Click = false
		end
	end;
	["ToolSize"] = function(tool, value)
		_def["GetChildren"].Name(_bp, tool, function(v)
			_def["GetChildren"].IsA(v, "MeshPart" or "Part", function(v2)
				v2.Size = value
				v2.Massless = true
			end)
		end)
		_def["GetChildren"].Name(_charpy, tool, function(v)
			_def["GetChildren"].IsA(v, "MeshPart" or "Part", function(v2)
				v2.Size = value
				v2.Massless = true
			end)
		end)
	end;
	["ToolEquip"] = function(v)
		_def["Find"].Normal(_bp, v, function(v2)
			if v2 then
				v2.Parent = _charpy
			end
		end, false)
	end;
	["Hitbox"] = function(parent, v, vec3)
		_def["Find"].Normal(parent, v, function(part)
			if part then
				part.Size = vec3
			end
		end, true)
	end;
	["ESP"] = function(obj, Color, Size)
		if not obj:FindFirstChild("BoxHandleAdornment") then
			local Box = new("BoxHandleAdornment")
			Box.Color3 = Color
			Box.AlwaysOnTop = true
			Box.Size = Size
			Box.Transparency = 0.5
			Box.Adornee = obj
			Box.ZIndex = 1
			Box.Parent = obj
			table.insert(ESP, obj)
		end
	end;
	["ClearESP"] = function()
		for _, v in pairs(ESP) do
			if v:FindFirstChild("BoxHandleAdornment") then
				v.BoxHandleAdornment:Destroy()
			end
		end
		ESP = {}
	end;
}

_Game = {
	["SkipInstant"] = function()
			--Classic
			if _id == 15996404472 then     --1.1
				_setFunctions["TP"].Normal(c(3507.028564453125, 43.13663864135742, -1541.9735107421875))
			elseif _id == 15996407335 then --1.2
				_setFunctions["TP"].Normal(c(1272.7239990234375, 200.04153442382812, -2537.25))
			elseif _id == 15996410294 then --2.1
				_setFunctions["TP"].Normal(c(64.74767303466797, 60.94379806518555, -1622.5250244140625))
			elseif _id == 15996411979 then --2.2
				_setFunctions["TP"].Normal(c(232.6605987548828, 100.84130096435547, -595.3074951171875))
			elseif _id == 15996413469 then --2.3
				_setFunctions["TP"].Normal(c(1055.5179443359375, 78.26939392089844, -351.45831298828125))
			elseif _id == 15996414738 then --3.1
				_setFunctions["TP"].Normal(c(2416.63671875, -23.031118392944336, 2294.332275390625))
			elseif _id == 15996416081 then --3.2
				_setFunctions["TP"].Normal(c(-301.47650146484375, 88.01011657714844, -542.3770751953125))
			elseif _id == 15996417416 then --3.3
				_setFunctions["TP"].Normal(c(431.4171142578125, 17.476003646850586, -846.1138916015625))
				--Chapter
			elseif _id == 6296321810 or _id == 6479231833 then
				_setFunctions["TP"].Normal(c(3507.028564453125, 43.13663864135742, -1541.9735107421875))  -- b1c1p1
			elseif _id == 6301638949 or _id == 6480994221 then
				_setFunctions["TP"].Normal(c(1272.7239990234375, 200.04153442382812, -2537.25))           -- b1c1p2
			elseif _id == 6373539583 or _id == 6485055338 then
				_setFunctions["TP"].Normal(c(64.74767303466797, 60.94379806518555, -1622.5250244140625))  -- b1c2p1
			elseif _id == 6406571212 or _id == 6485055836 then
				_setFunctions["TP"].Normal(c(232.6605987548828, 100.84130096435547, -595.3074951171875))  -- b1c2p2
			elseif _id == 6425178683 or _id == 6485056556 then
				_setFunctions["TP"].Normal(c(1055.5179443359375, 78.26939392089844, -351.45831298828125)) -- b1c2p3
			elseif _id == 6472459099 or _id == 6688734180 then
				_setFunctions["TP"].Normal(c(2416.63671875, -23.031118392944336, 2294.332275390625))      -- b1c3p1
			elseif _id == 6682163754 or _id == 6688734313 then
				_setFunctions["TP"].Normal(c(241.43087768554688, 33.24515914916992, 450.21502685546875))  -- b1c3p2
			elseif _id == 6682164423 or _id == 6688734395 then
				_setFunctions["TP"].Normal(c(-654.1986694335938, 648.9832153320312, -1012.5780029296875)) -- b1c3p3
			elseif _id == 7265396387 or _id == 7251865082 then
				_setFunctions["TP"].Normal(c(85.20524597167969, -51.00001525878906, -1415.0792236328125)) --b1c4
				--Gamemode
			elseif _id == 7068738088 or _id == 7068951438 then
				_setFunctions["TP"].Normal(c(2528.98681640625, 8.164044380187988, -1184.1917724609375)) -- twt1
			elseif _id == 7068951914 or _id == 7068739000 then
				_setFunctions["TP"].Normal(c(-439.1501770019531, 21.252744674682617, -1455.9263916015625)) -- twt2
			elseif _id == 7068740106 or _id == 7068952294 then
				_setFunctions["TP"].Normal(c(2690.99169921875, 9.297460556030273, 649.3221435546875)) -- twt3
			end
    end,
	["AutoButterfly"] = function(value)
        pcall(function()
            if value then
                TheMimic.AutoButterfly = true
                _def["Loop"](TheMimic.AutoButterfly, 0.05, function()
					_def["GetChildren"].Name(_ws.Butterflies, "Butterfly", function(v)
						if v then
                            _setFunctions["TP"].Normal(v.CFrame)
                            tw(0.05)
                            _def["Find"].Fireprompt(v)
                        else
							_setFunctions["TP"].Normal(c(1099.39794921875, 3.135153293609619, 75.5241928100586))
						end
					end)
				end)
            else
				TheMimic.AutoButterfly = false
			end
        end)
    end,
	["AutoArmor"] = function()
        pcall(function()
            _setFunctions["TP"].Normal(c(706.4743041992188, 14.950273513793945, 1929.3958740234375))
            _def["GetChildren"].Name(_ws, "Texture" or "MeshPart" or "TreeMeshTop", function(v)
				if v then
					v:Destroy()
				end
			end)
        end)
        tw(1)
        Part = _ws.Well:WaitForChild("Burner")
        _setFunctions["+"]("v", v3(30, 2, 30), Part.CFrame)
        tw(0.5)
        _setFunctions["TP"].Normal(c(860.1697998046875, 15.059876441955566, 2388.63427734375))
        _setFunctions["fire"]()
        tw(0.5)
        _setFunctions["TP"].Normal(c(839.8504028320312, 18.34674072265625, 2241.216552734375))
        _setFunctions["fire"]()
        tw(0.5)
        _setFunctions["TP"].Normal(c(668.060791015625, 18.767614364624023, 2099.3955078125))
        _setFunctions["fire"]()
        tw(0.5)
        _setFunctions["TP"].Normal(c(625.1378173828125, 17.63252830505371, 2345.30078125))
        _setFunctions["fire"]()
        tw(0.5)
        _setFunctions["TP"].Normal(c(759.3781127929688, 15.417532920837402, 2531.548583984375))
        _setFunctions["fire"]()
        tw(0.5)
        _setFunctions["TP"].Normal(c(864.6249389648438, 23.993000030517578, 2550.099853515625))
        _setFunctions["fire"]()
        tw(0.5)
        _setFunctions["TP"].Normal(c(860.1697998046875, 15.059876441955566, 2388.63427734375))
        _setFunctions["fire"]()
        tw(1.5)
        _setFunctions["TP"].Normal(c(687.65673828125, 13.798624038696289, 2253.633544921875))
        tw(0.5)
        _setFunctions["fire"]()
		tw(0.1)
        _setFunctions["fire"]()
		tw(0.1)
        _setFunctions["fire"]()
		tw(0.1)
        _setFunctions["fire"]()
		tw(0.1)
        _setFunctions["fire"]()
		tw(0.1)
        _setFunctions["fire"]()
		tw(0.1)
        _setFunctions["fire"]()
    end,
    ["AutoHeart"] = function(value)
        pcall(function()
            if value then
				TheMimic.AutoHeart = true
                _def["Loop"](TheMimic.AutoHeart, 0, function()
					_def["GetChildren"].Name(_ws.GameHearts, "Heart", function(v1)
				_def["GetChildren"].IsA(v1, "Part", function(v2)
					v2.Rotation = v3(0, 0, 0)
                    v2.CanCollide = true
				end)
				_def["GetChildren"].IsA(v1, "UnionOperation", function(v_)
					v_.Rotation = v3(0, 0, 0)
                    v_.Size = v3(58, 58, 58)
				end)
				_def["GetChildren"].IsA(v1, "BoolValue", function(v4)
					if v4 then
						v4:Destroy()
					else
						_setFunctions["Cilck"](true)
						TheMimic.AutoHeart = true
						_setFunctions["TP"].Model(v1.CFrame * c(0, 20, -3))
					end
				end)
			end)
                end)
            else
				TheMimic.AutoHeart = false
			end
		end)
    end,
	["AutoSaigomo"] = function(value)
        pcall(function()
            local moving = false
            local targetPart = nil
            speed = 1.6
            radius = 30
            angle = 0
            local heartbeatConnection
            function TeleportOff()
                moving = false
                if heartbeatConnection then
                    heartbeatConnection:Disconnect()
                    heartbeatConnection = nil
                end
            end
                _ws.BossMap:Destroy()
                function moveAroundTarget()
                    angle = angle + speed * _hb:Wait()
                    xOffset = math.cos(angle) * radius
                    zOffset = math.sin(angle) * radius
                    newPosition = v3(targetPart.Position.X + xOffset, _humanoid.Position.Y, targetPart.Position.Z + zOffset)
                    c = c(newPosition, targetPart.Position)
                end

            function TeleportOn()
                moving = true
                targetPart = nil
                gameHearts = _ws.GameHearts
                foundHeart = false

                _def["GetChildren"].Name(gameHearts, "Heart", function(v)
                    foundHeart = true
					return v
				end)

                if not foundHeart then
                    _def["Find"].Normal(_ws, "SpiderHitbox", function(v1)
                        targetPart = v1
						v1.Rotation = v3(0, 0, 0)
                        v1.Size = v3(30, 30, 30)
                        v1.Transparency = 0.9
					end, true)
                    if targetPart then
                        heartbeatConnection = _hb:Connect(function()
                            if moving then
                                moveAroundTarget()
                            end
                        end)
                    end
                end
            end
            if value then
				_setFunctions["ToolEquip"]("Katana")
                _setFunctions["ToolSize"]("Katana", v3(50, 50, 10))
                _setFunctions["Click"](true)
				TeleportOn()
            else
                TeleportOff()
				_setFunctions["Click"](false)
			end
        end)
    end,
	["AutoRat"] = function()
        pcall(function()
            for _, rat in ipairs(_world:GetDescendants()) do
                if rat:IsA("MeshPart") then
                    if rat.TextureID == "rbxassetid://8569135832" then
                        local proximityPrompt = rat:FindFirstChildOfClass("ProximityPrompt")
                        if proximityPrompt then
                            _setFunctions["TP"].Normal(rat.CFrame)
                            tw(0.2)
                            _setFunctions["fire"]()
                            _setFunctions["fire"]()
                            _setFunctions["fire"]()
                            tw(0.2)
                            _setFunctions["TP"].Normal(c(-1539.063, -30.171, -3543.718))
                            tw(0.1)
                            _setFunctions["ToolEquip"]("Poisoned Rat")
                            tw(0.1)
                            _setFunctions["fire"]()
                            _setFunctions["fire"]()
                            tw(5)
                            _setFunctions["TP"].Normal(c(-1563.528, -28.910, -3408.718))
                            tw(0.2)
                            _setFunctions["fire"]()
                            _setFunctions["fire"]()
                            tw(0.2)
                            _setFunctions["TP"].Normal(c(-1674.827, -21.010, -3402.391))
                            break
                        end
                    end
                end
            end
        end)
    end,
    ["AutoFreeYourself"] = function(v)
        if v then
            TheMimic.Autofreeyourself = true
            _def["Loop"](TheMimic.Autofreeyourself, 0, function()
                local args = {
                    [1] = 0,
                    [2] = {
                        ["__args"] = {},
                        ["__tree"] = {
                            [1] = "QuickTimeService",
                            [2] = "Clicked"
                        },
                        ["__callType"] = 0
                    }
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Packet"):WaitForChild(
                    "PacketFunction"):InvokeServer(unpack(args))
                task.wait(0.15)
            end)
        else
            TheMimic.Autofreeyourself = false
        end
    end,
	
}

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
	Discord_1.Text = "https://discord.gg/S5Wbcq7u9c"
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
	Background_1.Parent = Synack
	Background_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Background_1.BackgroundColor3 = Color3.fromRGB(18,18,18)
	Background_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Background_1.BorderSizePixel = 0
	Background_1.Position = UDim2.new(0.5, 0,0.5, 0)
	Background_1.Size = UDim2.new(0, 450,0, 350)
	Background_1.ClipsDescendants = true
	
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
				g = {Size = UDim2.new(0, 450,0, 350)}
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
		else
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
	
	lak(Background_1)

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
		UIListLayout_2.Padding = UDim.new(0,8)
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

		local maxWidth = math.max(titleSize.X, descSize.X) + 70

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

executor = getexecutorname and getexecutorname() or "Desconhecido"

function Notify(Header, Desc, Time)
    Library:Notify({
        Title = Header,
        Desc = Desc,
        Logo = 77569540363638,
        Time = Time
    })
end
Window = Library:CreateWindow({
	Title = "Syntax.dev",
	Logo = 77569540363638
})
_MainTab = {
    Tab_Information = Window:CreateTab({
	Title = "Information",
	Desc = "Report & Info",
	Icon = icons.information
    }),
    Tab_Setting = Window:CreateTab({
	Title = "Setting",
	Desc = "Functions & Misc",
	Icon = icons.setting
    })
}

--Report/Info
Information_Section = _MainTab.Tab_Information:CreateSection({
	Title = "Information",
	Side = "Left"
})
Status_Section = _MainTab.Tab_Information:CreateSection({
	Title = "Status",
	Side = "Right"
})
Status_Section:CreateLabel({
	Title = 'Executor : ' .. executor,
	Side = "Center"
})
local passes, fails, undefined = 0, 0, 0
local running = 0

local function getGlobal(path)
	local value = getfenv(0)

	while value ~= nil and path ~= "" do
		local name, nextValue = string.match(path, "^([^.]+)%.?(.*)$")
		value = value[name]
		path = nextValue
	end

	return value
end

local function test(name, aliases, callback)
	running += 1

	task.spawn(function()
		if not callback then
			print("⏺️ " .. name)
		elseif not getGlobal(name) then
			fails += 1
			warn("⛔ " .. name)
		else
			local success, message = pcall(callback)
	
			if success then
				passes += 1
				print("✅ " .. name .. (message and " • " .. message or ""))
			else
				fails += 1
				warn("⛔ " .. name .. " failed: " .. message)
			end
		end
	
		local undefinedAliases = {}
	
		for _, alias in ipairs(aliases) do
			if getGlobal(alias) == nil then
				table.insert(undefinedAliases, alias)
			end
		end
	
		if #undefinedAliases > 0 then
			undefined += 1
			warn("⚠️ " .. table.concat(undefinedAliases, ", "))
		end

		running -= 1
	end)
end

-- Header and summary

print("\n")

print("UNC Environment Check")
print("✅ - Pass, ⛔ - Fail, ⏺️ - No test, ⚠️ - Missing aliases\n")

task.defer(function()
	repeat task.wait() until running == 0

	local rate = math.round(passes / (passes + fails) * 100)
	local outOf = passes .. " out of " .. (passes + fails)

	print("\n")

	print("UNC Summary")
	Status_Section:CreateLabel({
    Title = "UNC : " .. rate .. "% (" .. outOf .. ")",
    Side = "Center"
	})
	print("✅ Tested with a " .. rate .. "% success rate (" .. outOf .. ")")
	print("⛔ " .. fails .. " tests failed")
	print("⚠️ " .. undefined .. " globals are missing aliases")
end)

-- Cache

test("cache.invalidate", {}, function()
	local container = Instance.new("Folder")
	local part = Instance.new("Part", container)
	cache.invalidate(container:FindFirstChild("Part"))
	assert(part ~= container:FindFirstChild("Part"), "Reference `part` could not be invalidated")
end)

test("cache.iscached", {}, function()
	local part = Instance.new("Part")
	assert(cache.iscached(part), "Part should be cached")
	cache.invalidate(part)
	assert(not cache.iscached(part), "Part should not be cached")
end)

test("cache.replace", {}, function()
	local part = Instance.new("Part")
	local fire = Instance.new("Fire")
	cache.replace(part, fire)
	assert(part ~= fire, "Part was not replaced with Fire")
end)

test("cloneref", {}, function()
	local part = Instance.new("Part")
	local clone = cloneref(part)
	assert(part ~= clone, "Clone should not be equal to original")
	clone.Name = "Test"
	assert(part.Name == "Test", "Clone should have updated the original")
end)

test("compareinstances", {}, function()
	local part = Instance.new("Part")
	local clone = cloneref(part)
	assert(part ~= clone, "Clone should not be equal to original")
	assert(compareinstances(part, clone), "Clone should be equal to original when using compareinstances()")
end)

-- Closures

local function shallowEqual(t1, t2)
	if t1 == t2 then
		return true
	end

	local UNIQUE_TYPES = {
		["function"] = true,
		["table"] = true,
		["userdata"] = true,
		["thread"] = true,
	}

	for k, v in pairs(t1) do
		if UNIQUE_TYPES[type(v)] then
			if type(t2[k]) ~= type(v) then
				return false
			end
		elseif t2[k] ~= v then
			return false
		end
	end

	for k, v in pairs(t2) do
		if UNIQUE_TYPES[type(v)] then
			if type(t2[k]) ~= type(v) then
				return false
			end
		elseif t1[k] ~= v then
			return false
		end
	end

	return true
end

test("checkcaller", {}, function()
	assert(checkcaller(), "Main scope should return true")
end)

test("clonefunction", {}, function()
	local function test()
		return "success"
	end
	local copy = clonefunction(test)
	assert(test() == copy(), "The clone should return the same value as the original")
	assert(test ~= copy, "The clone should not be equal to the original")
end)

test("getcallingscript", {})

test("getscriptclosure", {"getscriptfunction"}, function()
	local module = game:GetService("CoreGui").RobloxGui.Modules.Common.Constants
	local constants = getrenv().require(module)
	local generated = getscriptclosure(module)()
	assert(constants ~= generated, "Generated module should not match the original")
	assert(shallowEqual(constants, generated), "Generated constant table should be shallow equal to the original")
end)

test("hookfunction", {"replaceclosure"}, function()
	local function test()
		return true
	end
	local ref = hookfunction(test, function()
		return false
	end)
	assert(test() == false, "Function should return false")
	assert(ref() == true, "Original function should return true")
	assert(test ~= ref, "Original function should not be same as the reference")
end)

test("iscclosure", {}, function()
	assert(iscclosure(print) == true, "Function 'print' should be a C closure")
	assert(iscclosure(function() end) == false, "Executor function should not be a C closure")
end)

test("islclosure", {}, function()
	assert(islclosure(print) == false, "Function 'print' should not be a Lua closure")
	assert(islclosure(function() end) == true, "Executor function should be a Lua closure")
end)

test("isexecutorclosure", {"checkclosure", "isourclosure"}, function()
	assert(isexecutorclosure(isexecutorclosure) == true, "Did not return true for an executor global")
	assert(isexecutorclosure(newcclosure(function() end)) == true, "Did not return true for an executor C closure")
	assert(isexecutorclosure(function() end) == true, "Did not return true for an executor Luau closure")
	assert(isexecutorclosure(print) == false, "Did not return false for a Roblox global")
end)

test("loadstring", {}, function()
	local animate = game:GetService("Players").LocalPlayer.Character.Animate
	local bytecode = getscriptbytecode(animate)
	local func = loadstring(bytecode)
	assert(type(func) ~= "function", "Luau bytecode should not be loadable!")
	assert(assert(loadstring("return ... + 1"))(1) == 2, "Failed to do simple math")
	assert(type(select(2, loadstring("f"))) == "string", "Loadstring did not return anything for a compiler error")
end)

test("newcclosure", {}, function()
	local function test()
		return true
	end
	local testC = newcclosure(test)
	assert(test() == testC(), "New C closure should return the same value as the original")
	assert(test ~= testC, "New C closure should not be same as the original")
	assert(iscclosure(testC), "New C closure should be a C closure")
end)

-- Console

test("rconsoleclear", {"consoleclear"})

test("rconsolecreate", {"consolecreate"})

test("rconsoledestroy", {"consoledestroy"})

test("rconsoleinput", {"consoleinput"})

test("rconsoleprint", {"consoleprint"})

test("rconsolesettitle", {"rconsolename", "consolesettitle"})

-- Crypt

test("crypt.base64encode", {"crypt.base64.encode", "crypt.base64_encode", "base64.encode", "base64_encode"}, function()
	assert(crypt.base64encode("test") == "dGVzdA==", "Base64 encoding failed")
end)

test("crypt.base64decode", {"crypt.base64.decode", "crypt.base64_decode", "base64.decode", "base64_decode"}, function()
	assert(crypt.base64decode("dGVzdA==") == "test", "Base64 decoding failed")
end)

test("crypt.encrypt", {}, function()
	local key = crypt.generatekey()
	local encrypted, iv = crypt.encrypt("test", key, nil, "CBC")
	assert(iv, "crypt.encrypt should return an IV")
	local decrypted = crypt.decrypt(encrypted, key, iv, "CBC")
	assert(decrypted == "test", "Failed to decrypt raw string from encrypted data")
end)

test("crypt.decrypt", {}, function()
	local key, iv = crypt.generatekey(), crypt.generatekey()
	local encrypted = crypt.encrypt("test", key, iv, "CBC")
	local decrypted = crypt.decrypt(encrypted, key, iv, "CBC")
	assert(decrypted == "test", "Failed to decrypt raw string from encrypted data")
end)

test("crypt.generatebytes", {}, function()
	local size = math.random(10, 100)
	local bytes = crypt.generatebytes(size)
	assert(#crypt.base64decode(bytes) == size, "The decoded result should be " .. size .. " bytes long (got " .. #crypt.base64decode(bytes) .. " decoded, " .. #bytes .. " raw)")
end)

test("crypt.generatekey", {}, function()
	local key = crypt.generatekey()
	assert(#crypt.base64decode(key) == 32, "Generated key should be 32 bytes long when decoded")
end)

test("crypt.hash", {}, function()
	local algorithms = {'sha1', 'sha384', 'sha512', 'md5', 'sha256', 'sha3-224', 'sha3-256', 'sha3-512'}
	for _, algorithm in ipairs(algorithms) do
		local hash = crypt.hash("test", algorithm)
		assert(hash, "crypt.hash on algorithm '" .. algorithm .. "' should return a hash")
	end
end)

--- Debug

test("debug.getconstant", {}, function()
	local function test()
		print("Hello, world!")
	end
	assert(debug.getconstant(test, 1) == "print", "First constant must be print")
	assert(debug.getconstant(test, 2) == nil, "Second constant must be nil")
	assert(debug.getconstant(test, 3) == "Hello, world!", "Third constant must be 'Hello, world!'")
end)

test("debug.getconstants", {}, function()
	local function test()
		local num = 5000 .. 50000
		print("Hello, world!", num, warn)
	end
	local constants = debug.getconstants(test)
	assert(constants[1] == 50000, "First constant must be 50000")
	assert(constants[2] == "print", "Second constant must be print")
	assert(constants[3] == nil, "Third constant must be nil")
	assert(constants[4] == "Hello, world!", "Fourth constant must be 'Hello, world!'")
	assert(constants[5] == "warn", "Fifth constant must be warn")
end)

test("debug.getinfo", {}, function()
	local types = {
		source = "string",
		short_src = "string",
		func = "function",
		what = "string",
		currentline = "number",
		name = "string",
		nups = "number",
		numparams = "number",
		is_vararg = "number",
	}
	local function test(...)
		print(...)
	end
	local info = debug.getinfo(test)
	for k, v in pairs(types) do
		assert(info[k] ~= nil, "Did not return a table with a '" .. k .. "' field")
		assert(type(info[k]) == v, "Did not return a table with " .. k .. " as a " .. v .. " (got " .. type(info[k]) .. ")")
	end
end)

test("debug.getproto", {}, function()
	local function test()
		local function proto()
			return true
		end
	end
	local proto = debug.getproto(test, 1, true)[1]
	local realproto = debug.getproto(test, 1)
	assert(proto, "Failed to get the inner function")
	assert(proto() == true, "The inner function did not return anything")
	if not realproto() then
		return "Proto return values are disabled on this executor"
	end
end)

test("debug.getprotos", {}, function()
	local function test()
		local function _1()
			return true
		end
		local function _2()
			return true
		end
		local function _3()
			return true
		end
	end
	for i in ipairs(debug.getprotos(test)) do
		local proto = debug.getproto(test, i, true)[1]
		local realproto = debug.getproto(test, i)
		assert(proto(), "Failed to get inner function " .. i)
		if not realproto() then
			return "Proto return values are disabled on this executor"
		end
	end
end)

test("debug.getstack", {}, function()
	local _ = "a" .. "b"
	assert(debug.getstack(1, 1) == "ab", "The first item in the stack should be 'ab'")
	assert(debug.getstack(1)[1] == "ab", "The first item in the stack table should be 'ab'")
end)

test("debug.getupvalue", {}, function()
	local upvalue = function() end
	local function test()
		print(upvalue)
	end
	assert(debug.getupvalue(test, 1) == upvalue, "Unexpected value returned from debug.getupvalue")
end)

test("debug.getupvalues", {}, function()
	local upvalue = function() end
	local function test()
		print(upvalue)
	end
	local upvalues = debug.getupvalues(test)
	assert(upvalues[1] == upvalue, "Unexpected value returned from debug.getupvalues")
end)

test("debug.setconstant", {}, function()
	local function test()
		return "fail"
	end
	debug.setconstant(test, 1, "success")
	assert(test() == "success", "debug.setconstant did not set the first constant")
end)

test("debug.setstack", {}, function()
	local function test()
		return "fail", debug.setstack(1, 1, "success")
	end
	assert(test() == "success", "debug.setstack did not set the first stack item")
end)

test("debug.setupvalue", {}, function()
	local function upvalue()
		return "fail"
	end
	local function test()
		return upvalue()
	end
	debug.setupvalue(test, 1, function()
		return "success"
	end)
	assert(test() == "success", "debug.setupvalue did not set the first upvalue")
end)

-- Filesystem

if isfolder and makefolder and delfolder then
	if isfolder(".tests") then
		delfolder(".tests")
	end
	makefolder(".tests")
end

test("readfile", {}, function()
	writefile(".tests/readfile.txt", "success")
	assert(readfile(".tests/readfile.txt") == "success", "Did not return the contents of the file")
end)

test("listfiles", {}, function()
	makefolder(".tests/listfiles")
	writefile(".tests/listfiles/test_1.txt", "success")
	writefile(".tests/listfiles/test_2.txt", "success")
	local files = listfiles(".tests/listfiles")
	assert(#files == 2, "Did not return the correct number of files")
	assert(isfile(files[1]), "Did not return a file path")
	assert(readfile(files[1]) == "success", "Did not return the correct files")
	makefolder(".tests/listfiles_2")
	makefolder(".tests/listfiles_2/test_1")
	makefolder(".tests/listfiles_2/test_2")
	local folders = listfiles(".tests/listfiles_2")
	assert(#folders == 2, "Did not return the correct number of folders")
	assert(isfolder(folders[1]), "Did not return a folder path")
end)

test("writefile", {}, function()
	writefile(".tests/writefile.txt", "success")
	assert(readfile(".tests/writefile.txt") == "success", "Did not write the file")
	local requiresFileExt = pcall(function()
		writefile(".tests/writefile", "success")
		assert(isfile(".tests/writefile.txt"))
	end)
	if not requiresFileExt then
		return "This executor requires a file extension in writefile"
	end
end)

test("makefolder", {}, function()
	makefolder(".tests/makefolder")
	assert(isfolder(".tests/makefolder"), "Did not create the folder")
end)

test("appendfile", {}, function()
	writefile(".tests/appendfile.txt", "su")
	appendfile(".tests/appendfile.txt", "cce")
	appendfile(".tests/appendfile.txt", "ss")
	assert(readfile(".tests/appendfile.txt") == "success", "Did not append the file")
end)

test("isfile", {}, function()
	writefile(".tests/isfile.txt", "success")
	assert(isfile(".tests/isfile.txt") == true, "Did not return true for a file")
	assert(isfile(".tests") == false, "Did not return false for a folder")
	assert(isfile(".tests/doesnotexist.exe") == false, "Did not return false for a nonexistent path (got " .. tostring(isfile(".tests/doesnotexist.exe")) .. ")")
end)

test("isfolder", {}, function()
	assert(isfolder(".tests") == true, "Did not return false for a folder")
	assert(isfolder(".tests/doesnotexist.exe") == false, "Did not return false for a nonexistent path (got " .. tostring(isfolder(".tests/doesnotexist.exe")) .. ")")
end)

test("delfolder", {}, function()
	makefolder(".tests/delfolder")
	delfolder(".tests/delfolder")
	assert(isfolder(".tests/delfolder") == false, "Failed to delete folder (isfolder = " .. tostring(isfolder(".tests/delfolder")) .. ")")
end)

test("delfile", {}, function()
	writefile(".tests/delfile.txt", "Hello, world!")
	delfile(".tests/delfile.txt")
	assert(isfile(".tests/delfile.txt") == false, "Failed to delete file (isfile = " .. tostring(isfile(".tests/delfile.txt")) .. ")")
end)

test("loadfile", {}, function()
	writefile(".tests/loadfile.txt", "return ... + 1")
	assert(assert(loadfile(".tests/loadfile.txt"))(1) == 2, "Failed to load a file with arguments")
	writefile(".tests/loadfile.txt", "f")
	local callback, err = loadfile(".tests/loadfile.txt")
	assert(err and not callback, "Did not return an error message for a compiler error")
end)

test("dofile", {})

-- Input

test("isrbxactive", {"isgameactive"}, function()
	assert(type(isrbxactive()) == "boolean", "Did not return a boolean value")
end)

test("mouse1click", {})

test("mouse1press", {})

test("mouse1release", {})

test("mouse2click", {})

test("mouse2press", {})

test("mouse2release", {})

test("mousemoveabs", {})

test("mousemoverel", {})

test("mousescroll", {})

-- Instances

test("fireclickdetector", {}, function()
	local detector = Instance.new("ClickDetector")
	fireclickdetector(detector, 50, "MouseHoverEnter")
end)

test("getcallbackvalue", {}, function()
	local bindable = Instance.new("BindableFunction")
	local function test()
	end
	bindable.OnInvoke = test
	assert(getcallbackvalue(bindable, "OnInvoke") == test, "Did not return the correct value")
end)

test("getconnections", {}, function()
	local types = {
		Enabled = "boolean",
		ForeignState = "boolean",
		LuaConnection = "boolean",
		Function = "function",
		Thread = "thread",
		Fire = "function",
		Defer = "function",
		Disconnect = "function",
		Disable = "function",
		Enable = "function",
	}
	local bindable = Instance.new("BindableEvent")
	bindable.Event:Connect(function() end)
	local connection = getconnections(bindable.Event)[1]
	for k, v in pairs(types) do
		assert(connection[k] ~= nil, "Did not return a table with a '" .. k .. "' field")
		assert(type(connection[k]) == v, "Did not return a table with " .. k .. " as a " .. v .. " (got " .. type(connection[k]) .. ")")
	end
end)

test("getcustomasset", {}, function()
	writefile(".tests/getcustomasset.txt", "success")
	local contentId = getcustomasset(".tests/getcustomasset.txt")
	assert(type(contentId) == "string", "Did not return a string")
	assert(#contentId > 0, "Returned an empty string")
	assert(string.match(contentId, "rbxasset://") == "rbxasset://", "Did not return an rbxasset url")
end)

test("gethiddenproperty", {}, function()
	local fire = Instance.new("Fire")
	local property, isHidden = gethiddenproperty(fire, "size_xml")
	assert(property == 5, "Did not return the correct value")
	assert(isHidden == true, "Did not return whether the property was hidden")
end)

test("sethiddenproperty", {}, function()
	local fire = Instance.new("Fire")
	local hidden = sethiddenproperty(fire, "size_xml", 10)
	assert(hidden, "Did not return true for the hidden property")
	assert(gethiddenproperty(fire, "size_xml") == 10, "Did not set the hidden property")
end)

test("gethui", {}, function()
	assert(typeof(gethui()) == "Instance", "Did not return an Instance")
end)

test("getinstances", {}, function()
	assert(getinstances()[1]:IsA("Instance"), "The first value is not an Instance")
end)

test("getnilinstances", {}, function()
	assert(getnilinstances()[1]:IsA("Instance"), "The first value is not an Instance")
	assert(getnilinstances()[1].Parent == nil, "The first value is not parented to nil")
end)

test("isscriptable", {}, function()
	local fire = Instance.new("Fire")
	assert(isscriptable(fire, "size_xml") == false, "Did not return false for a non-scriptable property (size_xml)")
	assert(isscriptable(fire, "Size") == true, "Did not return true for a scriptable property (Size)")
end)

test("setscriptable", {}, function()
	local fire = Instance.new("Fire")
	local wasScriptable = setscriptable(fire, "size_xml", true)
	assert(wasScriptable == false, "Did not return false for a non-scriptable property (size_xml)")
	assert(isscriptable(fire, "size_xml") == true, "Did not set the scriptable property")
	fire = Instance.new("Fire")
	assert(isscriptable(fire, "size_xml") == false, "⚠️⚠️ setscriptable persists between unique instances ⚠️⚠️")
end)

test("setrbxclipboard", {})

-- Metatable

test("getrawmetatable", {}, function()
	local metatable = { __metatable = "Locked!" }
	local object = setmetatable({}, metatable)
	assert(getrawmetatable(object) == metatable, "Did not return the metatable")
end)

test("hookmetamethod", {}, function()
	local object = setmetatable({}, { __index = newcclosure(function() return false end), __metatable = "Locked!" })
	local ref = hookmetamethod(object, "__index", function() return true end)
	assert(object.test == true, "Failed to hook a metamethod and change the return value")
	assert(ref() == false, "Did not return the original function")
end)

test("getnamecallmethod", {}, function()
	local method
	local ref
	ref = hookmetamethod(game, "__namecall", function(...)
		if not method then
			method = getnamecallmethod()
		end
		return ref(...)
	end)
	game:GetService("Lighting")
	assert(method == "GetService", "Did not get the correct method (GetService)")
end)

test("isreadonly", {}, function()
	local object = {}
	table.freeze(object)
	assert(isreadonly(object), "Did not return true for a read-only table")
end)

test("setrawmetatable", {}, function()
	local object = setmetatable({}, { __index = function() return false end, __metatable = "Locked!" })
	local objectReturned = setrawmetatable(object, { __index = function() return true end })
	assert(object, "Did not return the original object")
	assert(object.test == true, "Failed to change the metatable")
	if objectReturned then
		return objectReturned == object and "Returned the original object" or "Did not return the original object"
	end
end)

test("setreadonly", {}, function()
	local object = { success = false }
	table.freeze(object)
	setreadonly(object, false)
	object.success = true
	assert(object.success, "Did not allow the table to be modified")
end)

-- Miscellaneous

test("identifyexecutor", {"getexecutorname"}, function()
	local name, version = identifyexecutor()
	assert(type(name) == "string", "Did not return a string for the name")
	return type(version) == "string" and "Returns version as a string" or "Does not return version"
end)

test("lz4compress", {}, function()
	local raw = "Hello, world!"
	local compressed = lz4compress(raw)
	assert(type(compressed) == "string", "Compression did not return a string")
	assert(lz4decompress(compressed, #raw) == raw, "Decompression did not return the original string")
end)

test("lz4decompress", {}, function()
	local raw = "Hello, world!"
	local compressed = lz4compress(raw)
	assert(type(compressed) == "string", "Compression did not return a string")
	assert(lz4decompress(compressed, #raw) == raw, "Decompression did not return the original string")
end)

test("messagebox", {})

test("queue_on_teleport", {"queueonteleport"})

test("request", {"http.request", "http_request"}, function()
	local response = request({
		Url = "https://httpbin.org/user-agent",
		Method = "GET",
	})
	assert(type(response) == "table", "Response must be a table")
	assert(response.StatusCode == 200, "Did not return a 200 status code")
	local data = game:GetService("HttpService"):JSONDecode(response.Body)
	assert(type(data) == "table" and type(data["user-agent"]) == "string", "Did not return a table with a user-agent key")
	return "User-Agent: " .. data["user-agent"]
end)

test("setclipboard", {"toclipboard"})

test("setfpscap", {}, function()
	local renderStepped = game:GetService("RunService").RenderStepped
	local function step()
		renderStepped:Wait()
		local sum = 0
		for _ = 1, 5 do
			sum += 1 / renderStepped:Wait()
		end
		return math.round(sum / 5)
	end
	setfpscap(60)
	local step60 = step()
	setfpscap(0)
	local step0 = step()
	return step60 .. "fps @60 • " .. step0 .. "fps @0"
end)

-- Scripts

test("getgc", {}, function()
	local gc = getgc()
	assert(type(gc) == "table", "Did not return a table")
	assert(#gc > 0, "Did not return a table with any values")
end)

test("getgenv", {}, function()
	getgenv().__TEST_GLOBAL = true
	assert(__TEST_GLOBAL, "Failed to set a global variable")
	getgenv().__TEST_GLOBAL = nil
end)

test("getloadedmodules", {}, function()
	local modules = getloadedmodules()
	assert(type(modules) == "table", "Did not return a table")
	assert(#modules > 0, "Did not return a table with any values")
	assert(typeof(modules[1]) == "Instance", "First value is not an Instance")
	assert(modules[1]:IsA("ModuleScript"), "First value is not a ModuleScript")
end)

test("getrenv", {}, function()
	assert(_G ~= getrenv()._G, "The variable _G in the executor is identical to _G in the game")
end)

test("getrunningscripts", {}, function()
	local scripts = getrunningscripts()
	assert(type(scripts) == "table", "Did not return a table")
	assert(#scripts > 0, "Did not return a table with any values")
	assert(typeof(scripts[1]) == "Instance", "First value is not an Instance")
	assert(scripts[1]:IsA("ModuleScript") or scripts[1]:IsA("LocalScript"), "First value is not a ModuleScript or LocalScript")
end)

test("getscriptbytecode", {"dumpstring"}, function()
	local animate = game:GetService("Players").LocalPlayer.Character.Animate
	local bytecode = getscriptbytecode(animate)
	assert(type(bytecode) == "string", "Did not return a string for Character.Animate (a " .. animate.ClassName .. ")")
end)

test("getscripthash", {}, function()
	local animate = game:GetService("Players").LocalPlayer.Character.Animate:Clone()
	local hash = getscripthash(animate)
	local source = animate.Source
	animate.Source = "print('Hello, world!')"
	task.defer(function()
		animate.Source = source
	end)
	local newHash = getscripthash(animate)
	assert(hash ~= newHash, "Did not return a different hash for a modified script")
	assert(newHash == getscripthash(animate), "Did not return the same hash for a script with the same source")
end)

test("getscripts", {}, function()
	local scripts = getscripts()
	assert(type(scripts) == "table", "Did not return a table")
	assert(#scripts > 0, "Did not return a table with any values")
	assert(typeof(scripts[1]) == "Instance", "First value is not an Instance")
	assert(scripts[1]:IsA("ModuleScript") or scripts[1]:IsA("LocalScript"), "First value is not a ModuleScript or LocalScript")
end)

test("getsenv", {}, function()
	local animate = game:GetService("Players").LocalPlayer.Character.Animate
	local env = getsenv(animate)
	assert(type(env) == "table", "Did not return a table for Character.Animate (a " .. animate.ClassName .. ")")
	assert(env.script == animate, "The script global is not identical to Character.Animate")
end)

test("getthreadidentity", {"getidentity", "getthreadcontext"}, function()
	assert(type(getthreadidentity()) == "number", "Did not return a number")
end)

test("setthreadidentity", {"setidentity", "setthreadcontext"}, function()
	setthreadidentity(3)
	assert(getthreadidentity() == 3, "Did not set the thread identity")
end)

-- Drawing

test("Drawing", {})

test("Drawing.new", {}, function()
	local drawing = Drawing.new("Square")
	drawing.Visible = false
	local canDestroy = pcall(function()
		drawing:Destroy()
	end)
	assert(canDestroy, "Drawing:Destroy() should not throw an error")
end)

test("Drawing.Fonts", {}, function()
	assert(Drawing.Fonts.UI == 0, "Did not return the correct id for UI")
	assert(Drawing.Fonts.System == 1, "Did not return the correct id for System")
	assert(Drawing.Fonts.Plex == 2, "Did not return the correct id for Plex")
	assert(Drawing.Fonts.Monospace == 3, "Did not return the correct id for Monospace")
end)

test("isrenderobj", {}, function()
	local drawing = Drawing.new("Image")
	drawing.Visible = true
	assert(isrenderobj(drawing) == true, "Did not return true for an Image")
	assert(isrenderobj(newproxy()) == false, "Did not return false for a blank table")
end)

test("getrenderproperty", {}, function()
	local drawing = Drawing.new("Image")
	drawing.Visible = true
	assert(type(getrenderproperty(drawing, "Visible")) == "boolean", "Did not return a boolean value for Image.Visible")
	local success, result = pcall(function()
		return getrenderproperty(drawing, "Color")
	end)
	if not success or not result then
		return "Image.Color is not supported"
	end
end)

test("setrenderproperty", {}, function()
	local drawing = Drawing.new("Square")
	drawing.Visible = true
	setrenderproperty(drawing, "Visible", false)
	assert(drawing.Visible == false, "Did not set the value for Square.Visible")
end)

test("cleardrawcache", {}, function()
	cleardrawcache()
end)

-- WebSocket

test("WebSocket", {})

test("WebSocket.connect", {}, function()
	local types = {
		Send = "function",
		Close = "function",
		OnMessage = {"table", "userdata"},
		OnClose = {"table", "userdata"},
	}
	local ws = WebSocket.connect("ws://echo.websocket.events")
	assert(type(ws) == "table" or type(ws) == "userdata", "Did not return a table or userdata")
	for k, v in pairs(types) do
		if type(v) == "table" then
			assert(table.find(v, type(ws[k])), "Did not return a " .. table.concat(v, ", ") .. " for " .. k .. " (a " .. type(ws[k]) .. ")")
		else
			assert(type(ws[k]) == v, "Did not return a " .. v .. " for " .. k .. " (a " .. type(ws[k]) .. ")")
		end
	end
	ws:Close()
end)
Report_Section = _MainTab.Tab_Information:CreateSection({
	Title = "Report",
	Side = "Right"
})
Information_Section:CreateLabel({
	Title = 'Required 400+ DPI',
	Side = "Center"
})
Information_Section:CreateImage({
	Title = "Envy The Cutie",
	Desc = "Owner of Viusal ",
	Icon = 79977248698994
})
Information_Section:CreateButton({
	Title = "Discord",
	Mode = 1,
	Callback = function()
		print("Click!!")
end})
Information_Section:CreateLabel({
	Title = '<font color="rgb(255, 0, 0)">Warning</font>',
	Side = "Center"
})
Information_Section:CreateLabel({
	Title = '<font color="rgb(255, 0, 0)">[ Instant ProximityPrompt ]</font>',
	Side = "Center"
})
Information_Section:CreateLabel({
	Title = "We don't Recommend this Function On Jelousy Book.",
	Side = "Center"
})
Information_Section:CreateLabel({
	Title = "But It's Working for Some ProximityPrompt",
	Side = "Center"
})
Information_Section:CreateLabel({
	Title = "and You have Chance to get Kick. [ Sorry.. ]",
	Side = "Center"
})
Information_Section:CreateLabel({
	Title = "It's not working at All.",
	Side = "Center"
})
Information_Section:CreateLabel({
	Title = '<font color="rgb(255, 0, 0)">[ Speed ]</font>',
	Side = "Center"
})
Information_Section:CreateLabel({
	Title = "We don't Recommend this Function On Jelousy Book.",
	Side = "Center"
})
Information_Section:CreateLabel({
	Title = "and You have Chance to get Kick. [ Sorry... ]",
	Side = "Center"
})
Information_Section:CreateLabel({
	Title = '<font color="rgb(255, 0, 0)">[ HOP & Rejoin ]</font>',
	Side = "Center"
})
Information_Section:CreateLabel({
	Title = "We don't Recommend this Function On Jelousy Book.",
	Side = "Center"
})
Information_Section:CreateLabel({
	Title = "It's Dont Work. [ Sorry.... ]",
	Side = "Center"
})
Report_Section:CreateTextbox({
	Title = "Bug",
	Desc = "What is your Bugs.",
	ClearTextOnFocus = false,
	Value = "",
	Callback = function(value)
		print(value)
    end
})
Report_Section:CreateTextbox({
	Title = "Description",
	Desc = "Explain your Problem.",
	ClearTextOnFocus = false,
	Value = "",
	Callback = function(value)
		print(value)
end})
Report_Section:CreateButton({
	Title = "Done",
	Mode = 1,
	Callback = function()
		print("Click!!")
end})

if _id == 13489800654 or 15962819441 then
	Game = _MainTab.Tab_Setting:CreateSection({
	Title = "Setting",
	Side = "Right"
})
	Game:CreateImage({
	Title = "Automatic",
	Desc = "Collect Coins & ESP Coins",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
end})
	Game:CreateToggle({
	Title = "Automatic Free Yourself",
	Value = false,
	Callback = function(value)
		print(value)
end})
end

--Setting
FunctionsSection = _MainTab.Tab_Setting:CreateSection({
	Title = "Functions",
	Side = "Left"
})
DisplaySection = _MainTab.Tab_Setting:CreateSection({
	Title = "Display",
	Side = "Left"
})

--Functions

FunctionsSection:CreateToggle({
	Title = "Noclip",
	Value = false,
	Callback = function(value)
		if value then
			noclip(true)
		else
			noclip(false)
		end
end})

--Display
DisplaySection:CreateButton({
	Title = "Reduce CPU",
	Mode = 1,
	Callback = function()

    end
})
DisplaySection:CreateButton({
	Title = "Rejoin Server",
	Mode = 1,
	Callback = function()
		
end})


if _id == 6296321810 or _id == 6479231833 or _id == 6301638949 or _id == 6480994221 then --Book1ch1
	Control1_1 = Window:CreateTab({
	Title = "Control's Book",
	Desc = "Chapter I",
	Icon = icons.skip,
    })
    ControlSection = Control1_1:CreateSection({
	Title = "Automatic",
	Side = "Left"
    })
    VisualSection = Control1_1:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
    ControlSection:CreateButton({
	Title = "Skip [ Instant ]",
    Desc = "Skip to next part.",
	Mode = 2,
	Callback = function()
		_Game["SkipInstant"]()
end})
    VisualSection:CreateToggle({
	Title = "Monster",
	Value = false,
	Callback = function(value)
		print(value)
end})
elseif _id == 6373539583 or _id == 6485055338 or _id == 6406571212 or _id == 6485055836 or _id == 6425178683 or _id == 6485056556 then --book1ch2
	Control1_2 = Window:CreateTab({
	Title = "Control's Book",
	Desc = "Chapter II",
	Icon = icons.skip,
    })
    ControlSection = Control1_2:CreateSection({
	Title = "Automatic",
	Side = "Left"
    })
    VisualSection = Control1_2:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
    ControlSection:CreateButton({
	Title = "Skip [ Instant ]",
    Desc = "Skip to next part.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
end})
    VisualSection:CreateToggle({
	Title = "Monster",
	Value = false,
	Callback = function(value)
		print(value)
end})
elseif _id == 6472459099 or _id == 6688734180 or _id == 6682163754 or _id == 6688734313 or _id == 6682164423 or _id == 6688734395 then --book1ch3
	Control1_3 = Window:CreateTab({
	Title = "Control's Book",
	Desc = "Chapter III",
	Icon = icons.skip,
    })
    ControlSection = Control1_3:CreateSection({
	Title = "Automatic",
	Side = "Left"
    })
    VisualSection = Control1_3:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
    ControlSection:CreateButton({
	Title = "Skip [ Instant ]",
    Desc = "Skip to next part.",
	Mode = 2,
	Callback = function()
		_Game["SkipInstant"]()
end})
    VisualSection:CreateToggle({
	Title = "Monster",
	Value = false,
	Callback = function(value)
		print(value)
end})
    ControlSection:CreateToggle({
	Title = "Disable Damage Omukade",
	Value = false,
	Callback = function(value)
		print(value)
end})
elseif _id == 7265396387 or _id == 7251865082 then --4.1
	Control4_1 = Window:CreateTab({
	Title = "Control's IV",
	Desc = "House",
	Icon = icons.skip,
    })
    ControlSection = Control4_1:CreateSection({
	Title = "Automatic",
	Side = "Left"
    })
    VisualSection = Control4_1:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
    ControlSection:CreateButton({
	Title = "Skip [ Instant ]",
    Desc = "Skip to next part.",
	Mode = 2,
	Callback = function()
		_Game["SkipInstant"]()
end})
    VisualSection:CreateToggle({
	Title = "Monster",
	Value = false,
	Callback = function(value)
		print(value)
end})
elseif _id == 7265396805 or _id == 7251866503 then --4.2
	Control4_2 = Window:CreateTab({
	Title = "Control's IV",
	Desc = "Cursed School",
	Icon = icons.skip,
    })
    ControlSection = Control4_2:CreateSection({
	Title = "Automatic",
	Side = "Left"
    })
    VisualSection = Control4_2:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
    ControlSection:CreateButton({
	Title = "Automatice",
    Desc = "Collect All Butterflies.",
	Mode = 2,
	Callback = function()
		_Game["AutoButterfly"](true)
end})
    VisualSection:CreateToggle({
	Title = "Monster",
	Value = false,
	Callback = function(value)
		print(value)
end})
elseif _id == 7265397072 or _id == 7251867155 then --4.3
	Control4_3 = Window:CreateTab({
	Title = "Control's IV",
	Desc = "Cursed of Masashige",
	Icon = icons.skip,
    })
    ControlSection = Control4_3:CreateSection({
	Title = "Automatic",
	Side = "Left"
    })
    VisualSection = Control4_3:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
    ControlSection:CreateButton({
	Title = "Automatic",
    Desc = "Burn All Armors.",
	Mode = 2,
	Callback = function()
		_Game["AutoArmor"]()
end})
    VisualSection:CreateToggle({
	Title = "Monster",
	Value = false,
	Callback = function(value)
		print(value)
end})
elseif _id == 7265397848 or _id == 7251867574 then --4.4
	Control4_4 = Window:CreateTab({
	Title = "Control's IV",
	Desc = "House",
	Icon = icons.skip,
    })
    ControlSection = Control4_4:CreateSection({
	Title = "Automatic",
	Side = "Left"
    })
    VisualSection = Control4_4:CreateSection({
	Title = "Visual & Setting",
	Side = "Right"
    })
    ControlSection:CreateButton({
	Title = "Automatice",
    Desc = "Destroy All Hearts.",
	Mode = 2,
	Callback = function()
		_Game["AutoHeart"](true)
end})
    VisualSection:CreateToggle({
	Title = "Monster",
	Value = false,
	Callback = function(value)
		print(value)
end})
    ControlSection:CreateImage({ --ESP
	Title = "Automatic",
	Desc = "Defeat Saigomo The Spider of Control.",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		if value then
			_Game["AutoSaigomo"](true)
		else
			_Game["AutoSaigomo"](false)
		end
	end})
elseif _id == 6243699076 or _id == 15989427413 or _id == 7068737459 then --Lobby
	Control = Window:CreateTab({
	Title = "Teleport",
	Desc = "Quick Lantern",
	Icon = icons.skip,
    })
    ControlSection = Control:CreateSection({
	Title = "Teleport",
	Side = "Left"
    })
    ControlSection2 = Control:CreateSection({
	Title = "Instant Lanterns",
	Side = "Right"
    })
    ControlSection:CreateDropdown({
	Title = "Select Chapter",
	List = {"Select 1", "Select 2", "Select 3", "Select 4", "Select 5"},
	Value = "Select 1",
	Multi = false,
	Callback = function(value)
		print(value)
end})
    ControlSection:CreateButton({
	Title = "Teleport",
	Mode = 1,
	Callback = function()
		Notify("Haha", "ejks", 5)
end})
    ControlSection:CreateButton({
	Title = "Duality Lantern [ Instane ]",
	Mode = 1,
	Callback = function()
		Notify("Haha", "ejks", 5)
end})
    ControlSection:CreateButton({
	Title = "Halloween Trials 3 [ Instant ]",
	Mode = 1,
	Callback = function()
		Notify("Haha", "ejks", 5)
end})
elseif _id == 7068738088 or _id == 7068951438 or _id == 7068951914 or _id == 7068739000 then --Twt1
	TWT = Window:CreateTab({
	Title = "The Witch Trials",
	Desc = "Lore",
	Icon = icons.skip,
    })
    TWTSection = TWT:CreateSection({
	Title = "Automatic",
	Side = "Left"
    })
    VisualSection = TWT:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
    TWTSection:CreateButton({
	Title = "Skip [ Instant ]",
    Desc = "Skip to next part.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
end})
    VisualSection:CreateToggle({
	Title = "Monster",
	Value = false,
	Callback = function(value)
		print(value)
end})
elseif _id == 7068740106 or _id == 7068952294 then --twtend
	TWT = Window:CreateTab({
	Title = "The Witch Trials",
	Desc = "Lore",
	Icon = icons.skip,
    })
    TWTSection = TWT:CreateSection({
	Title = "Automatic",
	Side = "Left"
    })
    VisualSection = TWT:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
    TWTSection:CreateButton({
	Title = "Skip [ Instant ]",
    Desc = "Skip to next part.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
end})
    TWTSection:CreateButton({
	Title = "Automatic",
    Desc = "Help Friends",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
    TWTSection:CreateDropdown({
	Title = "Select Puzzle",
	List = {"Select 1", "Select 2", "Select 3", "Select 4", "Select 5"},
	Value = "Select 1",
	Multi = false,
	Callback = function(value)
		print(value)
end})
    VisualSection:CreateToggle({
	Title = "Monster",
	Value = false,
	Callback = function(value)
		print(value)
end})
elseif _id == 15996404472 or _id == 15996407335 or _id == 15996411979 or _id == 15996410294 or _id == 15996413469 or _id == 15996414738 or _id == 15996416081 or _id == 15996417416 then --classic
	Cs = Window:CreateTab({
	Title = "Classic",
	Desc = "Event",
	Icon = icons.skip,
    })
    ControlSection = Cs:CreateSection({
	Title = "Automatic",
	Side = "Left"
    })
    VisualSection = Cs:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
    ControlSection:CreateButton({
	Title = "Skip [ Instant ]",
    Desc = "Skip to next part.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
end})
    VisualSection:CreateToggle({
	Title = "Monster",
	Value = false,
	Callback = function(value)
		print(value)
end})
elseif _id == 8056702588 then --Book2ch1
	B2C1_1 = Window:CreateTab({
	Title = "Who is Senzai?",
	Desc = "Section 1",
	Icon = icons.city
    })
	B2C1_2 = Window:CreateTab({
	Title = "Yoki Town",
	Desc = "Section 2",
	Icon = icons.town
    })
	B2C1_3 = Window:CreateTab({
	Title = "The Broken Ship",
	Desc = "Section 3",
	Icon = icons.boat
    })
    Section1 = B2C1_1:CreateSection({
	Title = "Part I",
	Side = "Left"
    })
	VisualSection1 = B2C1_1:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	Section1_2 = B2C1_1:CreateSection({
	Title = "Part II",
	Side = "Right"
	})
	VisualSection1:CreateImage({ --ESP
	Title = "Tsushima Rin",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	VisualSection1:CreateToggle({
	Title = "Rat [ Item ]",
	Value = false,
	Callback = function(value)
		print(value)
    end})
	Section1:CreateLabel({
	Title = 'Office',
	Side = "Center"
	})
    Section1:CreateButton({
	Title = "Enter",
    Desc = "Enter to Office. [ Required Normal ]",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section1:CreateLabel({
	Title = 'Cursed of Tsushima',
	Side = "Center"
	})
	Section1:CreateButton({
	Title = "Read",
    Desc = "Read History Book.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section1:CreateButton({
	Title = "Automatic",
    Desc = "3 Posoined Rat",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section1:CreateButton({
	Title = "Leave",
    Desc = "Leave the House of Tsushima.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section1:CreateButton({
	Title = "Escape",
    Desc = "Escape from Tsushima Mio.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section1_2:CreateButton({
	Title = "Enter",
    Desc = "Enter to Nagisa Cave.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section1_2:CreateButton({
	Title = "Escape",
    Desc = "Escape from Nagisa The Sea Serpent.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section2 = B2C1_2:CreateSection({
	Title = "Part I",
	Side = "Left"
    })
	VisualSection2 = B2C1_2:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	Section2_2 = B2C1_2:CreateSection({
	Title = "Part II",
	Side = "Right"
	})
	VisualSection2:CreateImage({
	Title = "Kurobozu",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	VisualSection2:CreateImage({
	Title = "Tsukiya",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section2:CreateLabel({
	Title = 'Town',
	Side = "Center"
	})
	Section2_2:CreateLabel({
	Title = 'Picture & Candles',
	Side = "Center"
	})
	Section2:CreateButton({
	Title = "Talk",
    Desc = "Start Town Quests.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section2:CreateDropdown({
	Title = "Select House",
	List = {"House 1", "House 2", "House 3 [ Drawing ]", "House 4", "House 5", "House 6 [ Candle ]"},
	Value = "House 3 [ Drawing ]",
	Multi = false,
	Callback = function(value)
		print(value)
	end})
	Section2:CreateButton({
	Title = "Enter to Select House",
	Mode = 1,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section2:CreateButton({
	Title = "Automatic",
    Desc = "Unlock House.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section2:CreateButton({
	Title = "Automatic",
    Desc = "Collect All Picture and Show.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section2_2:CreateDropdown({
	Title = "Select Picture",
	List = {"House 1", "House 2", "House 3 [ Drawing ]", "House 4", "House 5", "House 6 [ Candle ]"},
	Value = "House 3 [ Drawing ]",
	Multi = false,
	Callback = function(value)
		print(value)
	end})
	Section2_2:CreateButton({
	Title = "Teleport [ Safe All ]",
	Mode = 1,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section2_2:CreateButton({
	Title = "Automatic",
    Desc = "Get red orb. [ After Light Up ]",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section3 = B2C1_3:CreateSection({
	Title = "Part I",
	Side = "Left"
    })
	VisualSection3 = B2C1_3:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	VisualSection3:CreateImage({
	Title = "Hyakume",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	VisualSection3:CreateImage({
	Title = "Kishin",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	VisualSection3:CreateImage({
	Title = "Kyoji",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section3_2 = B2C1_3:CreateSection({
	Title = "Part II",
	Side = "Right"
	})
	Section3:CreateLabel({
	Title = 'The Broken Ship',
	Side = "Center"
	})
	Section3:CreateButton({
	Title = "Enter",
    Desc = "Enter to The Broken Ship.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section3:CreateLabel({
	Title = 'Inside Ship',
	Side = "Center"
	})
	Section3:CreateLabel({
	Title = '<font color="rgb(255, 0, 0)">Warning [ All Teleport is Not Safe ]</font>',
	Side = "Center"
	})
	Section3:CreateLabel({
	Title = '<font color="rgb(0, 255, 0)">TIP : You can use Noclip to Win.</font>',
	Side = "Center"
	})
	Section3:CreateButton({
	Title = "Teleport Oxygen",
	Mode = 1,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section3:CreateLabel({
	Title = 'Candle',
	Side = "Center"
	})
	Section3:CreateDropdown({
	Title = "Middle Floor",
	List = {"Candle 1"},
	Value = "Candle 1",
	Multi = false,
	Callback = function(value)
		print(value)
	end})
	Section3:CreateButton({
	Title = "Teleport",
	Mode = 1,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section3:CreateDropdown({
	Title = "Upper Floor",
	List = {"Candle 1", "Candle 2", "Candle 3"},
	Value = "Candle 1",
	Multi = false,
	Callback = function(value)
		print(value)
	end})
	Section3:CreateButton({
	Title = "Teleport",
	Mode = 1,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section3:CreateDropdown({
	Title = "Lower Floor",
	List = {"Candle 1", "Candle 2", "Candle 3", "Candle 4", "Candle 5"},
	Value = "Candle 1",
	Multi = false,
	Callback = function(value)
		print(value)
	end})
	Section3:CreateButton({
	Title = "Teleport",
	Mode = 1,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section3:CreateButton({
	Title = "Escape",
    Desc = "Escape from Kyogi.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
	Section3_2:CreateLabel({
	Title = 'The Deep Ocean',
	Side = "Center"
	})
	Section3_2:CreateButton({
	Title = "Enter",
    Desc = "???",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end})
elseif _id == 13489800654 then --Book2ch2
	B2C2_1 = Window:CreateTab({
	Title = "The Ocean",
	Desc = "Section 1",
	Icon = icons.skip,
    })
	B2C2_2 = Window:CreateTab({
	Title = "Forgotten Legacy",
	Desc = "Section 2",
	Icon = icons.skip,
    })
	B2C2_3 = Window:CreateTab({
	Title = "Deep Ocean",
	Desc = "Section 3",
	Icon = icons.skip,
    })
	B2C2_4 = Window:CreateTab({
	Title = "Cursed & Hide and Seek",
	Desc = "Section 4",
	Icon = icons.skip,
    })
	B2C2_5 = Window:CreateTab({
	Title = "Boss Fight",
	Desc = "Section 5",
	Icon = icons.skip,
    })
    VisualSection1 = B2C2_1:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
	VisualSection2 = B2C2_2:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
	VisualSection3 = B2C2_4:CreateSection({
	Title = "Visual",
	Side = "Right"
    })
	VisualSection4 = B2C2_5:CreateSection({
	Title = "Visual & Setting",
	Side = "Right"
	})
	Section1 = B2C2_1:CreateSection({
	Title = "Part I",
	Side = "Left"
	})
	Section1:CreateLabel({
	Title = 'Umibozus [ 1 ]',
	Side = "Center"
	})
    Section1:CreateButton({
	Title = "Enter [ Normal ]",
    Desc = "Enter to Forgotten Legacy.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end
	})
	Section1:CreateButton({
	Title = "Enter [ Nightmare ]",
    Desc = "Enter to Forgotten Legacy.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
	end})
	Section1:CreateLabel({
	Title = 'Jikininkis [ 2 ]',
	Side = "Center"
	})
	Section1:CreateButton({
	Title = "Enter [ Normal ]",
    Desc = "Enter to Legacy.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
    end
	})
	Section1:CreateButton({
	Title = "Enter [ Nightmare ]",
    Desc = "Enter to Legacy.",
	Mode = 2,
	Callback = function()
		Notify("Haha", "ejks", 5)
	end})
    VisualSection1:CreateImage({ --ESP
	Title = "Jikininkis",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	VisualSection2:CreateImage({ --ESP
	Title = "Ashina",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section2 = B2C2_2:CreateSection({
	Title = "Part I",
	Side = "Left"
	})
	Section2_2 = B2C2_2:CreateSection({
	Title = "Part II",
	Side = "Right"
	})
	Section2:CreateLabel({
	Title = 'Meats',
	Side = "Center"
	})
	Section2:CreateButton({
	Title = "Talk",
    Desc = "Talk to Nuppeppo.",
	Mode = 2,
	Callback = function()
		Notify("Warning", "If you Talk again you will get kick from Me. [ By G1GX ]", 15)
	end})
	Section2:CreateButton({
	Title = "Teleport",
    Desc = "Teleport to Restaurant.",
	Mode = 2,
	Callback = function()
		Notify("Warning", "If you Talk again you will get kick from Me. [ By G1GX ]", 15)
	end})
	Section2:CreateButton({
	Title = "Deliver Meats [ Bypass ]",
    Desc = "Send Meats to Nuppeppo.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section2:CreateLabel({
	Title = 'End Part',
	Side = "Center"
	})
	Section2:CreateButton({
	Title = "Enter",
    Desc = "Enter to The Gate.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section2_2:CreateLabel({
	Title = 'Trap',
	Side = "Center"
	})
	Section2_2:CreateButton({
	Title = "Enter",
    Desc = "Enter to Trap.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section2_2:CreateButton({
	Title = "Escape",
    Desc = "Escape from Gashadokuros The Skeleton.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section3 = B2C2_3:CreateSection({
	Title = "Part I",
	Side = "Left"
	})
	Section3_2 = B2C2_3:CreateSection({
	Title = "Part II",
	Side = "Right"
	})
	Section3:CreateButton({
	Title = "Enter",
    Desc = "Enter to The Deep Ocean.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section3:CreateLabel({
	Title = 'Levers',
	Side = "Center"
	})
	Section3:CreateButton({
	Title = "Automatice",
    Desc = "Pull All Levers.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section3:CreateButton({
	Title = "Enter",
    Desc = "Enter to The Gate.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section3:CreateLabel({
	Title = 'Math',
	Side = "Center"
	})
	Section3:CreateButton({
	Title = "Skip",
    Desc = "Skip math Part.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section3_2:CreateLabel({
	Title = 'Menu',
	Side = "Center"
	})
	Section3_2:CreateButton({
	Title = "Eyeball",
	Mode = 1,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section3_2:CreateButton({
	Title = "Ham",
	Mode = 1,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section3_2:CreateButton({
	Title = "Chicken",
	Mode = 1,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section3_2:CreateButton({
	Title = "Escape",
    Desc = "Escape from Zuboshi.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section4 = B2C2_4:CreateSection({
	Title = "Part I",
	Side = "Left"
	})
	Section4_2 = B2C2_4:CreateSection({
	Title = "Part II",
	Side = "Right"
	})
	VisualSection3:CreateImage({ --ESP
	Title = "Kurayami [ Mother ]",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	VisualSection3:CreateImage({ --ESP
	Title = "Chihiro [ Child ]",
	Desc = "[ Quest Hide and Seek ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section4:CreateLabel({
	Title = 'Cursed',
	Side = "Center"
	})
	Section4:CreateButton({
	Title = "Skip",
    Desc = "Skip A E I O U Game.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section4:CreateLabel({
	Title = 'Tower',
	Side = "Center"
	})
	Section4:CreateLabel({
	Title = '<font color="rgb(0, 255, 0)">TIP : You Can Teleport and Active Puzzle and Back to Safezone.</font>',
	Side = "Center"
	})
	Section4:CreateButton({
	Title = "Teleport",
    Desc = "Teleport to Puzzle.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section4:CreateButton({
	Title = "Safezone",
	Mode = 1,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section4:CreateButton({
	Title = "Teleport to Gate",
	Mode = 1,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section4_2:CreateLabel({
	Title = 'Hide and Seek',
	Side = "Center"
	})
	Section4_2:CreateButton({
	Title = "Find",
    Desc = "Find Chihiro.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section4_2:CreateButton({
	Title = "Teleport to Gate",
	Mode = 1,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section5:CreateButton({
	Title = "Safezone",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
	Section4_2:CreateLabel({
	Title = 'Note',
	Side = "Center"
	})
	Section4_2:CreateButton({
	Title = "Automatic",
    Desc = "Collect All Note.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section5 = B2C2_5:CreateSection({
	Title = "Boss Fight",
	Side = "Left"
	})
	VisualSection4:CreateImage({ --ESP
	Title = "Nagisa",
	Desc = "The Great Nure [ 1 ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	VisualSection4:CreateImage({ --ESP
	Title = "Nagisa",
	Desc = "The Sea Serpern [ 2 ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
    end})
	Section5:CreateButton({
	Title = "Automatic",
    Desc = "Collect Ammo.",
	Mode = 2,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section5:CreateButton({
	Title = "Safezone",
	Mode = 1,
	Callback = function()
		Notify("Bypass", "While wait..", 10)
	end})
	Section5:CreateImage({ --ESP
	Title = "Automatic",
	Desc = "Nagisa The Sea Serpern [ 2 ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
    end})
elseif _id == 15962819441 then --Book2ch3
		B2C3_1 = Window:CreateTab({
	Title = "Underworld",
	Desc = "Section 1",
	Icon = icons.information
})
	B2C3_2 = Window:CreateTab({
	Title = "Twisted Labyrinth",
	Desc = "Section 2",
	Icon = icons.information
})
	B2C3_3 = Window:CreateTab({
	Title = "Cavern of Wealth",
	Desc = "Section 3",
	Icon = icons.information
})
	B2C3_4 = Window:CreateTab({
	Title = "Uchiumi Residence",
	Desc = "Section 4",
	Icon = icons.information
})
	B2C3_5 = Window:CreateTab({
	Title = "Yurie's Mori",
	Desc = "Section 5",
	Icon = icons.information
})
	VisualSection1 = B2C3_2:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	VisualSection2 = B2C3_3:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	VisualSection3 = B2C3_4:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	VisualSection5 = B2C3_5:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	VisualSection1:CreateImage({
	Title = "Nejibishoma",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	VisualSection2:CreateImage({
	Title = "Dodomeki",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	VisualSection3:CreateImage({
	Title = "Uchiumi Akihito",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	VisualSection5:CreateImage({
	Title = "Statue",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
    end})
	VisualSection5:CreateImage({
	Title = "Boogeyman",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
    end})
	VisualSection5:CreateImage({
	Title = "Mud",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
    end})
	VisualSection5:CreateImage({
	Title = "Yurie's Mori",
	Desc = "[ Boss ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
    end})
	VisualSection5:CreateImage({
	Title = "House",
	Desc = "[ Quest ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
    end})
	Section1 = B2C3_1:CreateSection({
	Title = "Part I",
	Side = "Left"
})
	Section1_2 = B2C3_1:CreateSection({
	Title = "Part II",
	Side = "Right"
})

	Section2 = B2C3_2:CreateSection({
	Title = "Part I",
	Side = "Left"
})
	Section2_2 = B2C3_2:CreateSection({
	Title = "Part II",
	Side = "Right"
})

	Section3 = B2C3_3:CreateSection({
	Title = "Part I",
	Side = "Left"
})
	Section3_2 = B2C3_3:CreateSection({
	Title = "Part II",
	Side = "Right"
})

	Section4 = B2C3_4:CreateSection({
	Title = "Part I",
	Side = "Left"
})
	Section4_2 = B2C3_4:CreateSection({
	Title = "Part II",
	Side = "Left"
})
	Section4_3 = B2C3_4:CreateSection({
	Title = "Part III",
	Side = "Right"
})

	Section5 = B2C3_5:CreateSection({
	Title = "Part I",
	Side = "Left"
})
	Section5_2 = B2C3_5:CreateSection({
	Title = "Part II",
	Side = "Left"
})
	Section5_3 = B2C3_5:CreateSection({
	Title = "Part III",
	Side = "Right"
})
	Section5_4 = B2C3_5:CreateSection({
	Title = "Part IV",
	Side = "Right"
})
	Section1:CreateButton({
	Title = "Talk [ Multi ]",
	Desc = "Talk Gozu & Mezu",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section1:CreateButton({
	Title = "Skip [ Required Solo ]",
	Desc = "Skip Gozu & Mezu",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section1:CreateLabel({
	Title = 'Start',
	Side = "Center"
	})
	Section1:CreateButton({
	Title = "Talk",
	Desc = "Talk to Old Man Keneo.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section1_2:CreateLabel({
	Title = 'Quest',
	Side = "Center"
	})
	Section1_2:CreateButton({
	Title = "Automatic",
	Desc = "Collect Hearts and Place and Spin.",
	Mode = 2,
	Callback = function()
		print("Click!!")
    end})
	Section1_2:CreateLabel({
	Title = 'Escape',
	Side = "Center"
	})
	Section1_2:CreateButton({
	Title = "Start",
	Desc = "Teleport to Red Circle.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section1_2:CreateButton({
	Title = "Escape",
	Desc = "Escape from Grind Demon.",
	Mode = 2,
	Callback = function()
		print("Click!!")
    end
})
	Section2:CreateLabel({
	Title = 'Quest',
	Side = "Center"
	})
	Section2:CreateButton({
	Title = "Automatic [ Safe ]",
	Desc = "Craft Torch and Ignite the Torch.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section2:CreateButton({
	Title = "Safezone",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
	Section2_2:CreateLabel({
	Title = 'Escape [ 2 ]',
	Side = "Center"
})
	Section2_2:CreateButton({
	Title = "Escape",
	Desc = "Leave The Twisted Labyrinth.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section2_2:CreateButton({
	Title = "Escape",
	Desc = "Leave The Twisted Labyrinth.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section3:CreateLabel({
	Title = 'Bells',
	Side = "Center"
})
	Section3:CreateDropdown({
	Title = "Select Bell",
	List = {"Select 1", "Select 2", "Select 3"},
	Value = "Select 2",
	Multi = false,
	Callback = function(value)
		print(value)
	end})
	Section3:CreateButton({
	Title = "Teleport",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
	Section3:CreateButton({
	Title = "Safezone",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
	Section3:CreateLabel({
	Title = 'Gate Puzzle',
	Side = "Center"
})
	Section3:CreateLabel({
	Title = '<font color="rgb(0, 255, 0)">TIP : You Can Teleport and Active Puzzle and Back to Safezone.</font>',
	Side = "Center"
})
	Section3:CreateLabel({
	Title = '<font color="rgb(255, 255, 0)">If Cant Teleport to Puzzle Gate, You need to Teleport Back to Safezone and Try again.</font>',
	Side = "Center"
})
	Section3:CreateButton({
	Title = "Teleport",
	Desc = "Teleport to Gate Puzzle.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section3:CreateButton({
	Title = "Automatic [ After Active ]",
	Desc = "Solve the Puzzle Gate.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section3_2:CreateButton({
	Title = "Escape",
	Desc = "Escape from Dodomeki.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section4:CreateLabel({
	Title = 'Raft',
	Side = "Center"
})
	Section4:CreateButton({
	Title = "Start",
	Desc = "Enter to The Raft.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section4:CreateToggle({
	Title = "Automatic Active Puzzle",
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section4_2:CreateLabel({
	Title = 'Uchiumi Residence',
	Side = "Center"
})
	Section4_2:CreateButton({
	Title = "Enter",
	Desc = "Enter to your House.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section4_2:CreateToggle({
	Title = "Safezone",
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section4_2:CreateToggle({
	Title = "Detect Isamu [ Instant ]",
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section4_2:CreateLabel({
	Title = 'Uchiumi Residence [ Playing ]',
	Side = "Center"
})
	Section4_2:CreateToggle({
	Title = "Teleport to Bed When 6 PM",
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section4_2:CreateToggle({
	Title = "Automatic Heartbeat",
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section4_3:CreateLabel({
	Title = 'Train Station',
	Side = "Center"
})
	Section4_3:CreateToggle({
	Title = "Teleport to Train",
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section4_3:CreateToggle({
	Title = "Automatic Free Yourself",
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section4_3:CreateToggle({
	Title = "Disible Train Monster",
	Value = false,
	Callback = function(value)
		print(value)
	end})

	Section5:CreateLabel({
	Title = 'Village',
	Side = "Center"
})
	Section5:CreateButton({
	Title = "Automatic",
	Desc = "Collect and Deliver All Larve.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section5:CreateButton({
	Title = "Safezone",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
	Section5:CreateLabel({
	Title = 'Mud',
	Side = "Center"
})
	Section5:CreateButton({
	Title = "Escape",
	Desc = "Escape The Mud.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section5_2:CreateLabel({
	Title = "Yurie's Forest",
	Side = "Center"
})
	Section5_2:CreateDropdown({
	Title = "Select House",
	List = {"Select 1", "Select 2", "Select 3"},
	Value = "Select 2",
	Multi = false,
	Callback = function(value)
		print(value)
	end})
	Section5_2:CreateButton({
	Title = "Teleport",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
	Section5_2:CreateButton({
	Title = "Automatic",
	Desc = "Solve The House Puzzle.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section5_3:CreateLabel({
	Title = "Yurie's Mori",
	Side = "Center"
})
	Section5_3:CreateToggle({
	Title = "Automatic Collect Katana",
	Value = false,
	Callback = function(value)
		print(value)
    end})
	Section5_3:CreateToggle({
	Title = "Equip Katana",
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section5_3:CreateToggle({
	Title = "Equip Multi Katana [ Lag ]",
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section5_3:CreateButton({
	Title = "Fly & Noclip",
	Desc = "Recommend Speed 1 - 3.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section5_3:CreateButton({
	Title = "Safezone",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
	Section5_4:CreateLabel({
	Title = "Shinigami",
	Side = "Center"
})
	Section5_4:CreateButton({
	Title = "Start",
	Desc = "Talk to Shinigami.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section5_4:CreateButton({
	Title = "Escape",
	Desc = "Escape from Shinigami.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
elseif _id == 8311302084 or _id == 8311299084 then --Xmas
	XMAS = Window:CreateTab({
	Title = "General",
	Desc = "Automatic",
	Icon = icons.information
})
	VisualSection1 = XMAS:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	VisualSection1:CreateImage({
	Title = "Lampus",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
	end})
	Section1 = XMAS:CreateSection({
	Title = "Act I",
	Side = "Left"
})
	Section1:CreateButton({
	Title = "Automatic [ 1 ]",
	Desc = "Repair Sleigh.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section1:CreateButton({
	Title = "Automatic [ 2 ]",
	Desc = "Collect All Toys.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section1:CreateButton({
	Title = "Automatic [ 3 ]",
	Desc = "Grab key from Lampus.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
elseif _id == 11126398230 then --NC
	nc = Window:CreateTab({
	Title = "General",
	Desc = "Automatic",
	Icon = icons.information
})
	VisualSection1 = nc:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	VisualSection1:CreateImage({
	Title = "Clown",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
end})
	VisualSection1:CreateImage({
	Title = "Ringmaster",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
end})
	Section1 = nc:CreateSection({
	Title = "Act I",
	Side = "Left"
})
	Section2 = nc:CreateSection({
	Title = "Act II",
	Side = "Left"
})
	Section3 = nc:CreateSection({
	Title = "Act III",
	Side = "Right"
})
	Section1:CreateDropdown({
	Title = "Select Box",
	List = {"Select 1", "Select 2", "Select 3"},
	Value = "Select 2",
	Multi = false,
	Callback = function(value)
		print(value)
	end})
	Section1:CreateButton({
	Title = "Teleport [ Safe All ]",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
	Section2:CreateToggle({
	Title = "Automatic Cards",
	Value = false,
	Callback = function(value)
		print(value)
end})
	Section2:CreateToggle({
	Title = "Show Cards [ UI ]",
	Value = false,
	Callback = function(value)
		print(value)
end})
	Section3:CreateImage({
	Title = "Automatic [ Boss ]",
	Desc = "Defeat The Ringmaster.",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
end})
elseif _id == 7618863566 then --Hell
	dc = Window:CreateTab({
	Title = "General",
	Desc = "Automatic",
	Icon = icons.information
})
	VisualSection1 = dc:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	VisualSection1:CreateImage({
	Title = "Shinigami",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
end})
	Section1 = dc:CreateSection({
	Title = "Act I",
	Side = "Left"
})
	Section1:CreateButton({
	Title = "Automatic [ Win ]",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
elseif _id == 7633631103 then --HW1
    hw1 = Window:CreateTab({
	Title = "General",
	Desc = "Automatic",
	Icon = icons.information
})
	VisualSection1 = hw1:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	VisualSection1:CreateImage({
	Title = "Nagemi",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
end})
	Section1 = hw1:CreateSection({
	Title = "Act I",
	Side = "Left"
})
	Section1:CreateButton({
	Title = "Automatic",
	Desc = "Burn All Pumpkin.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section1:CreateButton({
	Title = "Safezone",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
elseif _id == 7633631351 then --HW2
	hw1 = Window:CreateTab({
	Title = "General",
	Desc = "Automatic",
	Icon = icons.information
})
	VisualSection1 = hw1:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	VisualSection1:CreateImage({
	Title = "Taiyo",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
end})
	Section1 = hw1:CreateSection({
	Title = "Act II",
	Side = "Left"
})
	Section1:CreateButton({
	Title = "Automatic",
	Desc = "Light Up All Candle.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section1:CreateButton({
	Title = "Safezone",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
	elseif _id == 7633631511 then --HW3
    hw1 = Window:CreateTab({
	Title = "General",
	Desc = "Automatic",
	Icon = icons.information
})
	VisualSection1 = hw1:CreateSection({
	Title = "Visual",
	Side = "Right"
	})
	VisualSection1:CreateImage({
	Title = "Taiyo",
	Desc = "[ Monster ]",
	Icon = 79977248698994,
	Toggle = true,
	Value = false,
	Callback = function(value)
		print(value)
end})
	Section1 = hw1:CreateSection({
	Title = "Act III",
	Side = "Left"
})
	Section1:CreateButton({
	Title = "Automatic",
	Desc = "Craft Potion.",
	Mode = 2,
	Callback = function()
		print("Click!!")
	end})
	Section1:CreateButton({
	Title = "Safezone",
	Mode = 1,
	Callback = function()
		print("Click!!")
	end})
else
    Notify("Error", "Not Support", 15)
end
