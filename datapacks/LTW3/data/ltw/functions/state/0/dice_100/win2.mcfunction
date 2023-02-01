scoreboard players add @s gold 27
tellraw @a ["",{"text":">> ","color":"#0CB7E0","bold":true},{"selector": "@s","color":"#0CB7E0"}," 投掷了一次百面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"#0CB7E0"},{"text":", 气运颇好,","color":"#0CB7E0"}, " 获得了 3 金锭!"]
execute at @s run function lib:sounds/hit