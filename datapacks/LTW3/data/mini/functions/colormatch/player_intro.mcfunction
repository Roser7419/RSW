# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1062.43 22.00 4012.88 136.56 30.58
tellraw @s ["",{"text":"\n >> 色彩迷阵 >>\n\n","color":"#BC78EC","bold":true}," 站在 ",{"text":"与墙壁相同的方块","color":"#BC78EC"}," 上！\n 倒计时结束时, 与墙壁不相同的地板都会消失！\n\n",{"text": " <LTW Original> ","color":"#28C76F"},{"text": " <只能击退玩家> ","color":"yellow"},"\n"]
effect give @s night_vision infinite 0 true