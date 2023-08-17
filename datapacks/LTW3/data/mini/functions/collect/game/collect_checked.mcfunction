# 1
execute if score @s temp matches 1 run item replace entity @s[tag=!common_collected] weapon.offhand with air
execute if score @s temp matches 1 run scoreboard players add @s[tag=!common_collected] CollectPoint 1
execute if score @s temp matches 1 run tellraw @s[tag=!common_collected] ["",{"text":">> ","color":"white","bold":true},"你成功提交了 ",{"selector":"@e[tag=collect_common]"}," , 获得了 ",{"text":"1","color":"white"}," 集物积分!"]
execute if score @s[tag=!common_collected] temp matches 1 run function lib:sounds/levelup
execute if score @s temp matches 1 run tag @s add common_collected

# 2
execute if score @s temp matches 2 run item replace entity @s[tag=!uncommon_collected] weapon.offhand with air
execute if score @s temp matches 2 run scoreboard players add @s[tag=!uncommon_collected] CollectPoint 3
execute if score @s temp matches 2 run tellraw @s[tag=!uncommon_collected] ["",{"text":">> ","color":"green","bold":true},"你成功提交了 ",{"selector":"@e[tag=collect_uncommon]"}," , 获得了 ",{"text":"3","color":"green"}," 集物积分!"]
execute if score @s[tag=!uncommon_collected] temp matches 2 run function lib:sounds/levelup
execute if score @s temp matches 2 run tag @s add uncommon_collected

# 3
execute if score @s temp matches 3 run item replace entity @s[tag=!rare_a_collected] weapon.offhand with air
execute if score @s temp matches 3 run scoreboard players add @s[tag=!rare_a_collected] CollectPoint 5
execute if score @s temp matches 3 run tellraw @s[tag=!rare_a_collected] ["",{"text":">> ","color":"aqua","bold":true},"你成功提交了 ",{"selector":"@e[tag=collect_rare_a]"}," , 获得了 ",{"text":"5","color":"aqua"}," 集物积分!"]
execute if score @s[tag=!rare_a_collected] temp matches 3 run function lib:sounds/levelup
execute if score @s temp matches 3 run tag @s add rare_a_collected

# 4
execute if score @s temp matches 4 run item replace entity @s[tag=!rare_b_collected] weapon.offhand with air
execute if score @s temp matches 4 run scoreboard players add @s[tag=!rare_bcollected] CollectPoint 5
execute if score @s temp matches 4 run tellraw @s[tag=!rare_b_collected] ["",{"text":">> ","color":"aqua","bold":true},"你成功提交了 ",{"selector":"@e[tag=collect_rare_b]"}," , 获得了 ",{"text":"5","color":"aqua"}," 集物积分!"]
execute if score @s[tag=!rare_b_collected] temp matches 4 run function lib:sounds/levelup
execute if score @s temp matches 4 run tag @s add rare_b_collected

# 5
execute if score @s temp matches 5 run item replace entity @s[tag=!epic_a_collected] weapon.offhand with air
execute if score @s temp matches 5 run scoreboard players add @s[tag=!epic_a_collected] CollectPoint 7
execute if score @s temp matches 5 run tellraw @s[tag=!epic_a_collected] ["",{"text":">> ","color":"light_purple","bold":true},"你成功提交了 ",{"selector":"@e[tag=collect_epic_a]"}," , 获得了 ",{"text":"7","color":"light_purple"}," 集物积分!"]
execute if score @s[tag=!epic_a_collected] temp matches 5 run function lib:sounds/levelup
execute if score @s temp matches 5 run tag @s add epic_a_collected

# 6
execute if score @s temp matches 6 run item replace entity @s[tag=!epic_b_collected] weapon.offhand with air
execute if score @s temp matches 6 run scoreboard players add @s[tag=!epic_b_collected] CollectPoint 7
execute if score @s temp matches 6 run tellraw @s[tag=!epic_b_collected] ["",{"text":">> ","color":"light_purple","bold":true},"你成功提交了 ",{"selector":"@e[tag=collect_epic_b]"}," , 获得了 ",{"text":"7","color":"light_purple"}," 集物积分!"]
execute if score @s[tag=!epic_b_collected] temp matches 6 run function lib:sounds/levelup
execute if score @s temp matches 6 run tag @s add epic_b_collected

# 7
execute if score @s temp matches 7 run item replace entity @s[tag=!legendary_collected] weapon.offhand with air
execute if score @s temp matches 7 run scoreboard players add @s[tag=!legendary_collected] CollectPoint 10
execute if score @s temp matches 7 run tellraw @s[tag=!legendary_collected] ["",{"text":">> ","color":"gold","bold":true},"你成功提交了 ",{"selector":"@e[tag=collect_legendary]"}," , 获得了 ",{"text":"10","color":"gold"}," 集物积分!"]
execute if score @s[tag=!legendary_collected] temp matches 7 run function lib:sounds/levelup
execute if score @s temp matches 7 run tag @s add legendary_collected

# 8
execute if score @s temp matches 8 run item replace entity @s[tag=!mythic_collected] weapon.offhand with air
execute if score @s temp matches 8 run scoreboard players add @s[tag=!mythic_collected] CollectPoint 12
execute if score @s temp matches 8 run tellraw @s[tag=!mythic_collected] ["",{"text":">> ","color":"red","bold":true},"你成功提交了 ",{"selector":"@e[tag=collect_mythic]"}," , 获得了 ",{"text":"12","color":"red"}," 集物积分!"]
execute if score @s[tag=!mythic_collected] temp matches 8 run function lib:sounds/levelup
execute if score @s temp matches 8 run tag @s add mythic_collected
advancement grant @s[tag=mythic_collected] only ltw:survival/collect2