scoreboard players remove @s gold 81
execute if score @s gold < #0 mem run scoreboard players set @s gold 0
tellraw @a ["",{"text":">> ","color":"#FD3728","bold":true},{"selector": "@s","color":"#FD3728"}," 投掷了一次百面骰, 掷出了 ",{"text":"3","color":"#FD3728"}, ", 丢失了整整 1 金块! 悲鸣!"]
execute at @s run function lib:sounds/hurt