# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1026.52 12.76 3005.59 47.21 22.60
tellraw @s ["",{"text":"\n >> 炸弹狂魔 >>\n\n","color":"#BC78EC","bold":true}," 炸弹会在一段时间后爆炸！\n 在持有炸弹时, 只要 ",{"text":"攻击其他人","color":"#BC78EC"}," 就能把炸弹甩给他！\n 努力存活下来吧！\n\n",{"text": " <LTW Original> ","color":"#28C76F"},{"text": " <只能击退玩家> ","color":"yellow"},"\n"]
effect give @s night_vision infinite 0 true