scoreboard players add @s stat_adv 1
scoreboard players add @s stat_adv_challenge 1
scoreboard players add @s stat_adv_3 1
scoreboard players add @s green 2
scoreboard players add @s green_total 2
scoreboard players add @s green_extra 2
scoreboard players add @s purple 1
scoreboard players add @s purple_total 1
scoreboard players add @s purple_extra 1
execute if score $state mem matches 0 run function item:shop/refresh_green
execute if score $state mem matches 0 run function item:shop/refresh_purple
# MC 自己会播放完成音效
tellraw @s ["",{"text": ">> ","color":"green","bold": true},"你获得了 ",{"text":"2 绿宝石","color":"green"},"与 ",{"text":"1 紫水晶","color":"light_purple"}," 完成奖励！"]