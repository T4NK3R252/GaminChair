-- Define a function to highlight a player
local function HighlightPlayer(player)
    -- Create a new part to represent the highlight
    local highlight = Instance.new("Part")
    highlight.Anchored = true
    highlight.CanCollide = false
    highlight.Size = player.Character.HumanoidRootPart.Size * 1.2 -- Adjust the size as needed
    highlight.BrickColor = BrickColor.new("Bright red") -- Change the color as desired
    highlight.Transparency = 0.5 -- Adjust the transparency as desired

    -- Attach the highlight to the player's character
    highlight.CFrame = player.Character.HumanoidRootPart.CFrame
    highlight.Parent = workspace

    -- Remove the highlight after a certain duration (e.g., 5 seconds)
    wait(5)
    highlight:Destroy()
end

-- Function to highlight all players
local function HighlightAllPlayers()
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        HighlightPlayer(player)
    end
end

-- Run the HighlightAllPlayers function periodically (e.g., every 10 seconds)
while true do
    HighlightAllPlayers()
    wait(10) -- Adjust the interval as desired
end
