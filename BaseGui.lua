local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Basic") -- Main Window

local b = w:CreateFolder("Highlighter") -- Hghlighter

local c = w:CreateFolder("Aim Assist") -- AimAssist

b:Label("Highlight People",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
    
}) 

b:Button("Activate",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/T4NK3R252/GaminChair/main/Highligher.lua"))()
    print("Highlighter Activated")
end)

-- b:Toggle("Toggle",function(bool)
--     shared.toggle = bool
--     print(shared.toggle)
-- end)

-- b:DestroyGui()

c:Label("Aim Assist", {
    TextSize = 25;
    TextColor = Color3.fromRGB(255, 255, 255);
    BgColor = Color3.fromRGB(69, 69, 69);
})

c:Button("Activate",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/T4NK3R252/GaminChair/main/AimAssist.lua"))()
    print("Aim Assist Activated")
end)

w:DestroyGui()
