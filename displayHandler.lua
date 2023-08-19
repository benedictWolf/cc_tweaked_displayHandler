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
        Button.xPos = Pos1x
        Button.yPos = Pos1y
        Button.name = name
        Button.width = string.len(name) + 2 * Button.leftMargin
        Button.height = 1 + 2 * Button.topMargin
        Button.assignedMon = monitor
        --Button.labellines = 1
        term.redirect(monitor)
        paintutils.drawFilledBox(Button.xPos, Button.yPos, Button.xPos + Button.width, Button.yPos + Button.height, bgColor)
        monitor.setCursorPos(Button.xPos + Button.leftMargin, Button.yPos + Button.topMargin)
        monitor.setTextColor(color)
        monitor.write(name)
        return instance
    end
    function Button.setTextColor(color)
        monirot
    end
return displayHandler