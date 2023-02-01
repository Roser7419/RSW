scoreboard players add @s gold 18
tellraw @a ["",{"text":">> ","color":"#19D2C0","bold":true},{"selector": "@s","color":"#19D2C0"}," 投掷了一次百面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"#19D2C0"},{"text":", 运气尚可,","color":"#19D2C0"}, " 获得了 2 金锭!"]
execute at @s run function lib:sounds/hit