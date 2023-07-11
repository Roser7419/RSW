scoreboard players add @s stat_adv 1
scoreboard players add @s stat_adv_challenge 1
scoreboard players add @s purple 2
scoreboard players add @s purple_total 2
scoreboard players add @s purple_extra 2
execute if score $state mem matches 0 run function item:shop/refresh_purple
tellraw @s ["",{"text": ">> ","color":"light_purple","bold": true},"你获得了 ",{"text":"2 紫水晶","color":"light_purple"}," 完成奖励！"]