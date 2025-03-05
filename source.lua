 shared.LoaderTitle = "If Script Has Bugs Pls Dms Me On Discord LongHipTg!";
shared.LoaderKeyFrames = {
    [1] = {
        1,
        10
    },
    [2] = {
        2,
        30
    },
    [3] = {
        3,
        60
    },
    [4] = {
        2,
        100
    }
};
local v2 = {
    LoaderData = {
        Name = shared.LoaderTitle or "A Loader",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(0, 0, 0),
            Topic = Color3.fromRGB(200, 200, 200),
            Title = Color3.fromRGB(255, 255, 255),
            LoaderBackground = Color3.fromRGB(40, 40, 40),
            LoaderSplash = Color3.fromRGB(3, 252, 3)
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {
            1,
            10
        },
        [2] = {
            2,
            30
        },
        [3] = {
            3,
            60
        },
        [4] = {
            2,
            100
        }
    }
};
local v3 = {
    [1] = "",
    [2] = "",
    [3] = "",
    [4] = ""
};
function TweenObject(v178, v179, v180)
    game.TweenService:Create(v178, TweenInfo.new(v179, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), v180):Play();
end
function CreateObject(v181, v182)
    local v183 = Instance.new(v181);
    local v184;
    for v416, v417 in pairs(v182) do
        if (v416 ~= "Parent") then
            v183[v416] = v417;
        else
            v184 = v417;
        end
    end
    v183.Parent = v184;
    return v183;
end
local function v4(v186, v187)
    local v188 = Instance.new("UICorner");
    v188.CornerRadius = UDim.new(0, v186);
    v188.Parent = v187;
end
local v5 = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
});
local v6 = CreateObject("Frame", {
    Name = "Main",
    Parent = v5,
    BackgroundColor3 = v2.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
});
v4(12, v6);
local v7 = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = v6,
    BackgroundTransparency = 1,
    Image = "rbxassetid://15891628629",
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 50, 0, 50)
});
v4(25, v7);
local v8 = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = v6,
    BackgroundTransparency = 1,
    Text = "Youtube:LONGHIP12",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v9 = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = v6,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v10 = CreateObject("TextLabel", {
    Name = "Title",
    Parent = v6,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. v2.LoaderData.Name .. "</b>",
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v11 = CreateObject("Frame", {
    Name = "BG",
    Parent = v6,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24)
});
v4(8, v11);
local v12 = CreateObject("Frame", {
    Name = "Progress",
    Parent = v11,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
});
v4(8, v12);
local v13 = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, - 25),
    Size = UDim2.new(1, - 20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
});
function UpdateStepText(v191)
    v13.Text = v3[v191] or "" ;
end
function UpdatePercentage(v193, v194)
    TweenObject(v12, 0.5, {
        Size = UDim2.new(v193 / 100, 0, 0, 24)
    });
    UpdateStepText(v194);
end
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
});
wait();
TweenObject(v9, 0.5, {
    TextTransparency = 0
});
TweenObject(v10, 0.5, {
    TextTransparency = 0
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 0
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 0
});
for v195, v196 in pairs(v2.Keyframes) do
    wait(v196[1]);
    UpdatePercentage(v196[2], v195);
