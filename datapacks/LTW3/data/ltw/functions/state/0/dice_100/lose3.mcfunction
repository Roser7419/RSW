scoreboard players remove @s gold 27
execute if score @s gold < #0 mem run scoreboard players set @s gold 0
tellraw @a ["",{"text":">> ","color":"#F76E34","bold":true},{"selector": "@s","color":"#F76E34"}," 投掷了一次百面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"#F76E34"}, ", 丢失了 3 金锭 QAQ"]
execute at @s run function lib:sounds/creeper