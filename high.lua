function drawHigh()
	high = love.graphics.newImage("images/highScreen.jpg")
	love.graphics.draw(high, 0, 0)
end

function updateHigh(gamestate)
	if enter 	then 
		gamestate = "menu" 
		enter = false
	end
	if tab		then 
		love.event.quit()
		tab = false
	end
	return gamestate
end