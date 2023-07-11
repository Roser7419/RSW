scoreboard players add @s purple 5
scoreboard players add @s purple_total 5
scoreboard players add @s purple_extra 5
execute if score $state mem matches 0 run function item:shop/refresh_purple
tellraw @s ["",{"text": ">> ","color":"light_purple","bold": true},"你的RSW等级提升至了 ",{"text":"5","color":"light_purple"}, " 级, 因此你还额外得到了 " ,{"text":"5 紫水晶","color":"light_purple"}," 作为奖励！"]
function lib:sounds/levelup
execute unless score @s rsw_rank >= #5 mem run scoreboard players set @s rsw_rank 5