function love.load()
  square_side_length = 100
end

function love.update()
  if love.keyboard.isDown("space") then
    square_side_length = square_side_length + 1
  end
end

function love.draw()
  drawSquare(square_side_length)
end

function drawSquare(length)
  for x=0, length do
    for y=0, length do
      love.graphics.points({ x, y, })
    end
  end
end