end
UpdatePercentage(100, 4);
TweenObject(v9, 0.5, {
    TextTransparency = 1
});
TweenObject(v10, 0.5, {
    TextTransparency = 1
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 1
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 1
});
wait(0.5);
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
});
wait(0.25);
v5:Destroy();
-- spawn(function()
--     while wait() do
--         function print()
--         end
--         function warn()
--         end
--         function error()
--         end
--         debug.traceback = function()
--             return "Traceback blocked";
--         end;
--         debug.info = function()
--             return "Info blocked";
--         end;
--         local v420 = getrawmetatable(game);
--         if (v420 and not v420.__metatable) then
--             setreadonly(v420, false);
--             local v658 = v420.__index;
--             local v659 = v420.__newindex;
--             v420.__index = function(v759, v760)
--                 if ((v760 == "debug") or (v760 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v658(v759, v760);
--             end;
--             v420.__newindex = function(v761, v762, v763)
--                 if ((v762 == "debug") or (v762 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v659(v761, v762, v763);
--             end;
--             setreadonly(v420, true);
--         end
--         local function v421()
--             local v568 = {
--                 "_G",
--                 "debug",
--                 "getgenv",
--                 "getrawmetatable",
--                 "setfenv",
--                 "loadstring",
--                 "hookfunction"
--             };
--             for v662, v663 in ipairs(v568) do
--                 local v664, v665 = pcall(function()
--                     return _G[v663];
--                 end);
--                 if (v664 and v665) then
--                     error("Anti Skid: Environment tampering detected!");
--                 end
--             end
--         end
--         local function v422()
--             local v569 = {
--                 getrawmetatable,
--                 setreadonly,
--                 getgenv,
--                 debug.getinfo,
--                 debug.getregistry
--             };
--             for v666, v667 in ipairs(v569) do
--                 if v667 then
--                     error("Anti Skid: Hook tampering detected!");
--                 end
--             end
--         end
--         local v423 = game:FindService("HttpService");
--         if v423 then
--             v423.RequestAsync = function()
--                 error("HTTP Requests Blocked");
--             end;
--             v423.GetAsync = function()
--                 error("HTTP Get Blocked");
--             end;
--             v423.PostAsync = function()
--                 error("HTTP Post Blocked");
--             end;
--         end
--         function collectgarbage()
--             error("GC Blocked");
--         end
--         os.time = function()
--             error("OS Time Blocked");
--         end;
--         pcall(v421);
--         pcall(v422);
--     end
-- end);
 -- Function for HSV to RGB conversion
local function HSVtoRGB(h, s, v)
    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)
    
    local r, g, b
    if i % 6 == 0 then r, g, b = v, t, p
    elseif i % 6 == 1 then r, g, b = q, v, p
    elseif i % 6 == 2 then r, g, b = p, v, t
    elseif i % 6 == 3 then r, g, b = p, q, v
    elseif i % 6 == 4 then r, g, b = t, p, v
    elseif i % 6 == 5 then r, g, b = v, p, q
    end

    return Color3.new(r, g, b)
end



-- Loop for rainbow effect
spawn(function()
    local hue = 0
    while true do
        Toggle.TextColor3 = HSVtoRGB(hue, 1, 1)
        hue = (hue + 0.01) % 1  -- Loop through colors
        wait(0.05)  -- Adjust speed of rainbow effect
    end
end)
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
Fluent:Notify({
        Title = "Notification",
        Content = "Loading...",
        SubContent = "Waiting", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })

local Window = Fluent:CreateWindow({
    Title = "Lonely Hub",
    SubTitle = "by LongHip",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Client = Window:AddTab({ Title = "Client", Icon = "" }),
    Dev = Window:AddTab({ Title = "Developer", Icon = "" }),
    Lplr = Window:AddTab({ Title = "Local Player", Icon = "" }),
    Scr = Window:AddTab({ Title = "Script", Icon = "" }),
    If = Window:AddTab({ Title = "Info", Icon = "" }),
}
    Tabs.Client:AddButton({
        Title = "SynapseX",
        Description = "Can Run Script But Use Your Executor's Api",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip2012/ScriptBloxFruit/refs/heads/main/SynapsexUi.lua"))()
        end
    })
    
    Tabs.Client:AddButton({
        Title = "ArceusX",
        Description = "Can Run Script But Use Your Executor's Api",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
        end
    })
Tabs.Dev:AddButton({
        Title = "Infinite Yield",
        Description = "Command",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end
    })
    
Tabs.Dev:AddButton({
        Title = "Dark Dex",
        Description = "Show Game File",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
        end
    })
  
Tabs.Dev:AddButton({
        Title = "Simple Spy Mobile",
        Description = "Help u create own script or other",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/SimpleSpy/refs/heads/main/Mobile.lua"))()
        end
    })
    
Tabs.Dev:AddButton({
        Title = "Simple Spy",
        Description = "Help u create own script or other",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
        end
    })
local Slider = Tabs.Lplr:AddSlider("Slider", {
        Title = "Speed",
        Description = "Changer Your Walk Speed",
        Default = 16,
        Min = 0,
        Max = 500,
        Rounding = 1,
        Callback = function(Value)
            if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		if (hum) and hum.Health > 0 then
            --(function()
                hum.WalkSpeed = Value;
            --end)
        end
        end
    })
    
    local Slider = Tabs.Lplr:AddSlider("Slider", {
        Title = "Jump Power",
        Description = "Changer Your Jump Height (Power)",
        Default = 50,
        Min = 0,
        Max = 500,
        Rounding = 1,
        Callback = function(Value)
            if Default_Disable == false then
            Default_Disable = true;
            return;
        end
		if (hum) and hum.Health > 0 then
            pcall(function()
                hum.JumpPower = Value;
            end)
        end
        end
    })

Tabs.Lplr:AddButton({
        Title = "InfJump",
        Description = "Infinite Jump",
        Callback = function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
        end
    })

Tabs.Lplr:AddButton({
        Title = "Fullbright",
        Description = "",
        Callback = function()
             Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        end
    })

    Tabs.Lplr:AddButton({
        Title = "Remove Fog",
        Description = "",
        Callback = function()
            game.Lighting.FogEnd = 100000
game.Lighting.FogStart = 0
game.Lighting.ClockTime = 14
game.Lighting.Brightness = 2
game.Lighting.GlobalShadows = false
        end
    })
Tabs.Scr:AddParagraph({
        Title = "Blox Fruits",
        Content = "Script Support BloxFruits Scroll Down For More"
    })

Tabs.Scr:AddButton({
        Title = "Redz Hub",
        Description = "NoKey",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
        end
    })
    
Tabs.Scr:AddButton({
        Title = "Teddy HOP",
        Description = "HOP SV and NoKey",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Teddy-Premium"))()
        end
    })
   
Tabs.Scr:AddButton({
        Title = "Auto Bounty Sera Hub",
        Description = "Have Key",
        Callback = function()
            getgenv().config = {
    ["Use Race"] = {
        ["V4"] = true,
        ["V3"] = true
    },
    ["BypassTp"] = false,
    ["Info Screen"] = true,
    ["SafeHealth"] = 4000,
    ["Webhooks"] = {
        ["Toggle Webhook"] = true,
        ["Link Webhook"] = ""
    },
    ["White Screen"] = false,
    ["SkipFruit"] = {
        "Portal-Portal"
    },
    ["Skip Race V4 User"] = true,
    ["Team"] = "Pirates",
    ["MaxBountyHunt"] = 30000000,
    ["MinBountyHunt"] = 0,
    ["MainSkillToggle"] = {
        ["Sword"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.2
                },
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.2
                }
            },
            ["Delay"] = 1
        },
        ["Blox Fruit"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 2
                },
                ["C"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["F"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["V"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                }
            },
            ["Delay"] = 2
        },
        ["Melee"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["C"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 2.5
                }
            },
            ["Delay"] = 1.75
        },
        ["Gun"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                }
            },
            ["Delay"] = 1
        }
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/LumosSera/Serra/refs/heads/main/Bounty.lua"))()
        end
    })
    
