scoreboard players add @s gold 405
tellraw @a ["",{"text":">> ","color":"#B921F8","bold":true},{"selector": "@s","color":"#B921F8"}," 投掷了一次百面骰, 掷出了 ",{"text": "100! 极限成功!!","color":"#B921F8"}, " 获得了 5 金块!!!"]
execute at @s run function lib:sounds/theend