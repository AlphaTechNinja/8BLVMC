function love.load()
  local sandbox = require("sandbox")
  local VM = sandbox.new()
  local run = loadfile("machine.lua")
  setfenv(run,VM)
  --load thread
local thread = coroutine.create(run)
coroutine.resume(thread)
end
function love.draw()
	
end
