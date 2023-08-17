# 给予状态效果
effect clear @s
function mini:collect/give_effect
effect give @s slow_falling 4
effect give @s weakness 5 10 true
effect give @s resistance 5 10 true

# 传送玩家
tp @s[team=playing] 2024 320 2024
tp @s[team=watching] 2024 290 2024

# 清理锁定物品
clear @s crimson_button{LockItem:1b}
function mini:collect/game/give_book