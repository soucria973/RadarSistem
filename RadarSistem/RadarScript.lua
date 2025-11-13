local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BillBoardEvent = ReplicatedStorage:WaitForChild("BillBoardEvent")

local Radar = workspace:WaitForChild("Radar")

-- tabela para controlar quem já está dentro (evita spam)
local inside = {}

Radar.Touched:Connect(function(hit)
	local player = Players:GetPlayerFromCharacter(hit.Parent)
	if player and not inside[player] then
		inside[player] = true
		BillBoardEvent:FireClient(player, true)
	end
end)

Radar.TouchEnded:Connect(function(hit)
	local player = Players:GetPlayerFromCharacter(hit.Parent)
	if player and inside[player] then
		inside[player] = nil
		BillBoardEvent:FireClient(player, false)
	end
end)
