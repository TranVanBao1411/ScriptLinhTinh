local RippleFPS = Instance.new("ScreenGui")
	local Rippletime = Instance.new("ScreenGui")
	local Framefps = Instance.new("Frame")
	local Frametime = Instance.new("Frame")
	local UICorner213 = Instance.new("UICorner")
	local UICorner214 = Instance.new("UICorner")
	local TextLabelfps = Instance.new("TextLabel")
	local TextLabeltime = Instance.new("TextLabel")
	local ImageLabelfps = Instance.new("ImageLabel")
	local ImageLabeltime = Instance.new("ImageLabel")
	local Strokefps = Instance.new("UIStroke")
	local Stroketime = Instance.new("UIStroke")
	
	RippleFPS.Name = "RippleFPS"
	RippleFPS.Parent = game.CoreGui
	RippleFPS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	Rippletime.Name = "Rippletime"
	Rippletime.Parent = game.CoreGui
	Rippletime.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	Framefps.Name = "Framefps"
	Framefps.Parent = RippleFPS
	Framefps.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Framefps.BorderSizePixel = 0
	Framefps.Position = UDim2.new(0.010, 0, 0.21084006, 0)
	Framefps.Size = UDim2.new(0, 193, 0, 44)
	
	UICorner213.CornerRadius = UDim.new(0, 4)
	UICorner213.Parent = Framefps
	
	Strokefps.Thickness = 1
	Strokefps.Name = ""
	Strokefps.Parent = Framefps
	Strokefps.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	Strokefps.LineJoinMode = Enum.LineJoinMode.Round
	Strokefps.Color = _G.Color
	Strokefps.Transparency = 0
	
	Frametime.Name = "Frametime"
	Frametime.Parent = Rippletime
	Frametime.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Frametime.BorderSizePixel = 0
	Frametime.Position = UDim2.new(0.010, 0, 0.11084006, 0)
	Frametime.Size = UDim2.new(0, 293, 0, 44)
	
	UICorner214.CornerRadius = UDim.new(0, 4)
	UICorner214.Parent = Frametime
	
	Stroketime.Thickness = 1
	Stroketime.Name = ""
	Stroketime.Parent = Frametime
	Stroketime.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	Stroketime.LineJoinMode = Enum.LineJoinMode.Round
	Stroketime.Color = _G.Color
	Stroketime.Transparency = 0
	
	TextLabelfps.Name = "TextLabelfps"
	TextLabelfps.Parent = Framefps
	TextLabelfps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabelfps.BackgroundTransparency = 1.000
	TextLabelfps.Position = UDim2.new(0.356857866, 0, 0.234848887, 0)
	TextLabelfps.Size = UDim2.new(0, 124, 0, 23)
	TextLabelfps.Font = Enum.Font.GothamSemibold
	TextLabelfps.Text = "FPS:N/A"
	TextLabelfps.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabelfps.TextSize = 14.000
	TextLabelfps.TextXAlignment = Enum.TextXAlignment.Left
	
	TextLabeltime.Name = "TextLabeltime"
	TextLabeltime.Parent = Frametime
	TextLabeltime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabeltime.BackgroundTransparency = 1.000
	TextLabeltime.Position = UDim2.new(0.356857866, 0, 0.234848887, 0)
	TextLabeltime.Size = UDim2.new(0, -35, 0, 23)
	TextLabeltime.Font = Enum.Font.GothamSemibold
	TextLabeltime.Text = "FPS:N/A"
	TextLabeltime.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabeltime.TextSize = 14.000
	TextLabeltime.TextXAlignment = Enum.TextXAlignment.Left
	
	spawn(function()
		while wait() do
			pcall(function()
				local scripttime=game.Workspace.DistributedGameTime
				local seconds = scripttime%60
				local minutes = math.floor(scripttime/60%60)
				local hours = math.floor(scripttime/3600)
				local tempo = string.format("%.0f Hour , %.0f Minute , %.0f Second", hours ,minutes, seconds)
				TextLabeltime.Text = tempo
			end)
		end
	end)
	
	spawn(function()
		while wait() do
			pcall(function()
				TextLabelfps.Text = "FPS:"..string.format("%d",workspace:GetRealPhysicsFPS())
			end)
		end
	end)
	
	ImageLabelfps.Name = "ImageLabelfps"
	ImageLabelfps.Parent = Framefps
	ImageLabelfps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabelfps.BackgroundTransparency = 1.000
	ImageLabelfps.Position = UDim2.new(0.083989636, 0, 0.15545856, 0)
	ImageLabelfps.Size = UDim2.new(0, 29, 0, 29)
	ImageLabelfps.Image = "rbxassetid://14660700477"
	
	ImageLabeltime.Name = "ImageLabeltime"
	ImageLabeltime.Parent = Frametime
	ImageLabeltime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabeltime.BackgroundTransparency = 1.000
	ImageLabeltime.Position = UDim2.new(0.083989636, -9, 0.15545856, 0)
	ImageLabeltime.Size = UDim2.new(0, 29, 0, 29)
	ImageLabeltime.Image = "rbxassetid://14660700477"
	
	Framefps.MouseEnter:Connect(function()
		TweenService:Create(
			Framefps,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{BackgroundTransparency = 1}
		):Play()
		TweenService:Create(
			Strokefps,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{Transparency = 1}
		):Play()
		TweenService:Create(
			TextLabelfps,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{TextTransparency = 1}
		):Play()
		TweenService:Create(
			ImageLabelfps,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{ImageTransparency = 1}
		):Play()
	end)
	Framefps.MouseLeave:Connect(function()
		TweenService:Create(
			Framefps,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{BackgroundTransparency = 0}
		):Play()
		TweenService:Create(
			Strokefps,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{Transparency = 0}
		):Play()
		TweenService:Create(
			TextLabelfps,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{TextTransparency = 0}
		):Play()
		TweenService:Create(
			ImageLabelfps,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{ImageTransparency = 0}
		):Play()
	end)
	
	Frametime.MouseEnter:Connect(function()
		TweenService:Create(
			Frametime,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{BackgroundTransparency = 1}
		):Play()
		TweenService:Create(
			Stroketime,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{Transparency = 1}
		):Play()
		TweenService:Create(
			TextLabeltime,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{TextTransparency = 1}
		):Play()
		TweenService:Create(
			ImageLabeltime,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{ImageTransparency = 1}
		):Play()
	end)
	Frametime.MouseLeave:Connect(function()
		TweenService:Create(
			Frametime,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{BackgroundTransparency = 0}
		):Play()
		TweenService:Create(
			Stroketime,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{Transparency = 0}
		):Play()
		TweenService:Create(
			TextLabeltime,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{TextTransparency = 0}
		):Play()
		TweenService:Create(
			ImageLabeltime,
			TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{ImageTransparency = 0}
		):Play()
	end)
	
	Yedhee.TextTransparency = 1
		Uitoggle.TextTransparency = 1
		ToggleImgUi.ImageTransparency = 1
		ToggleFrameUi.BackgroundTransparency = 1.000
		SearchStroke.Transparency = 1
		TweenService:Create(
			Framefps,
			TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{BackgroundTransparency = 1}
		):Play()
		TweenService:Create(
			Strokefps,
			TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{Transparency = 1}
		):Play()
		TweenService:Create(
			TextLabelfps,
			TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{TextTransparency = 1}
		):Play()
		TweenService:Create(
			ImageLabelfps,
			TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{ImageTransparency = 1}
		):Play()
		
		UserInputService.InputBegan:Connect(function(input)
			if input.KeyCode == Enum.KeyCode[yoo] then
				if uihide == false then
					ToggleFrameUi:TweenSize(UDim2.new(0, 198, 0, 48),"In","Quad",0.2,true)
					game:GetService("TweenService"):Create(
						ToggleFrameUi,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
					Framefps:TweenSize(UDim2.new(0, 193, 0, 44),"In","Quad",0.2,true)
					TweenService:Create(
						Framefps,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
					TweenService:Create(
						Strokefps,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Transparency = 0}
					):Play()
					TweenService:Create(
						TextLabelfps,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
					TweenService:Create(
						ImageLabelfps,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{ImageTransparency = 0}
					):Play()
					Yedhee.TextTransparency = 0
					Uitoggle.TextTransparency = 0
					ToggleImgUi.ImageTransparency = 0
					SearchStroke.Transparency = 0
					wait(.2)
					uihide = true
					Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
				else
					ToggleFrameUi:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
					game:GetService("TweenService"):Create(
						ToggleFrameUi,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 1}
					):Play()
					Framefps:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
					game:GetService("TweenService"):Create(
						Framefps,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 1}
					):Play()
					TweenService:Create(
						Strokefps,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Transparency = 1}
					):Play()
					TweenService:Create(
						TextLabelfps,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 1}
					):Play()
					TweenService:Create(
						ImageLabelfps,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{ImageTransparency = 1}
					):Play()
					Yedhee.TextTransparency = 1
					Uitoggle.TextTransparency = 1
					ToggleImgUi.ImageTransparency = 1
					SearchStroke.Transparency = 1
					wait(.2)
					uihide = false
					Main:TweenSize(UDim2.new(0, 656, 0, 300),"Out","Quad",0.4,true)
				end
			end
		end)
		
		TweenService:Create(
			Frametime,
			TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{BackgroundTransparency = 1}
		):Play()
		TweenService:Create(
			Stroketime,
			TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{Transparency = 1}
		):Play()
		TweenService:Create(
			TextLabeltime,
			TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{TextTransparency = 1}
		):Play()
		TweenService:Create(
			ImageLabeltime,
			TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
			{ImageTransparency = 1}
		):Play()
	
		UserInputService.InputBegan:Connect(function(input)
			if input.KeyCode == Enum.KeyCode[yoo] then
				if uihide == false then
					ToggleFrameUi:TweenSize(UDim2.new(0, 198, 0, 48),"In","Quad",0.2,true)
					game:GetService("TweenService"):Create(
						ToggleFrameUi,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
					Frametime:TweenSize(UDim2.new(0, 293, 0, 44),"In","Quad",0.2,true)
					TweenService:Create(
						Frametime,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
					TweenService:Create(
						Stroketime,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Transparency = 0}
					):Play()
					TweenService:Create(
						TextLabeltime,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
					TweenService:Create(
						ImageLabeltime,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{ImageTransparency = 0}
					):Play()
					Yedhee.TextTransparency = 0
					Uitoggle.TextTransparency = 0
					ToggleImgUi.ImageTransparency = 0
					SearchStroke.Transparency = 0
					wait(.2)
					uihide = true
					Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
				else
					ToggleFrameUi:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
					game:GetService("TweenService"):Create(
						ToggleFrameUi,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 1}
					):Play()
					Framefps:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
					game:GetService("TweenService"):Create(
						Frametime,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 1}
					):Play()
					TweenService:Create(
						Stroketime,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Transparency = 1}
					):Play()
					TweenService:Create(
						TextLabeltime,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 1}
					):Play()
					TweenService:Create(
						ImageLabeltime,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{ImageTransparency = 1}
					):Play()
					Yedhee.TextTransparency = 1
					Uitoggle.TextTransparency = 1
					ToggleImgUi.ImageTransparency = 1
					SearchStroke.Transparency = 1
					wait(.2)
					uihide = false
					Main:TweenSize(UDim2.new(0, 656, 0, 300),"Out","Quad",0.4,true)
				end
			end
		end)