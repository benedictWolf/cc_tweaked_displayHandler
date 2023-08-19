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
    function Button.new(color, bgColor, Pos1x, Pos1y, Pos2x, Pos2y, name, monitor)
        local instance = setmetatable({}, self)
        Button.leftMargin = 0
        Button.topMargin = 0
        Button.name = name
        Button.width = Pos2x - (Pos1x - 1)
        Button.height = Pos2y - (Pos1y - 1)
        --Button.labellines = 1
        term.redirect(monitor)
        paintutils.drawFilledBox(Pos1x, Pos1y, Pos2x, Pos2y, bgColor)
        Button.leftMargin = (Button.width - string.len(name)) / 2
        Button.topMargin = Button.height / 2
        monitor.setCursorPos(Pos1x - 1 + Button.leftMargin, Button.topMargin)
        monitor.setTextColor(color)
        monitor.write(name)
        return instance
    end
return displayHandler