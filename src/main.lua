function love.load()
  ball = { x = 5; y = 5; radiusx = 25; radiusy = 25; color = { r = 1, g = 0, b = 0, }, }
end

function love.update()
  if love.keyboard.isDown("left") then
    ball.x = ball.x - 5
  end
  if love.keyboard.isDown("right") then
    ball.x = ball.x + 5
  end
  if love.keyboard.isDown("up") then
    ball.y = ball.y - 5
  end
  if love.keyboard.isDown("down") then
    ball.y = ball.y + 5
  end
end

function love.draw()
  drawBall()
end

function drawBall()
    love.graphics.setColor(ball.color.r, ball.color.g, ball.color.b)
    love.graphics.ellipse("fill", ball.x, ball.y, ball.radiusx, ball.radiusy, 100)
end
