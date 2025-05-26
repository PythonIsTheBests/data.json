local po = 0
function CreateStyledButton(parent, text, callback)
	local button = Instance.new("TextButton")
	button.Size = UDim2.new(1, -10, 0, 30)
	button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	button.TextColor3 = Color3.new(1, 1, 1)
	button.Font = Enum.Font.SourceSansBold
	button.TextSize = 18
	button.Text = text
	button.BorderSizePixel = 0
	button.RichText = true
	button.Parent = parent
	button.AutoButtonColor = false

	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
	end)
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	end)

	button.MouseButton1Click:Connect(callback)

	return button
end

function CreateTitleLabel(parent, text)
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, -10, 0, 30)
	label.BackgroundTransparency = 1
	label.TextColor3 = Color3.new(1, 1, 1)
	label.Font = Enum.Font.SourceSansBold
	label.TextSize = 20
	label.Text = text
	label.RichText = true
	label.TextXAlignment = Enum.TextXAlignment.Center
	label.Parent = parent
	return label
end
local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
screenGui.Name = "Cheat BRUHHHH"

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 300)
frame.Position = UDim2.new(0, 20, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui
local uidrag = Instance.new("UIDragDetector")
uidrag.Parent = frame
frame.Draggable = true

local layout = Instance.new("UIListLayout", frame)
layout.Padding = UDim.new(0, 5)
layout.FillDirection = Enum.FillDirection.Vertical
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.SortOrder = Enum.SortOrder.LayoutOrder

CreateTitleLabel(frame, "Climb and Jump Tower")
CreateTitleLabel(frame, 'Main')
CreateStyledButton(frame, "Speed hack", function()
	game.Players.LocalPlayer:WaitForChild("AvatarSpeed").Value = 99999999999999
end)
CreateTitleLabel(frame, 'Get Free Gamepass')
CreateStyledButton(frame, "Get Fast Hatch", function()
	game.Players.LocalPlayer:WaitForChild("GamePass"):WaitForChild("Fast-Hatch").Value = 1
end)

CreateTitleLabel(frame, 'By: Script_exe03')

CreateStyledButton(frame, "Delete Gui", function()
	screenGui:Destroy()
	loop = false
end)
