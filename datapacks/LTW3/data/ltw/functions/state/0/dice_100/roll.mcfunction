# 丢骰子
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 100
function lib:random

# 5% 大成功结局
# 100 | 1% | 极限成功 + 5 金块
execute if score $random mem matches 100 run function ltw:state/0/dice_100/extreme_win
# 099 | 1% | 极难成功 + 3 金块
execute if score $random mem matches 099 run function ltw:state/0/dice_100/insurmountable_win
# 098 | 1% | 困难成功 + 2 金块
execute if score $random mem matches 098 run function ltw:state/0/dice_100/hard_win
# 96-97 | 2% | 大成功 + 1 金块
execute if score $random mem matches 096..097 run function ltw:state/0/dice_100/super_win

# 25% 成功结局
# 91-95 | 05% | 手气极佳 + 5 金锭
execute if score $random mem matches 091..095 run function ltw:state/0/dice_100/win3
# 81-90 | 10% | 气运颇好 + 3 金锭
execute if score $random mem matches 081..090 run function ltw:state/0/dice_100/win2
# 71-80 | 10% | 运气尚可 + 2 金锭
execute if score $random mem matches 071..080 run function ltw:state/0/dice_100/win1

# 20% 平庸结局
# 51-70 | 20% | 拿回金锭 + 1 金锭
execute if score $random mem matches 051..070 run function ltw:state/0/dice_100/back

# 45% 失败结局
# 31-50 | 20% | 无事发生   0 金锭
execute if score $random mem matches 031..050 run function ltw:state/0/dice_100/nothing
# 21-30 | 10% | 功德不足 - 1 金锭
execute if score $random mem matches 021..030 run function ltw:state/0/dice_100/lose1
# 11-20 | 10% | 小心行事 - 2 金锭
execute if score $random mem matches 011..020 run function ltw:state/0/dice_100/lose2
# 06-10 | 05% | 运势不佳 - 3 金锭
execute if score $random mem matches 006..010 run function ltw:state/0/dice_100/lose3

# 5% 大失败结局
# 04-05 | 2% | 难以挽回 - 5 金锭
execute if score $random mem matches 004..005 run function ltw:state/0/dice_100/big_lose
# 003 | 1% | 为此悲鸣 - 7 金锭
execute if score $random mem matches 003 run function ltw:state/0/dice_100/huge_lose
# 002 | 1% | 擦肩而过 - 9 金锭
execute if score $random mem matches 002 run function ltw:state/0/dice_100/massive_lose
# 001 | 1% | 寄喽 - 清空
execute if score $random mem matches 001 run function ltw:state/0/dice_100/final_lose