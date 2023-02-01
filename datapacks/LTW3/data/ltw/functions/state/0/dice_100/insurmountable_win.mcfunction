scoreboard players add @s gold 243
tellraw @a ["",{"text":">> ","color":"#9945FF","bold":true},{"selector": "@s","color":"#9945FF"}," 投掷了一次百面骰, 掷出了 ",{"text": "99! 极难成功!","color":"#9945FF"}, " 获得了 3 金块!"]
execute at @s run function lib:sounds/dragon_growl