function love.load()
  red_ball = { x = 5; y = 5; radiusx = 25; radiusy = 25; color = { r = 1, g = 0, b = 0, }, }
  blue_ball = { x = 5; y = 5; radiusx = 25; radiusy = 25; color = { r = 0, g = 0, b = 1, }, }
end

function love.update()
  -- Exit by escape key
  if love.keyboard.isDown("escape") then
    love.event.quit(0)
  end

  -- Red ball
  if love.keyboard.isDown("left") then
    red_ball.x = red_ball.x - 5
  end
  if love.keyboard.isDown("right") then
    red_ball.x = red_ball.x + 5
  end
  if love.keyboard.isDown("up") then
    red_ball.y = red_ball.y - 5
  end
  if love.keyboard.isDown("down") then
    red_ball.y = red_ball.y + 5
  end

  -- Red ball
  if love.keyboard.isDown("a") then
    blue_ball.x = blue_ball.x - 5
  end
  if love.keyboard.isDown("d") then
    blue_ball.x = blue_ball.x + 5
  end
  if love.keyboard.isDown("w") then
    blue_ball.y = blue_ball.y - 5
  end
  if love.keyboard.isDown("s") then
    blue_ball.y = blue_ball.y + 5
  end
end

function love.draw()
  drawBall(red_ball)
  drawBall(blue_ball)
end

function drawBall(ball)
  love.graphics.setColor(ball.color.r, ball.color.g, ball.color.b)
  love.graphics.ellipse("fill", ball.x, ball.y, ball.radiusx, ball.radiusy, 100)
end
