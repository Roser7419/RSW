scoreboard players add @s gold 9
tellraw @a ["",{"text":">> ","color":"#25EAA5","bold":true},{"selector": "@s","color":"#25EAA5"}," 投掷了一次百面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"#25EAA5"}, ", 拿回了自己的金锭!"]
execute at @s run function lib:sounds/hit2