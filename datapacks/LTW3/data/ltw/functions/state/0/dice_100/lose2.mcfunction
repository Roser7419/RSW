scoreboard players remove @s gold 18
execute if score @s gold < #0 mem run scoreboard players set @s gold 0
tellraw @a ["",{"text":">> ","color":"#E8910A","bold":true},{"selector": "@s","color":"#E8910A"}," 投掷了一次百面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"#E8910A"}, ", 失去了 2 金锭...小心行事吧"]
execute at @s run function lib:sounds/creeper