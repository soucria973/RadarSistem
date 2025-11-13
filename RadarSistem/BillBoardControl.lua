local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BillBoardEvent = ReplicatedStorage:WaitForChild("BillBoardEvent")

local Radar = workspace:WaitForChild("Radar")

local Fuzivel1 = Radar:WaitForChild("Fuzivel1")
local Fuzivel2 = Radar:WaitForChild("Fuzivel2")
local Fuzivel3 = Radar:WaitForChild("Fuzivel3")
local Fuzivel4 = Radar:WaitForChild("Fuzivel4")

local Gui1 = Fuzivel1:WaitForChild("BillboardGui")
local Gui2 = Fuzivel2:WaitForChild("BillboardGui")
local Gui3 = Fuzivel3:WaitForChild("BillboardGui")
local Gui4 = Fuzivel4:WaitForChild("BillboardGui")

local function ToggleFuses(state)
	Gui1.Enabled = state
	Gui2.Enabled = state
	Gui3.Enabled = state
	Gui4.Enabled = state

	if state then
		task.wait(8)
		Gui1.Enabled = false
		Gui2.Enabled = false
		Gui3.Enabled = false
		Gui4.Enabled = false
	end
end

BillBoardEvent.OnClientEvent:Connect(ToggleFuses)

-- AllayGamer Code