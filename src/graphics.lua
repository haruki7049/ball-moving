local function drawBall(ball)
  love.graphics.setColor(ball.color.r, ball.color.g, ball.color.b)
  love.graphics.ellipse("fill", ball.x, ball.y, ball.radiusx, ball.radiusy, 100)
end

return {
  drawBall = drawBall,
}
