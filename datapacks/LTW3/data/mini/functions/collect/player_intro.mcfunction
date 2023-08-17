# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1983.37 282.77 2022.90 -89.3 -3.2
worldborder set 1000000
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 集物纪行 >>\n\n","color":"#BC78EC","bold":true}," 收集指定物品，成为 ",{"text":"集物积分最高","color":"#BC78EC"}," 的玩家！\n 虽然抢不到别人手里的资源，\n 但或许可以让别人抢不了眼前的资源？\n\n",{"text": " <RSW Addon> ","color":"#7367F0"},{"text": " <生存模式> ","color":"aqua"},{"text": " <可以杀死玩家> ","color":"red"},"\n"]