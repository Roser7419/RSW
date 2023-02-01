# 奖励物资生成 - 更低等级奖励
# 使用于 遗迹寻宝 - 未提及点位/月夜狩猎 - 两翼中央

# 局数为 1/2/3 时生成 更低等级 混合奖励 / 71%白色 29%蓝色 00%紫色 00%橙色
execute if score $round mem matches ..3 run function item:bonus_item/gameparty/mixed/low2
# 局数为 4/5 时生成 更低等级 分数奖励 / 79%白色 21%蓝色 00%紫色 00%橙色
execute if score $round mem matches 4.. run function item:bonus_item/gameparty/score/low2