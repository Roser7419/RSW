gamerule doDaylightCycle true
scoreboard players set $countdown mem 420

# HUD
scoreboard objectives setdisplay list total_score_disp
scoreboard objectives setdisplay belowName CollectPoint
scoreboard objectives setdisplay sidebar CollectPoint
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 420
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:red name ["剩余时间 » ",{"score":{"objective":"mem","name":"$countdown"},"color":"red"}]
bossbar set mini:yellow name ["剩余时间 » ",{"score":{"objective":"mem","name":"$countdown"},"color":"yellow"}]
bossbar set mini:blue name ["剩余时间 » ",{"score":{"objective":"mem","name":"$countdown"},"color":"aqua"}]

# 世界边界
worldborder center 2024.0 2024.0
worldborder set 45.999