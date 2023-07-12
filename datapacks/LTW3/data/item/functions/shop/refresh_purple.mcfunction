# 刷新单个玩家背包中的紫水晶

scoreboard players add @s purple 0
scoreboard players add @s purple_total 0
clear @s amethyst_shard
clear @s amethyst_shard

# 获取紫水晶块数, 存于 temp
scoreboard players operation @s temp = @s purple
scoreboard players operation @s temp /= #9 mem
# 给予紫水晶块
execute if score @s temp matches 1.. at @s run function item:shop/summon_amethyst_block
# 获取紫水晶数, 存于 temp
scoreboard players operation @s temp = @s purple
scoreboard players operation @s temp %= #9 mem
# 给予紫水晶
execute if score @s temp matches 1.. at @s run function item:shop/summon_amethyst