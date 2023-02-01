# 奖励物资生成 - 正常等级奖励
# 使用于 排名奖励

# 局数为 1/2/3 时生成 正常等级 混合奖励 / 36%白色 29%蓝色 21%紫色 14%橙色
execute if score $round mem matches ..3 run function item:bonus_item/gameparty/mixed/normal
# 局数为 4/5 时生成 正常等级 分数奖励 / 36%白色 29%蓝色 21%紫色 14%橙色
execute if score $round mem matches 4.. run function item:bonus_item/gameparty/score/normal