Tabs.Scr:AddButton({
        Title = "Cokka Hub",
        Description = "Have Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/UserDevEthical/Loadstring/main/CokkaHub.lua"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Hoho Hub V4",
        Description = "Have Key",
        Callback = function()
            _G.HohoVersion = "v4"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
        end
    })

Tabs.Scr:AddButton({
        Title = "Frost Ware Chest",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://frostware.onrender.com/fwchest"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Frost Ware Main",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://frostware.onrender.com/fw"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Forge Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Lion Hub",
        Description = "No Key",
        Callback = function()
           getgenv().Team = "Pirates"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NHMdz/BloxFruit/refs/heads/main/Lion%20Hub.lua"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Volcano Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoNewUpdated.luau"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Hiru Hub(Hicu)",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NGUYENVUDUY1/Dev-Hiru/refs/heads/main/HiruHub.lua"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Astral Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Quantum Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/QuantumOnyx.lua"))()
        end
    })
    
Tabs.Scr:AddParagraph({
        Title = "Doors",
        Content = "Script Support Doors Scroll Down For More"
    })
    
    Tabs.Scr:AddButton({
        Title = "Mspaint V4",
        Description = "Have Key,Copy Web And Join Discord Link To Getkey",
        Callback = function()
            setclipboard("https://mspaint.cc")
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Black King X Bob Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkDoorsKing/Doors/main/Main"))()
        end
    })
 Tabs.Scr:AddParagraph({
        Title = "Blade Ball",
        Content = "Script Support Blade Ball Scroll Down For More"
    })
    
    Tabs.Scr:AddButton({
        Title = "Eminence Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EminenceXLua/Blade-your-Balls/main/BladeBallLoader.lua"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Depth Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githu busercontent.com/funhaji/Blade-Ball/refs/heads/main/No-Lag.lua", true))()
        end
    })
Tabs.Scr:AddParagraph({
        Title = "Fisch",
        Content = "Script Support Fisch Scroll Down For More"
    })
    
