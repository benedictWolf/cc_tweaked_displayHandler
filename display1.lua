os.loadAPI('display/displayHandler.lua')
monitor = peripheral.wrap('back')
monitor.clear()
Button1 = displayHandler.Button.new(color.black, color.white, 1, 2, 3, 4, 'Test')
print('This file is used to test the module displayHandler!')