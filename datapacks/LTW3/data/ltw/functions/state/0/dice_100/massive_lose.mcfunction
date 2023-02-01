scoreboard players remove @s gold 81
execute if score @s gold < #0 mem run scoreboard players set @s gold 0
tellraw @a ["",{"text":">> ","color":"#FF2625","bold":true},{"selector": "@s","color":"#FF2625"}," 投掷了一次百面骰, 掷出了 ",{"text":"2","color":"#FF2625"}, ", 就差一点但 1 金块也没了..."]
execute at @s run function lib:sounds/hurt