Tabs.Scr:AddButton({
        Title = "Speed X Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
        end
    })
  
  Tabs.Scr:AddButton({
        Title = "Lyth Hub",
        Description = "Have Key,Copy Link Getkey And Loadstring",
        Callback = function()
            setclipboard("script_key = 'PASTE_KEY_HERE';
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d474a99b9800aaa6301496c9ce9834ce.lua"))()
-- Get Key : https://ads.luarmor.net/get_key?for=Lootlabs-sMlFsCxnhkOc")
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Zenith Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Mspaint",
        Description = "Have Key,Copy Link Web And Join Discord For Getkey",
        Callback = function()
            setclipboard("https://mspaint.cc")
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Alchemy Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        end
    })

Tabs.Scr:AddParagraph({
        Title = "Blue Lock : Rival",
        Content = "Script Support BLR Scroll Down For More"
    })
    
Tabs.Scr:AddButton({
        Title = "Sterling Hub",
        Description = "Key:IDK",
        Callback = function()
            local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local player = Players.LocalPlayer
local function onErrorMessageChanged(errorMessage)
    if errorMessage and errorMessage ~= "" then
        print("Error detected: " .. errorMessage)
        if player then
            wait()
            TeleportService:Teleport(game.PlaceId, player)
        end
    end
end
GuiService.ErrorMessageChanged:Connect(onErrorMessageChanged)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Zayn31214/name/refs/heads/main/SterlingNew"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Alchemy Hub",
        Description = "Have Key",
        Callback = function()
            loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        end
    })
    
 Tabs.Scr:AddButton({
        Title = "Tbao Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/refs/heads/main/TbaoHubBlueLockRivals"))()
        end
    })

Tabs.Scr:AddParagraph({
        Title = "Universe",
        Content = "Script Support All Games Scroll Down For More"
    })
Tabs.Scr:AddButton({
        Title = "Unnamed ESP",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Kill Aura",
        Description = "Don't Click Too Much Or You Will Get Banned!",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/Amity/main/KillAura.lua"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "FE JetPack",
        Description = "I Don't Know If It Works:/",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PYXDYT/FE-JET/main/V1"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Chat Bypass",
        Description = "So Cool,Keep Your Messages From Turning Into ###",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ffedex/characters/refs/heads/main/chars"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Unc Checker",
        Description = "Press F9 or chat /console to open console!",
        Callback = function()
            loadstring(game:HttpGet("https://github.com/ltseverydayyou/uuuuuuu/blob/main/UNC%20test?raw=true"))()
        end
    })

Tabs.Scr:AddParagraph({
        Title = "Script Hub And Get Executor",
        Content = "So Cool,Click the Button to Copy"
    })
    
    Tabs.Scr:AddButton({
        Title = "Script Blox",
        Description = "https://scriptblox.com",
        Callback = function()
            setclipboard("https://scriptblox.com")
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Script Pastebin",
        Description = "https://scriptpastebin.com",
        Callback = function()
            setclipboard("https://scriptpastebin.com")
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "Rscript",
        Description = "I Don't Know If It Works:/",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PYXDYT/FE-JET/main/V1"))()
        end
    })
    
    Tabs.Scr:AddButton({
        Title = "We Are Dev",
        Description = "https://wearedev.net",
        Callback = function()
            setclipboard("https://wearedev.net")
        end
    })

    Tabs.If:AddParagraph({
        Title = "Executor:",
        Content = "identifyexecutor()"
    })
    
    Tabs.If:AddParagraph({
        Title = "Level Executor",
        Content = "printidentity()"
    })
    
    Tabs.If:AddParagraph({
        Title = "EN:Script Made By LongHip",
        Content = "VI:Kịch Bản Được Làm Bởi LongHip"
    })
    
    Tabs.If:AddParagraph({
        Title = "Other Info",
        Content = "Im From VietNam.Hoang Sa,Truong Sa Belong To VietNam!!!!!"
    })
    
    Tabs.If:AddButton({
        Title = "Facebook",
        Description = "Copy To Clipboard",
        Callback = function()
            setclipboard("https://www.facebook.com/longhip7730")
        end
    })
    
    Tabs.If:AddParagraph({
        Title = "Wechat(微信)",
        Content = "wx id:Long_Hip_Tg"
    })
    
    Tabs.If:AddParagraph({
        Title = "QQ",
        Content = "QQ Username:LongHipTg"
    })
    
    Tabs.If:AddButton({
        Title = "Youtube",
        Description = "Pls Subcribe",
        Callback = function()
            setclipboard("https://www.youtube.com/@FTGxHoangLong")
        end
    })
    
    Tabs.If:AddParagraph({
        Title = "TikTok",
        Content = "UserName:hoanglong.hn"
    })
    Fluent:Notify({
        Title = "Notification",
        Content = "Script Loaded!",
        SubContent = "Enjoy Use Script!", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
    