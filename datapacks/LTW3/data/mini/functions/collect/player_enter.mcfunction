# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_slow
title @s clear
title @s actionbar ""

# 解锁配方
recipe give @s[team=playing] *

# 设置玩家生命
attribute @s generic.max_health base set 20
gamerule naturalRegeneration false

# 计分板重置
tag @s remove common_collected
tag @s remove uncommon_collected
tag @s remove rare_a_collected
tag @s remove rare_b_collected
tag @s remove epic_a_collected
tag @s remove epic_b_collected
tag @s remove legendary_collected
tag @s remove mythic_collected
scoreboard players reset @s CollectPoint
scoreboard players set @s[team=playing,tag=!rejoining] CollectPoint 0

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode survival @s[team=playing,tag=!rejoining]

# 执行重生方法
tag @s remove respawning
function mini:collect/game/respawn
function mini:collect/game/show_goal
function mini:collect/game/give_book