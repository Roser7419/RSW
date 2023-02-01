scoreboard players remove @s gold 9
execute if score @s gold < #0 mem run scoreboard players set @s gold 0
tellraw @a ["",{"text":">> ","color":"#ADB036","bold":true},{"selector": "@s","color":"#ADB036"}," 投掷了一次百面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"#ADB036"}, ", 功德不够, 失去 1 金锭 QWQ"]
execute at @s run function lib:sounds/creeper