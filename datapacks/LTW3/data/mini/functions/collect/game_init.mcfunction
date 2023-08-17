# 初始化集物地图
forceload add 2000 2000 2048 2048

scoreboard players reset * CollectPoint
scoreboard players set $show_score mem 1
scoreboard players set $survival mem 1

# 调整时间
time set 13800t

# 生成地图
setblock 2000 255 2000 minecraft:structure_block[mode=load]{mode:"LOAD",posX:0,posY:1,posZ:0,name:"mini:collect/base"}
setblock 2000 255 2001 redstone_block

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility always
gamerule fireDamage true
gamerule drowningDamage true

# Gamerule 调整
gamerule doLimitedCrafting false
gamerule keepInventory true
gamerule doTileDrops true
gamerule doEntityDrops true
gamerule doMobLoot true

# 进行本轮目标随机
function mini:collect/game/goal_random

schedule function mini:collect/game_init2 15t replace