scoreboard players add @s gold 81
tellraw @a ["",{"text":">> ","color":"#6680FE","bold":true},{"selector": "@s","color":"#6680FE"}," 投掷了一次百面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"#6680FE"},{"text":", 大成功,","color":"#6680FE"}, " 获得了 1 金块!"]
execute at @s run function lib:sounds/levelup