# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1012.33 12.13 7006.82 -28.40 23.85
effect give @s night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 核爆刺客 >>\n\n","color":"#BC78EC","bold":true}," 用刷怪蛋 ",{"text":"召唤苦力怕炸死对方！","color":"#BC78EC"},"\n 最后一格的击退棒能击飞苦力怕和玩家！\n\n",{"text": " <LTW Original> ","color":"#28C76F"},{"text": " <间接伤害玩家> ","color":"gold"},"\n"]
tellraw @s ""