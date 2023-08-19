local displayHandler = {}
    metaHandler = {}
    metaHandler.__index = displayHandler
    function displayHandler.new(name)
       local instance = setmetatable
        instance.name = name
        return instance
    end
    function displayHandler.getMonitorRatio()
        peripheral
    end
    Button = {}
    Button.__index = self
    function Button:new(local color, bgColor, Pos1x, Pos1y, Pos2x, Pos2y,name)
        name = name or {}
        setmetatable(name, self)
        self.__index = self
        return name
        paintutils.drawBox(Pos1x, Pos1y, Pos2x, Pos2y)
    
    end
return displayHandler