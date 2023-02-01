scoreboard players add @s gold 45
tellraw @a ["",{"text":">> ","color":"#5A90FE","bold":true},{"selector": "@s","color":"#5A90FE"}," 投掷了一次百面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"#5A90FE"},{"text":", 手气极佳,","color":"#5A90FE"}, " 获得了 5 金锭!"]
execute at @s run function lib:sounds/levelup