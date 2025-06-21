local graphics = require "graphics"
local objects = require "objects"
--local keys = require "keys"
--local settings = require "settings"

function love.load()
end

function love.update()
  -- Exit by escape key
  if love.keyboard.isDown("escape") then
    love.event.quit(0)
  end

  -- Red ball
  if love.keyboard.isDown("left") then
    objects.red_ball.variables.x = objects.red_ball.variables.x - 5
  end
  if love.keyboard.isDown("right") then
    objects.red_ball.variables.x = objects.red_ball.variables.x + 5
  end
  if love.keyboard.isDown("up") then
    objects.red_ball.variables.y = objects.red_ball.variables.y - 5
  end
  if love.keyboard.isDown("down") then
    objects.red_ball.variables.y = objects.red_ball.variables.y + 5
  end

  -- Red ball
  if love.keyboard.isDown("a") then
    objects.blue_ball.variables.x = objects.blue_ball.variables.x - 5
  end
  if love.keyboard.isDown("d") then
    objects.blue_ball.variables.x = objects.blue_ball.variables.x + 5
  end
  if love.keyboard.isDown("w") then
    objects.blue_ball.variables.y = objects.blue_ball.variables.y - 5
  end
  if love.keyboard.isDown("s") then
    objects.blue_ball.variables.y = objects.blue_ball.variables.y + 5
  end
end

function love.draw()
  graphics.drawBall(objects.red_ball.variables)
  graphics.drawBall(objects.blue_ball.variables)
end
