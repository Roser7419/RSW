# 有玩家捡起物品，并处理完成后触发
# 执行者为 System

execute if score $state mem matches 7 as @a[tag=pickup_player] run function ltw:state/7/pickup
tag @a remove pickup_player