scoreboard players add @s gold 126
tellraw @a ["",{"text":">> ","color":"#8063FE","bold":true},{"selector": "@s","color":"#8063FE"}," 投掷了一次百面骰, 掷出了 ",{"text": "98! 困难成功!","color":"#8063FE"}, " 获得了 1.5 金块!"]
execute at @s run function lib:sounds/dragon_growl