local displayHandler = {}
    metaHandler = {}
    metaHandler.__index = displayHandler
    function displayHandler.new(name)
       local instance = setmetatable
        instance.name = name
        return instance
    end
    
    --function displayHandler.getMonitorRatio()
    --    peripheral
    --end
    Button = {}
    Button.__index = self
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
        Button.name = name
        Button.width = string.len(name) + 2 * Button.leftMargin
        Button.height = 1 + 2 * Button.topMargin

        --Button.labellines = 1
        term.redirect(monitor)
        paintutils.drawFilledBox(Pos1x, Pos1y, Pos1x + Button.width, Pos1y + Button.height, bgColor)
        monitor.setCursorPos(Pos1x + Button.leftMargin, Pos1y + Button.topMargin)
        monitor.setTextColor(color)
        monitor.write(name)
        return instance
    end
return displayHandler