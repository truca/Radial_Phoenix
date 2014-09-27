function drawLose()
	lose = love.graphics.newImage("images/loseScreen.jpg")
	love.graphics.draw(lose, 0, 0)
end

function updateLose(gamestate)
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