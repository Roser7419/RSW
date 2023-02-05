# 测试用：快速开始 Boomer
team join playing @a[team=watching]
clear @a[team=!debugging]
function ltw:state/0/start_game
scoreboard players set $round mem 5
scoreboard players set $mini_type mem 6
function mini:main/game_init
function ltw:state/4/state_enter
effect give @a instant_health 1 20 true
say 已开始单个测试游戏！

schedule function test:countdown/quick 20t