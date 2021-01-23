# 当玩家加入游戏时触发

spawnpoint @s -12 7 -102

# TODO: v0.3 升级函数
execute if entity @s[tag=!v02upgrade,scores={stat_total=1..}] run function ltw:main/player_upgrade
tag @s add v02upgrade

advancement revoke @s only lib:damage_dealt
advancement revoke @s only lib:damage_taken
advancement revoke @s only item:container/place
advancement revoke @s only item:special/consume_enchanted_apple
advancement revoke @s only item:special/consume_golden_apple

execute as @a at @s run function lib:sounds/hit

# 存储UUID
execute store result score @s UUID run data get entity @s UUID[0]

# 如果是旁观者或局号不对头：开始旁观
execute if entity @s[team=!playing] run function ltw:main/player_enter_watcher
execute if entity @s[team=playing] unless score @s game_id = $ game_id run function ltw:main/player_enter_watcher
# 如果不是旁观且局号正确：游戏中掉线
execute if entity @s[team=playing] if score @s game_id = $ game_id run function ltw:main/player_enter_rejoin

# 更新 Bossbar
bossbar set ltw:notice players @a
function lib:bossbar/show


# 无指定人员
# FIXME: 关掉 JourneyMap 的生物雷达
# TODO: {土豆} 按存活回合数记分（两个炸弹同时爆炸把两个人炸死可以并列）
# TODO: {TNTRun} 有多人汇报存在严重卡顿，检查是否是场地的粒子造成，或者是游戏中的光照更新、实体、方块变化

# 龙猫
# FIXME: BGM 可能会双响
# TODO: 增加文本可读性
# TODO: {幻翼} 在玩家第一次到达半血时显示回血的提示

# HIM
# TODO: {色彩} 添加极少量钻石（然后让龙猫在最上面加个奖励物品）
# FIXME: 主大厅打开物品栏长按 Q 高概率导致物品消失

# 010
# TODO: 支持 “随机获得 2 个绿色物品” 这种类型的奖励（指定 LootTable 名称和运行次数）
# TODO: 升级 1.16.5（不过得先等 OptiFine 更新）
# TODO: {幻翼} 制作幻翼的成品地图
