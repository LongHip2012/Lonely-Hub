_G.Color = Color3.fromRGB(255, 0, 0)
_G.Logo = 12781257228


local Evil = loadstring(game:HttpGet("https://newpchx2.000webhostapp.com/OBF_UI/UI_Edit_By_Ares.lua"))()
local Win = library:Evil("Eta X","Hub",_G.Logo )

local tab1 = Win:CraftTab('Main')
local page1 = tab1:CraftPage('Main',1)

page1:Button('Button',function()
    print("t")
end)

page1:Dropdown("Dropdown",{"1","2"},{""},function(v)
    print(v)
end)

page1:Slider("Slider",true,0,100,1,function(value)
    print(value)
end)

page1:Label('Label')

page1:Dropdown("Test",{"Melee","Sword","Gun","Fruit"},"Melee",function(a)
    print(a)
end)

page1:Toggle('Test',nil,function(a)
    print(a)
end)

page1:Button('Button',function()
    print("t")
end)

page1:MultiDropdown("MultiDropdown",{"MultiDropdown","MultiDropdown2"},{""},function(v)
    print(v)
end)

page1:Slider("Slider",true,0,100,1,function(value)
    print(value)
end)

local page2 = tab1:CraftPage('Main',2)

page2:Label('Label')

page2:Dropdown("Test",{"Melee","Sword","Gun","Fruit"},"Melee",function(a)
    print(a)
end)

page2:Toggle('Test',nil,function(a)
    print(a)
end)

page2:Button('Button',function()
    print("t")
end)

page2:MultiDropdown("MultiDropdown",{"MultiDropdown","MultiDropdown2"},{""},function(v)
    print(v)
end)

page2:Slider("Slider",true,0,100,1,function(value)
    print(value)
end)

page2:Label('Label \n Omg')

page2:Dropdown("Test",{"Melee","Sword","Gun","Fruit"},"Melee",function(a)
    print(a)
end)

page2:Toggle('Test',nil,function(a)
    print(a)
end)

page2:Button('Button',function()
    print("t")
end)

page2:MultiDropdown("MultiDropdown",{"MultiDropdown","MultiDropdown2"},{""},function(v)
    print(v)
end)

page2:Slider("Slider",true,0,100,1,function(value)
    print(value)
end)

local tab2 = Win:CraftTab('Main2')
local page3 = tab2:CraftPage('Main',1)

page3:Label('Label')

page3:Dropdown("Test",{"Melee","Sword","Gun","Fruit"},"Melee",function(a)
    print(a)
end)

page3:Toggle('Test',nil,function(a)
    print(a)
end)

page3:Button('Button',function()
    print("t")
end)

page3:MultiDropdown("MultiDropdown",{"MultiDropdown","MultiDropdown2"},{""},function(v)
    print(v)
end)

page3:Slider("Slider",true,0,100,1,function(value)
    print(value)
end)

page3:Label('Label')

page3:Dropdown("Test",{"Melee","Sword","Gun","Fruit"},"Melee",function(a)
    print(a)
end)

page3:Toggle('Test',nil,function(a)
    print(a)
end)

page3:Button('Button',function()
    print("t")
end)

page3:MultiDropdown("MultiDropdown",{"MultiDropdown","MultiDropdown2"},{""},function(v)
    print(v)
end)

page3:Slider("Slider",true,0,100,1,function(value)
    print(value)
end)

local page4 = tab2:CraftPage('Main',2)

page4:Label('Label')

page4:Dropdown("Test",{"Melee","Sword","Gun","Fruit"},"Melee",function(a)
    print(a)
end)

page4:Toggle('Test',nil,function(a)
    print(a)
end)

page4:Button('Button',function()
    print("t")
end)

page4:MultiDropdown("MultiDropdown",{"MultiDropdown","MultiDropdown2"},{""},function(v)
    print(v)
end)

page4:Slider("Slider",true,0,100,1,function(value)
    print(value)
end)

page4:Label('Label')

page4:Dropdown("Test",{"Melee","Sword","Gun","Fruit"},"Melee",function(a)
    print(a)
end)

page4:Toggle('Test',nil,function(a)
    print(a)
end)

page4:Button('Button',function()
    print("t")
end)

page4:MultiDropdown("MultiDropdown",{"MultiDropdown","MultiDropdown2"},{""},function(v)
    print(v)
end)

page4:Slider("Slider",true,0,100,1,function(value)
    print(value)
end)
