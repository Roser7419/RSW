# 执行重生方法
function mini:iron/game/respawn

# 复活特效
execute as @a at @s run function lib:sounds/error
effect give @s blindness 3 0 true

# 处理玩家掉落物品
# 获取玩家死亡位置
kill @e[type=armor_stand,tag=dead_marker]
summon armor_stand 1000 0 5000 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["dead_marker"]}
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[0] double 1 run scoreboard players get @s posX
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[1] double 1 run scoreboard players get @s posY
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[2] double 1 run scoreboard players get @s posZ
# 生成铁锭物品
execute store result score #iron_count temp run clear @s iron_ingot
scoreboard players add #iron_count temp 2
execute if score #iron_count temp matches 3.. at @e[type=armor_stand,tag=dead_marker,limit=1] run summon item ~ ~ ~ {Tags:["temp_iron"],Item:{id:"minecraft:iron_ingot",Count:1b},Glowing:1b}
execute as @e[type=item,tag=temp_iron,limit=1] store result entity @s Item.Count byte 0.33334 run scoreboard players get #iron_count temp
tag @e[type=item,tag=temp_iron,limit=1] remove temp_iron
# 随机槽位掉落
function mini:iron/game/random_slot
function mini:iron/game/pop_slot
# 返还剩余铁锭给玩家
scoreboard players remove #iron_count temp 2
scoreboard players operation #iron_count temp *= #2 mem
scoreboard players operation #iron_count temp /= #3 mem
execute if score #iron_count temp matches 1.. run function mini:iron/game/give_iron
# 删除marker
kill @e[type=armor_stand,tag=dead_marker]