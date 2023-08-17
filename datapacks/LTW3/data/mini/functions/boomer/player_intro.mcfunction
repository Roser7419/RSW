# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 2004.7 25.7 1024.1 -125 20
effect give @s night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 爆裂纷争 >>\n\n","color":"#BC78EC","bold":true}," 使用给予的炸药 ",{"text":"炸死对手, 破坏平台！","color":"#BC78EC"},"\n 也可以使用炸药来把敌人扔下去！\n\n",{"text": " <RSW Addon> ","color":"#7367F0"},{"text": " <间接伤害玩家> ","color":"gold"},"\n"]
tellraw @s ""