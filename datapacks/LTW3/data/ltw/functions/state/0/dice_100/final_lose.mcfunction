scoreboard players set @s gold 0
tellraw @a ["",{"text":">> ","color":"#991616","bold":true},{"selector": "@s","color":"#991616"}," 投掷了一次百面骰, 掷出了 ",{"text": "1, 超寄失败","color":"#991616"}, ", 账户归零, 再见~"]
tp @s -0.5 27.5 -49.5 0 -11
effect give @s slow_falling 1 0 true
execute at @s run function lib:sounds/error