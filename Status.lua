local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()


local window = library:Window("Pickle Hub | Status")

window:Label("Dingus", Color3.fromRGB(127, 143, 166))
window:Label("Zombie Attack", Color3.fromRGB(127, 143, 166))
window:Label("Doors", Color3.fromRGB(127, 143, 166))
window:Label("Anime Fighting Simulator X", Color3.fromRGB(127, 143, 166))
window:Label("Dungeon Quest", Color3.fromRGB(127, 143, 166))
window:Label("Chest Hero Simulator", Color3.fromRGB(127, 143, 166))
window:Label("Anime Energy Clash Simulator", Color3.fromRGB(127, 143, 166))

local window = library:Window("Pickle Hub | Misc")

window:Button("Destroy Ui", function()
   library:Destroy()
end)

window:Button("Link Youtube", function()
   setclipboard("https://youtube.com/@tranvanbao1411")
end)

window:Button("Link Discord", function()
   setclipboard("https://discord.gg/ta7EasMvCv")
end)
