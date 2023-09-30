-- Function to create a highlight part for a player
local function CreateHighlightPart(player)
    local character = player.Character
    if not character then
        return
    end
    
    -- Create a new part to represent the highlight
    local highlight = Instance.new("Part")
    highlight.Anchored = true
    highlight.CanCollide = false
    highlight.Size = character.HumanoidRootPart.Size * 1.2 -- Adjust the size as needed
    highlight.BrickColor = BrickColor.new("Bright red") -- Change the color as desired
    highlight.Transparency = 0.5 -- Adjust the transparency as desired
    highlight.Parent = workspace

    -- Create a SurfaceGui to render the highlight through walls
    local surfaceGui = Instance.new("SurfaceGui")
    surfaceGui.Face = Enum.NormalId.Back -- Render through the back of walls
    surfaceGui.Parent = highlight

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 1
    frame.Parent = surfaceGui

    -- Attach the highlight to the player's character
    highlight.CFrame = character.HumanoidRootPart.CFrame

    -- Remove the highlight after a certain duration (e.g., 5 seconds)
    wait(5)
    highlight:Destroy()
end

-- Function to create a highlight part for all players
local function CreateHighlightPartsForAllPlayers()
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        CreateHighlightPart(player)
    end
end

-- Run the CreateHighlightPartsForAllPlayers function periodically (e.g., every 10 seconds)
while true do
    CreateHighlightPartsForAllPlayers()
    wait(10) -- Adjust the interval as desired
end
