# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 2004.7 25.7 1024.1 -125 20
effect give @s night_vision 1000000 0 true
tellraw @s ["",{"text":"\n >> 爆裂纷争 >>\n\n","color":"gold","bold":true}," 使用给予的炸药 ",{"text":"炸死对手, 破坏平台","color":"gold"},"\n 也可以使用炸药来 ",{"text":"把敌人扔下去！","color":"gold"},{"text": "\n\n <RSW - 拓展内容> ","color":"#9945FF"},{"text": " <只能击退玩家> ","color":"yellow"},"\n"]
tellraw @s ""