local displayHandler = {}
    metaHandler = {}
    metaHandler.__index = displayHandler
    --[==[function displayHandler.new(name)
       local instance = setmetatable
        instance.name = name
        return instance
    end ]==]--
    
    --function displayHandler.getMonitorRatio()
    --    peripheral
    --end
        Button = {}
            Button.__index = self
            Button.leftMargin = 2 --Verify the necissity of predifining Buttonproperties
            Button.topMargin = 0
            Button.width = 8
            Button.height = 2
            Button.name = 'Button1'
            Button.xPos = 1
            Button.yPos = 1
            Button.assignedMon = ''
            function Button.new(color, bgColor, Pos1x, Pos1y, name, monitor, lMargin, tMargin)
                local instance = setmetatable({}, self)
                if lMargin == nil then 
                    Button.leftMargin = 2
                else
                    Button.leftMargin = lMargin
                end
                if tMargin == nil then 
                    Button.topMargin = 0
                else
                    Button.topMargin = tMargin
                end
                Button.monitor = monitor
                Button.xPos = Pos1x
                Button.yPos = Pos1y
                Button.name = name
                Button.width = string.len(name) + 2 * Button.leftMargin
                Button.height = 1 + 2 * Button.topMargin
                Button.assignedMon = monitor
                Button.bgColor = bgColour
                Button.Color = colors.black
                Button.setTextColor(color)
                return instance
            end
            function Button.setTextColor(color)
                term.redirect(Button.assignedMon)
                local mon = Button.assignedMon -- Refer to the assigned Monitorproperty
                mon.setCursorPos(Button.xPos + Button.leftMargin, Button.yPos + Button.topMargin)
                Button.Color = color
                mon.setTextColor(Button.Color)
                mon.write(name)
            end
            function Button.setBgColor(colour)
                Button.bgColor = color
                paintutils.drawFilledBox(Button.xPos, Button.yPos, Button.xPos + Button.width, Button.yPos + Button.height, Button.bgColor)
                Button.setTextColor(Button.Color)
            end
        toggleButton = {} --continue here: add inheritance to button and toggleButton.toggle()
        
return displayHandler