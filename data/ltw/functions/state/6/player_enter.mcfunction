# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
function lib:sounds/music/rest
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
gamerule naturalRegeneration true
effect give @s night_vision 1000000 0 true

# 显示小游戏结果
function mini:main/show_result

# 自由旁观
gamemode spectator
spectate
