menu = love.graphics.newImage("images/menuScreen.jpg")

function drawMenu()
	if type(menu) == boolean then menu = love.graphics.newImage("images/menuScreen.jpg") end
	love.graphics.draw(menu, 0, 0)
end

function updateMenu(gamestate)
	if enter	then 
		gamestate = "game" 
		enter = false
	end
	if tab 		then 
		gamestate = "high" 
		tab = false
	end
	return gamestate
end