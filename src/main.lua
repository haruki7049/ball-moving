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
  drawRedBall()
  drawBlueBall()
end

function drawRedBall()
    love.graphics.setColor(red_ball.color.r, red_ball.color.g, red_ball.color.b)
    love.graphics.ellipse("fill", red_ball.x, red_ball.y, red_ball.radiusx, red_ball.radiusy, 100)
end

function drawBlueBall()
    love.graphics.setColor(blue_ball.color.r, blue_ball.color.g, blue_ball.color.b)
    love.graphics.ellipse("fill", blue_ball.x, blue_ball.y, blue_ball.radiusx, blue_ball.radiusy, 100)
end
