# 奇世异花 (7gn)
tag @s remove canbuy
tag @s[scores={gold=7..}] add canbuy
tellraw @s[scores={gold=..6}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来购买这个物品!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"#7367F0","bold":true},"你购买了 ",{"text":"奇世异花","color":"#7367F0"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"#7367F0","bold":true},{"selector": "@s","color":"#7367F0"}," 购买了 ",{"text":"奇世异花","color":"#7367F0"}]
execute as @s[tag=canbuy] at @s run summon minecraft:firework_rocket ~ ~2 ~ {LifeTime:12,FireworksItem:{id:"firework_rocket",Count:2,tag:{Fireworks:{Explosions:[{Flicker:1b,Trail:1b,Type:1,Colors:[I;6688755],FadeColors:[I;6648575]}]}}}}
scoreboard players remove @s[tag=canbuy] gold 7

execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy