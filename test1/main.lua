--[[
--    TARGET:
--[ ] ADD HP BAR
--[x] ADD PRESSED BUTTON FUNC
--[ ]
--]]

local FPS;
local x = 0;
local y = 0;
local max_hp = 10;
local hp = 1;
local PressedButtons = {'w', 's', 'a', 'd', 'q', 'e'};

function love.load()
--   image = love.graphics.newImage("cake.jpg")
   local f = love.graphics.newFont(12)
   love.graphics.setFont(f)
   --love.graphics.setColor(0,0,0,11)
   --love.graphics.setBackgroundColor(10,10,10)
	love.graphics.print("Hello World", 40, 30)
end

function love.update(dt)
--[[	   if love.keyboard.isDown("up") then
      num = num + 100 * dt -- это увеличивает num на 100 в секунду
   end
   --]]
	FPS = 1/dt;
	KeyPressed();
	--IsAlive(hp);
	
end

function love.keypressed(key, unicode)
   if key == 'w' then
	PressedButtons[key] = 1;
   elseif key == 's' then
	PressedButtons[key] = 1;
   elseif key == 'a' then
	PressedButtons[key] = 1;
   elseif key == 'd' then
	PressedButtons[key] = 1;
   elseif key == 'q' then
	PressedButtons[key] = 1;
   elseif key == 'e' then
	PressedButtons[key] = 1;
   elseif key == 'x' then
      a_down = true
   end
end

function love.keyreleased(key, unicode)
   if key == 'w' then
	PressedButtons[key] = 0;
   elseif key == 's' then
	PressedButtons[key] = 0;
   elseif key == 'a' then
	PressedButtons[key] = 0;
   elseif key == 'd' then
	PressedButtons[key] = 0;
   elseif key == 'q' then
	PressedButtons[key] = 0;
   elseif key == 'e' then
	PressedButtons[key] = 0;
   elseif key == 'x' then
      a_down = true
   end
end

function love.draw()
	if hp > 0 then
	    love.graphics.print("FPS:"..math.floor(FPS), 4, 4)
	    love.graphics.print("Hello World", 400, 300)
	    love.graphics.print("X", x, y);
	    --string HP_BAR = "["
	    love.graphics.print("X", 100, 20);
    else
	    love.graphics.print("GAME OVER", 500, 500)
	end

end

function KeyPressed() --add unpack ?
	if PressedButtons['w'] == 1 then
		y = y - 1;
	end
	if PressedButtons['s'] == 1 then
		y = y + 1;
	end
	if PressedButtons['d'] == 1 then
		x = x + 1;
	end
	if PressedButtons['a'] == 1 then
		x = x - 1;
	end
	if PressedButtons['q'] == 1 then
		hp = hp + 1;
	end
	if PressedButtons['e'] == 1 then
		hp = hp - 1;
	end
	
end

--function IsAlive
--	if hp == 0 then
--
--	end
--end
