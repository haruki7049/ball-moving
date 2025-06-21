function love.load()
end

function love.draw()
  drawSquare(100)
end

function drawSquare(length)
  for x=0, length do
    for y=0, length do
      love.graphics.points({ x, y, })
    end
  end
end
