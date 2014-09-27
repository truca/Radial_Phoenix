function drawWin()
	win = love.graphics.newImage("images/winScreen.jpg")
	love.graphics.draw(win, 0, 0)
end

function updateWin(gamestate)
	if enter	then 
		gamestate = "menu" 
		enter = false
	end
	if tab 		then 
		gamestate = "high" 
		tab = false
	end
	return gamestate
end