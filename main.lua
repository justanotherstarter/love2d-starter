--[[
This prints hello world in the center of the window. It is a basic starter to help you to start working on your game without worrying about downloading and adding dependencies.

--]]
push = require "push"
Class = require "class"

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

V_WIDTH = 450
V_HEIGHT = 250

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")

    smallFont = love.graphics.newFont("font.ttf", 8)
    love.graphics.setFont(smallFont)

    push:setupScreen(
        V_WIDTH,
        V_HEIGHT,
        WINDOW_WIDTH,
        WINDOW_HEIGHT,
        {
            fullscreen = false,
            resizable = true,
            vsync = true
        }
    )
end

function love.draw()
    push:apply("start")
    love.graphics.printf("Hello World", 0, V_HEIGHT / 2 - 6, V_WIDTH, "center") -- we subtract 6 from height as the default font height is 12px

    push:apply("end")
end

function love.update(dt)
    -- dt means delta time. multiply with it to make changes framerate independent
end

function love.resize(w, h)
    push:resize(w, h)
end

function love.keypressed(key)
    --key returns the pressed key
    if key == "escape" then
        love.event.quit()
    end
end

