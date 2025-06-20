local assets = require('src/shared/assets')
local Player = require('src/entity/Player')

local function init(std, game)
    game.player = Player()
end

local function loop(std, game)
    game.player:update(std)
end

local function draw(std, game)
    game.player:draw(std)
end

local function exit(std, game)
end

local P = {
    meta={
        title='Hello world',
        author='RodrigoDornelles',
        description='say hello to the world!',
        version='1.0.0'
    },
    assets = assets,
    callbacks={
        init=init,
        loop=loop,
        draw=draw,
        exit=exit
    }
}

return P;
