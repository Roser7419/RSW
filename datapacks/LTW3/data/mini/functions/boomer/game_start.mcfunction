# 游戏结束倒计时
scoreboard players set $countdown mem 70

# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay belowName health_disp
scoreboard objectives setdisplay sidebar health_alive
scoreboard players set $bossbar_color mem 3
scoreboard players set $countdown_max mem 70
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:green name ["剩余时间 » ",{"score":{"objective":"mem","name":"$countdown"},"color":"green"}]
bossbar set mini:red name "边界缩小"

# 边界设置
worldborder center 2016.0 1016.0
worldborder set 31
worldborder damage buffer 0
worldborder damage amount 1
worldborder warning time 3