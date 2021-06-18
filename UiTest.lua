  
local StartLib = function()
    local Library = {}
    return Library
end


local RealZzLib = StartLib()

function RealZzLib(GameName)

local Main = Instance.new("ScreenGui")
local mainbackground = Instance.new("ImageLabel")
local Logo = Instance.new("ImageLabel")
local hubname = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Bar = Instance.new("Frame")
local gamename = Instance.new("TextLabel")
local TabContainer = Instance.new("ScrollingFrame")
local Containers = Instance.new("Frame")


Main.Name = GameName
Main.Parent = game.CoreGui
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainbackground.Name = "mainbackground"
mainbackground.Parent = Main
mainbackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainbackground.BorderSizePixel = 0
mainbackground.Position = UDim2.new(0.130445316, 0, 0.317636251, 0)
mainbackground.Size = UDim2.new(0, 601, 0, 352)
mainbackground.Image = "rbxassetid://6780421363"

Logo.Name = "Logo"
Logo.Parent = mainbackground
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderSizePixel = 0
Logo.Size = UDim2.new(0, 45, 0, 45)
Logo.Image = "rbxassetid://6771656595"

hubname.Name = "hubname"
hubname.Parent = mainbackground
hubname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hubname.BackgroundTransparency = 1.000
hubname.BorderSizePixel = 0
hubname.Position = UDim2.new(0.0746320337, 0, 0, 0)
hubname.Size = UDim2.new(0, 154, 0, 45)
hubname.Font = Enum.Font.SourceSansSemibold
hubname.Text = "RealZzHub"
hubname.TextColor3 = Color3.fromRGB(255, 255, 255)
hubname.TextSize = 41.000
hubname.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = mainbackground

TabContainer.Name = "TabContainer"
TabContainer.Parent = mainbackground
TabContainer.Active = true
TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabContainer.BackgroundTransparency = 1.000
TabContainer.BorderSizePixel = 0
TabContainer.Position = UDim2.new(0.0133111477, 0, 0.15625, 0)
TabContainer.Size = UDim2.new(0, 198, 0, 289)
TabContainer.ScrollBarThickness = 5

UIListLayout.Parent = TabContainer
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.0199999996, 0)

Containers.Name = "Containers"
Containers.Parent = mainbackground
Containers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Containers.BackgroundTransparency = 1.000
Containers.BorderSizePixel = 0
Containers.Position = UDim2.new(0.419301122, 0, 0.15625, 0)
Containers.Size = UDim2.new(0, 339, 0, 276)

Bar.Name = "Bar"
Bar.Parent = mainbackground
Bar.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.371048242, 0, 0, 0)
Bar.Size = UDim2.new(0, 8, 0, 352)

gamename.Name = "gamename"
gamename.Parent = mainbackground
gamename.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gamename.BackgroundTransparency = 1.000
gamename.BorderSizePixel = 0
gamename.Position = UDim2.new(0.419301122, 0, 0, 0)
gamename.Size = UDim2.new(0, 339, 0, 45)
gamename.Font = Enum.Font.SourceSans
gamename.Text = GameName
gamename.TextColor3 = Color3.fromRGB(255, 255, 255)
gamename.TextSize = 27.000
gamename.TextXAlignment = Enum.TextXAlignment.Left


local function Drag()

	local UserInputService = game:GetService("UserInputService")
	
	local gui = Main
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(Drag)()

local Library = CreateLibrary()

function Library:NewTab(Name)
local Tab1 = Instance.new("TextButton")
local Tab1_2 = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UICorner_2 = Instance.new("UICorner")


Tab1.Name = Name
Tab1.Parent = TabContainer
Tab1.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Tab1.Position = UDim2.new(0.06313131, 0, 0.0207612459, 0)
Tab1.Size = UDim2.new(0, 173, 0, 34)
Tab1.Font = Enum.Font.SourceSans
Tab1.Text = Name
Tab1.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab1.TextSize = 35.000

UICorner_2.Parent = Tab1

Tab1_2.Name = Name
Tab1_2.Parent = Containers
Tab1_2.Active = true
Tab1_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tab1_2.BackgroundTransparency = 1.000
Tab1_2.BorderSizePixel = 0
Tab1_2.Size = UDim2.new(0, 338, 0, 276)
Tab1_2.ScrollBarThickness = 5
Tab1_2.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left


end

end







-----------------------------------


