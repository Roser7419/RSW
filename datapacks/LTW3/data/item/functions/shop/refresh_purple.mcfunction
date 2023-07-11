# 刷新单个玩家背包中的紫水晶

scoreboard players add @s purple 0
scoreboard players add @s purple_total 0
clear @s amethyst_shard

# 获取紫水晶数, 存于 temp
scoreboard players operation @s temp = @s purple
# 给予金粒
execute if score @s temp matches 1.. at @s run function item:shop/summon_amethyst