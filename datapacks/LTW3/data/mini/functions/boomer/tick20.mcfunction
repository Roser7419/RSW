
# 30s：教学
execute if score $countdown mem matches 30 run tellraw @a[team=playing,scores={green_total=..10}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：边界最终会汇于中心, 不要离得太远！","bold":false},"\n"]

# 边界收缩
execute if score $countdown mem matches 21 run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},{"text": "边界将在 20 秒后收缩！","color": "gold"}]
execute if score $countdown mem matches 1 run scoreboard players set $bossbar_color mem 1
execute if score $countdown mem matches 1 run function lib:bossbar/show
execute if score $countdown mem matches 1 as @a at @s run function lib:sounds/music/mini_fast
execute if score $countdown mem matches 1 as @a at @s run function lib:sounds/travel
execute if score $countdown mem matches 1 if score $player_alive mem matches 3.. run effect clear @a resistance
execute if score $countdown mem matches 1 if score $player_alive mem matches ..2 run tellraw @a ["\n",{"text": ">> ","color": "gold","bold": true},{"text": "边界开始向中心收缩！\n","color": "gold"}]
execute if score $countdown mem matches 1 if score $player_alive mem matches 3.. run tellraw @a ["\n",{"text": ">> ","color": "gold","bold": true},{"text": "边界开始向中心收缩！TNT造成的伤害提升了！\n","color": "gold"}]
execute if score $countdown mem matches 1 run worldborder set 1 30

# 回复生命值
execute if score $countdown mem matches 1.. if score $foursec mem matches 1 if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $countdown mem matches 1.. if score $foursec mem matches 1 run schedule function mini:ass/game/clear_effect 1t replace

# -----------------------
#   物品生成
# -----------------------

# 判断是否符合刷出新物品的条件：0 为可以, 其他为不可以
scoreboard players set #new_item mem 0

# 当前场地上没有物品
execute if entity @e[tag=bonus_item,x=2000,y=0,z=1000,dx=100,dy=1000,dz=100] run scoreboard players set #new_item mem 1

# 没有进入即死
execute if score $countdown mem matches ..1 run scoreboard players set #new_item mem 1

# 如果没有物品, 则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 15s 冷却时间
execute if score $new_item_cd mem matches ..14 run scoreboard players set #new_item mem 1

# 存活玩家数（$player_alive）>= 3
execute if score $player_alive mem matches ..2 run scoreboard players set #new_item mem 1
# 死亡玩家数（$player_finish）<= 2
execute if score $player_finish mem matches 3.. run scoreboard players set #new_item mem 1

# 如果上述条件均满足, 则刷出新物品
execute if score #new_item mem matches 0 run function mini:boomer/game/new_item
