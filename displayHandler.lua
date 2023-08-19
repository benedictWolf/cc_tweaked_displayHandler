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
        Button.name = name
        term.redirect(monitor)
        paintutils.drawFilledBox(Pos1x, Pos1y, Pos2x, Pos2y, bgColor)
        return instance
    end
return displayHandler