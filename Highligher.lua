-- Function to create a highlight UI for a player
local function CreateHighlightUI(player)
    local playerGui = player:WaitForChild("PlayerGui")
    
    -- Create a BillboardGui
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Size = UDim2.new(1, 0, 1, 0)
    billboardGui.Adornee = player.Character.Head
    billboardGui.Parent = playerGui

    -- Create a Frame to represent the highlight
    local highlightFrame = Instance.new("Frame")
    highlightFrame.Size = UDim2.new(1.5, 0, 1.5, 0) -- Adjust the size as needed
    highlightFrame.Position = UDim2.new(-0.25, 0, -0.25, 0)
    highlightFrame.BackgroundColor3 = Color3.new(1, 0, 0) -- Change the color as desired
    highlightFrame.BackgroundTransparency = 1 -- Adjust the transparency as desired
    highlightFrame.Parent = billboardGui
end

-- Function to create highlight UI for all players
local function CreateHighlightUIForAllPlayers()
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        CreateHighlightUI(player)
    end
end

-- Run the CreateHighlightUIForAllPlayers function when a player joins the game
game:GetService("Players").PlayerAdded:Connect(CreateHighlightUI)

-- You can also run it for existing players when the script starts
CreateHighlightUIForAllPlayers()
