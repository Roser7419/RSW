# 玩家死亡时由玩家自己触发

tag @s remove mini_running
gamemode spectator
effect give @s night_vision infinite 0 true
tp @s[team=!debugging] 2004.7 25.7 1024.1 -125 20
# tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 已死亡!"]
execute as @a at @s run function lib:sounds/error
function mini:main/player_failed
# execute unless entity @a[tag=mini_running] run function mini:main/game_end

execute if score $player_alive mem matches 2 if score $countdown mem matches 2.. run worldborder set 23.99 7
execute if score $player_alive mem matches 2 if score $countdown mem matches 2.. run effect clear @a resistance
execute if score $player_alive mem matches 2 if score $countdown mem matches 2.. run tellraw @a ["\n",{"text": ">> ","color": "gold","bold": true},{"text": "边界略微缩小, TNT造成的伤害提升了！\n","color": "gold"}]