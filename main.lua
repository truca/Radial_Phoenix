gamestate = ""
gameStarted = false
enter = false
tab = false

function love.load() --primera funcion
	require('entities')
	require('menu')
	require('win')
	require('lose')
	require('high')
	ents.Startup()
	love.graphics.setBackgroundColor(255,255,255)
	gamestate = "menu"
end

function love.draw() --se llama con cada iteracion
	if gamestate == "menu" then drawMenu() end
	if gamestate == "game" then drawGame() end
	if gamestate == "win"  then  drawWin() end
	if gamestate == "lose" then drawLose() end
	if gamestate == "high" then drawHigh() end
	--print(gamestate)
end

function love.update(dt) --se llama con cada iteracion
	if gamestate == "game" then 
		--if not gameStarted then ents.Startup() end
		gameStarted = true
		gamestate = updateGame(dt, gamestate) 	
	end
	if gamestate == "menu" then 
		gameStarted = false
		gamestate = updateMenu(gamestate) 		
	end
	if gamestate == "lose" then
		gameStarted = false 
		gamestate = updateLose(gamestate) 		
	end
	if gamestate == "high" then 
		gameStarted = false
		gamestate = updateHigh(gamestate) 		
	end
	if gamestate == "win"  then 
		gameStarted = false
		gamestate =  updateWin(gamestate) 		
	end
end

function love.focus(bool) --true si el juego esta en foco

end

function love.keypressed(key, unicode)

end

function love.keyreleased(key, unicode)
	if key == "return" 	then enter = true end
	if key == "tab" 	then tab = true end
end

function love.mousepressed( x, y, button )

end

function love.mousereleased( x, y, button )

end

function love.quit()

end