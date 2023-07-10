# 检查状态
tag @a remove invisible
tag @a[nbt={ActiveEffects:[{Id:14b}]}] add invisible

# 播放玩家粒子效果（他人）
execute as @a[scores={particle_type=1},gamemode=!spectator,tag=!invisible] at @s run particle electric_spark ~ ~0.5 ~ 0.25 0.3 0.25 0 1 force @a[distance=0.01..]
execute as @a[scores={particle_type=2},gamemode=!spectator,tag=!invisible] at @s run particle composter ~ ~0.5 ~ 0.25 0.3 0.25 2 1 force @a[distance=0.01..]
execute as @a[scores={particle_type=3},gamemode=!spectator,tag=!invisible] at @s run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force @a[distance=0.01..]
execute as @a[scores={particle_type=4},gamemode=!spectator,tag=!invisible] at @s run particle witch ~ ~0.2 ~ 0.25 0.1 0.25 0 1 force @a[distance=0.01..]
execute as @a[scores={particle_type=5},gamemode=!spectator,tag=!invisible] at @s run particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 2 1 force @a[distance=0.01..]
execute as @a[scores={particle_type=6},gamemode=!spectator,tag=!invisible] at @s run particle flame ~ ~0.3 ~ 0.15 0 0.15 0.001 1 force @a[distance=0.01..]
execute as @a[scores={particle_type=7},gamemode=!spectator,tag=!invisible] at @s run particle dust 10 10 10 1.5 ~ ~0.3 ~ 0.15 0.1 0.15 0.001 1 force @a[distance=0.01..]
execute as @a[scores={particle_type=8},gamemode=!spectator,tag=!invisible] at @s run particle soul_fire_flame ~ ~0.3 ~ 0.15 0 0.15 0.001 1 force @a[distance=0.01..]
execute as @a[scores={particle_type=9},gamemode=!spectator,tag=!invisible] at @s run particle end_rod ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=0.01..]
execute as @a[scores={particle_type=10},gamemode=!spectator,tag=!invisible] at @s run particle dragon_breath ~ ~0.3 ~ 0.25 0 0.25 0.03 1 force @a[distance=0.01..]
execute as @a[scores={particle_type=10},gamemode=!spectator,tag=!invisible] at @s run particle portal ~ ~0.2 ~ 0.35 0.05 0.35 0.2 2 force @a[distance=0.01..]

# 播放展示用实体的粒子效果
execute as @e[tag=show_particle_1] at @s run particle electric_spark ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a
execute as @e[tag=show_particle_2] at @s run particle composter ~ ~0.5 ~ 0.15 0.15 0.15 2 1 force @a
execute as @e[tag=show_particle_3] at @s run particle glow ~ ~0.3 ~ 0.15 0.15 0.15 0 1 force @a
execute as @e[tag=show_particle_4] at @s run particle witch ~ ~0.2 ~ 0.15 0.05 0.15 0 1 force @a
execute as @e[tag=show_particle_5] at @s run particle wax_on ~ ~0.5 ~ 0.2 0.2 0.2 0.5 1 force @a
execute as @e[tag=show_particle_6] at @s run particle flame ~ ~0.3 ~ 0.1 0 0.1 0.001 1 force @a
execute as @e[tag=show_particle_7] at @s run particle dust 10 10 10 1.5 ~ ~0.3 ~ 0.1 0.1 0.1 0.001 1 force @a
execute as @e[tag=show_particle_8] at @s run particle soul_fire_flame ~ ~0.3 ~ 0.1 0 0.1 0.001 1 force @a[distance=0.01..]
execute as @e[tag=show_particle_9] at @s run particle end_rod ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=0.01..]
execute as @e[tag=show_particle_10] at @s run particle dragon_breath ~ ~0.3 ~ 0.15 0 0.15 0.03 1 force @a[distance=0.01..]
execute as @e[tag=show_particle_10] at @s run particle portal ~ ~0.2 ~ 0.2 0.05 0.2 0.2 2 force @a[distance=0.01..]
execute as @e[tag=show_particle_100] at @s run particle crit ~ ~0.3 ~ 0 0 0 0.2 1 force @a[distance=0.01..]