local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/UiRedzV5/refs/heads/main/DemoUi.lua"))();

   local Windows = redzlib:MakeWindow({
	Title = "TBoy Ui Redz",
	SubTitle = "kaka",
	SaveFolder = "Blox Fruits.lua"
})
Windows:AddMinimizeButton({
  Button = { Image = "rbxassetid://83190276951914", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})

local Farm = Windows:MakeTab({"Discord","Info"})

Farm:AddSection("Section")

	Farm:AddToggle({
		"toggle",
		false,
		function()
		end})
		
   Farm:AddDropdown({
	Name = "Dropdown",
	Default = false,
	Options = {
		"1",
		"2",
		"3"
	},
	Callback = function()
	end})
	
	Farm:AddButton({
	Name = "Button",
	Callback = function()
	end})
	
	local Paragraph = Farm:AddParagraph({
	Title = "Paragraph Tool",
	Desc = ""
   })

  Farm:AddSlider({
 	"Slider",
	50,
	350,
	5,
	350,
	function()
	end})