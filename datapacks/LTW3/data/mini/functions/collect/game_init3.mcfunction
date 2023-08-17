# 废弃矿坑
scoreboard players set $random_max mem 8
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 1 run setblock 2046 286 2018 redstone_block
execute if score $random mem matches 2 run setblock 2044 286 2018 redstone_block
execute if score $random mem matches 3 run setblock 2044 286 2016 redstone_block
execute if score $random mem matches 4 run setblock 2046 286 2016 redstone_block
execute if score $random mem matches 5 run setblock 2046 288 2018 redstone_block
execute if score $random mem matches 6 run setblock 2044 288 2018 redstone_block
execute if score $random mem matches 7 run setblock 2044 288 2016 redstone_block
execute if score $random mem matches 8 run setblock 2046 288 2016 redstone_block

# 地狱块
scoreboard players set $random_max mem 3
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 1 run setblock 2042 284 2015 redstone_block
execute if score $random mem matches 2 run setblock 2040 284 2015 redstone_block
execute if score $random mem matches 3 run setblock 2038 284 2015 redstone_block

# 僵尸
scoreboard players set $random_max mem 3
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 1 run setblock 2038 288 2017 redstone_block
execute if score $random mem matches 2 run setblock 2040 288 2017 redstone_block
execute if score $random mem matches 3 run setblock 2042 288 2017 redstone_block

# 骷髅
scoreboard players set $random_max mem 3
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 1 run setblock 2038 288 2015 redstone_block
execute if score $random mem matches 2 run setblock 2040 288 2015 redstone_block
execute if score $random mem matches 3 run setblock 2042 288 2015 redstone_block

# 蜘蛛
scoreboard players set $random_max mem 3
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 1 run setblock 2038 288 2019 redstone_block
execute if score $random mem matches 2 run setblock 2040 288 2019 redstone_block
execute if score $random mem matches 3 run setblock 2042 288 2019 redstone_block

# 准备开始清除程序
fill 2000 255 2000 2047 250 2047 air
schedule function mini:collect/game_init4 7t