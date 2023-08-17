xp set @a 0 points

# 部分物品需要经验值
execute at @a run function item:refresh_level

# 显示倒计时
bossbar set mini:red name ["剩余时间 » ",{"score":{"objective":"mem","name":"$countdown"},"color":"red"}]
bossbar set mini:yellow name ["剩余时间 » ",{"score":{"objective":"mem","name":"$countdown"},"color":"yellow"}]
bossbar set mini:blue name ["剩余时间 » ",{"score":{"objective":"mem","name":"$countdown"},"color":"aqua"}]
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 360s：教学
execute if score $countdown mem matches 360 run tellraw @a[team=playing,scores={green_total=..10}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：在深处会有更稀有的矿物与资源，但也会有更大的风险！","bold":false},"\n"]

# 270s：教学
execute if score $countdown mem matches 270 run tellraw @a[team=playing,scores={green_total=..10}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：地底下有许多结构，或许里面就有你要的材料？","bold":false},"\n"]

# 180s：结构位置
execute if score $countdown mem matches 180 run title @a subtitle {"text":"◤ 生物资源已经标记 ◢","color":"aqua"}
execute if score $countdown mem matches 180 run title @a times 1 120 3
execute if score $countdown mem matches 180 run title @a title ""
execute if score $countdown mem matches 180 run scoreboard players set $bossbar_color mem 2
execute if score $countdown mem matches 180 run function lib:bossbar/show
execute if score $countdown mem matches 180 run playsound minecraft:block.amethyst_block.resonate player @a 0 1000000 0 1000000 1

# 120s：时间提示
execute if score $countdown mem matches 120 run title @a subtitle {"text":"⚠ 还有两分钟！ ⚠","color":"yellow"}
execute if score $countdown mem matches 120 run title @a times 1 50 3
execute if score $countdown mem matches 120 run title @a title ""

# 60s：时间提示
execute if score $countdown mem matches 60 run title @a subtitle {"text":"⚠ 最后一分钟！ ⚠","color":"gold"}
execute if score $countdown mem matches 60 run title @a times 1 50 3
execute if score $countdown mem matches 60 run title @a title ""
execute if score $countdown mem matches 60 run scoreboard players set $bossbar_color mem 1
execute if score $countdown mem matches 60 run function lib:bossbar/show

# 30s：时间提示
execute if score $countdown mem matches 30 run title @a subtitle {"text":"⚠ 最后三十秒！ ⚠","color":"red"}
execute if score $countdown mem matches 30 run title @a times 1 50 3
execute if score $countdown mem matches 30 run title @a title ""

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 回复生命值
execute if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $foursec mem matches 1 run schedule function mini:collect/game/clear_effect 1t replace

# 给予进度
advancement grant @a[team=playing,scores={CollectPoint=16..}] only ltw:survival/collect1
advancement grant @a[team=playing,scores={CollectPoint=36..}] only ltw:survival/collect3
advancement grant @a[team=playing,scores={CollectPoint=50..}] only ltw:survival/collect4