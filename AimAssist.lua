local camera = game.workspace.CurrentCamera
local UIS = game.UserInputService

function getClosest()
  local closestDistance = math.huge
  local closestPlayer = nil
  for i,v in pairs(game.Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer and v.Team ~= game.Players.LocalPlayers.Team then
      if distance < closestDistance then
        closestDistance = distance
        closestPlayer = v
      end
    end
  end
  return closestPlayer
end

UIS.InputBegan:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton2 then
      _G.aim = true
      while wait() do
        camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Character.Head.Position)
        if _G.aim == false then return end
  end
end)
UIS.InputEnded:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton2 then
        _G.aim = false
end)
