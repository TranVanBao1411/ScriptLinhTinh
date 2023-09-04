local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()


local window = library:Window("Pickle Hub | Status")

window:Label("Dingus", Color3.fromRGB(127, 143, 166))
window:Label("Dungeon Quest", Color3.fromRGB(127, 143, 166))
window:Label("Chest Hero Simulator", Color3.fromRGB(127, 143, 166))
window:Label("Anime Energy Clash Simulator", Color3.fromRGB(127, 143, 166))
window:Button("Destroy Ui", function()
   library:Destroy()
end)
