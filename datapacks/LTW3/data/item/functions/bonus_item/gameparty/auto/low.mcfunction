# 奖励物资生成 - 较低等级奖励
# 使用于 核爆刺客/色彩迷阵/炸弹狂魔/地陷圣坛/遗迹寻宝 - 密室宝藏/月夜狩猎 - 红色幻翼
# 扩展中 爆裂纷争

# 局数为 1 时生成 较低等级 混合奖励 / 50%白色 36%蓝色 14%紫色 00%橙色
execute if score $round mem matches ..1 run function item:bonus_item/gameparty/mixed/low
# 局数为 2/3 时生成 正常等级 混合奖励 / 36%白色 29%蓝色 21%紫色 14%橙色
execute if score $round mem matches 2..3 run function item:bonus_item/gameparty/mixed/normal
# 局数为 4/5 时生成 较低等级 分数奖励 / 57%白色 36%蓝色 07%紫色 00%橙色
execute if score $round mem matches 4.. run function item:bonus_item/gameparty/score/low