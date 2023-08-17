# 检测提交
execute as @a[nbt={Inventory:[{Slot:-106b}]}] run function mini:collect/game/check_offhand
# 查询
execute as @a[scores={GoalQuery=1..}] run function mini:collect/game/goal_query

# 标记
execute if score $countdown mem matches ..180 run effect give @e[type=!player,x=2024,y=280,z=2024,distance=..100] glowing infinite 6 true