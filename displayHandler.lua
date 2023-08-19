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
    function Button.new(color, bgColor, Pos1x, Pos1y, Pos2x, Pos2y,name)
        local instance = setmetatable({}, self)
        Button.name = name
        paintutils.drawBox(Pos1x, Pos1y, Pos2x, Pos2y)
        return instance
    end
return displayHandler