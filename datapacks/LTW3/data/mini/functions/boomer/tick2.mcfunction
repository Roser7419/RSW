# 玩家死亡判断
execute as @a[tag=mini_running] at @s if block ~ ~-1 ~ barrier run function mini:tntrun/player_failed

# 使用了TNT
execute as @a[tag=mini_running,scores={TNTUse=1..}] run function mini:boomer/game/use_tnt
# 然后再给你一个好玩意
execute as @a[tag=mini_running,scores={countdown_fast=0}] unless data entity @s Inventory[{Slot:8b,id:"minecraft:tnt",tag:{game_item:1b}}] run function mini:boomer/game/give_tnt

# 同步生命值
scoreboard players reset * health_alive
scoreboard players set @a[gamemode=!spectator] health_alive 20
execute as @a[gamemode=!spectator,scores={health=1..}] run scoreboard players operation @s health_alive = @s health