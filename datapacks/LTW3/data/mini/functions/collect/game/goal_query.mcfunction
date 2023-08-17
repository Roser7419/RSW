# 显示目标
function mini:collect/game/show_goal

# 重置结果
clear @s written_book{game_item:1b}
function mini:collect/game/give_book
scoreboard players reset @s GoalQuery