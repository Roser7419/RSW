# 每 1 Tick 执行一次

# 调用其他模块
execute if score $state mem matches 5 run function ltw:state/5/tick1

# 死亡触发
execute as @a[scores={death=1..,health=1..}] at @s run function ltw:main/player_death