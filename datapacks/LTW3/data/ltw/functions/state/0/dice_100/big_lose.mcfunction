scoreboard players remove @s gold 63
execute if score @s gold < #0 mem run scoreboard players set @s gold 0
tellraw @a ["",{"text":">> ","color":"#FA4C2D","bold":true},{"selector": "@s","color":"#FA4C2D"}," 投掷了一次百面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"#FA4C2D"}, ", 无法挽回那 7 金锭..."]
execute at @s run function lib:sounds/hurt