scoreboard players reset * CollectGoal
kill @e[type=marker,tag=collect_goal]

# 生成目标数据
# Common
scoreboard players set $random_max mem 8
scoreboard players set $random_min mem 1
function lib:random
execute store result score $Common CollectGoal run scoreboard players get $random mem
# Uncommon
scoreboard players set $random_max mem 17
scoreboard players set $random_min mem 1
function lib:random
execute store result score $Uncommon CollectGoal run scoreboard players get $random mem
# Rare - A
scoreboard players set $random_max mem 25
scoreboard players set $random_min mem 1
function lib:random
execute store result score $RareA CollectGoal run scoreboard players get $random mem
# Rare - B
scoreboard players set $random_max mem 25
scoreboard players set $random_min mem 1
function lib:random
execute store result score $RareB CollectGoal run scoreboard players get $random mem
execute if score $RareB CollectGoal = $RareA CollectGoal run function mini:collect/game/rare_reroll
# Epic - A
scoreboard players set $random_max mem 25
scoreboard players set $random_min mem 1
function lib:random
execute store result score $EpicA CollectGoal run scoreboard players get $random mem
# Epic - B
scoreboard players set $random_max mem 25
scoreboard players set $random_min mem 1
function lib:random
execute store result score $EpicB CollectGoal run scoreboard players get $random mem
execute if score $EpicB CollectGoal = $EpicA CollectGoal run function mini:collect/game/epic_reroll
# Legendary
scoreboard players set $random_max mem 17
scoreboard players set $random_min mem 1
function lib:random
execute store result score $Legendary CollectGoal run scoreboard players get $random mem
# Mythic
scoreboard players set $random_max mem 8
scoreboard players set $random_min mem 1
function lib:random
execute store result score $Mythic CollectGoal run scoreboard players get $random mem

# 生成信息实体
# Common
execute if score $Common CollectGoal matches 1 run summon marker 2000 200 2000 {Tags:["collect_common","collect_goal"],CustomName:'{"text":"小麦种子","color":"white"}'}
execute if score $Common CollectGoal matches 2 run summon marker 2000 200 2000 {Tags:["collect_common","collect_goal"],CustomName:'{"text":"橡木栅栏","color":"white"}'}
execute if score $Common CollectGoal matches 3 run summon marker 2000 200 2000 {Tags:["collect_common","collect_goal"],CustomName:'{"text":"橡木","color":"white"}'}
execute if score $Common CollectGoal matches 4 run summon marker 2000 200 2000 {Tags:["collect_common","collect_goal"],CustomName:'{"text":"睡莲","color":"white"}'}
execute if score $Common CollectGoal matches 5 run summon marker 2000 200 2000 {Tags:["collect_common","collect_goal"],CustomName:'{"text":"竹子","color":"white"}'}
execute if score $Common CollectGoal matches 6 run summon marker 2000 200 2000 {Tags:["collect_common","collect_goal"],CustomName:'{"text":"砂土","color":"white"}'}
execute if score $Common CollectGoal matches 7 run summon marker 2000 200 2000 {Tags:["collect_common","collect_goal"],CustomName:'{"text":"木锹","color":"white"}'}
execute if score $Common CollectGoal matches 8 run summon marker 2000 200 2000 {Tags:["collect_common","collect_goal"],CustomName:'{"text":"煤炭","color":"white"}'}
# Uncommon
execute if score $Uncommon CollectGoal matches 1 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"腐肉","color":"green"}'}
execute if score $Uncommon CollectGoal matches 2 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"骨头","color":"green"}'}
execute if score $Uncommon CollectGoal matches 3 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"蜘蛛眼","color":"green"}'}
execute if score $Uncommon CollectGoal matches 4 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"木炭","color":"green"}'}
execute if score $Uncommon CollectGoal matches 5 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"红色陶瓦","color":"green"}'}
execute if score $Uncommon CollectGoal matches 6 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"竹块","color":"green"}'}
execute if score $Uncommon CollectGoal matches 7 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"红砂岩","color":"green"}'}
execute if score $Uncommon CollectGoal matches 8 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"雕纹砂岩","color":"green"}'}
execute if score $Uncommon CollectGoal matches 9 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"小麦","color":"green"}'}
execute if score $Uncommon CollectGoal matches 10 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"脚手架","color":"green"}'}
execute if score $Uncommon CollectGoal matches 11 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"石剑","color":"green"}'}
execute if score $Uncommon CollectGoal matches 12 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"紫色染色玻璃","color":"green"}'}
execute if score $Uncommon CollectGoal matches 13 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"水瓶","color":"green"}'}
execute if score $Uncommon CollectGoal matches 14 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"线","color":"green"}'}
execute if score $Uncommon CollectGoal matches 15 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"堆肥桶","color":"green"}'}
execute if score $Uncommon CollectGoal matches 16 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"粗铜块","color":"green"}'}
execute if score $Uncommon CollectGoal matches 17 run summon marker 2000 200 2000 {Tags:["collect_uncommon","collect_goal"],CustomName:'{"text":"橡木运输船","color":"green"}'}
# Rare - A
execute if score $RareA CollectGoal matches 1 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"橡树树叶","color":"aqua"}'}
execute if score $RareA CollectGoal matches 2 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"铁栏杆","color":"aqua"}'}
execute if score $RareA CollectGoal matches 3 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"粗铁块","color":"aqua"}'}
execute if score $RareA CollectGoal matches 4 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"音符盒","color":"aqua"}'}
execute if score $RareA CollectGoal matches 5 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"避雷针","color":"aqua"}'}
execute if score $RareA CollectGoal matches 6 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"海草","color":"aqua"}'}
execute if score $RareA CollectGoal matches 7 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"骨块","color":"aqua"}'}
execute if score $RareA CollectGoal matches 8 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"橙色带釉陶瓦","color":"aqua"}'}
execute if score $RareA CollectGoal matches 9 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"切制铜楼梯","color":"aqua"}'}
execute if score $RareA CollectGoal matches 10 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"轻质测重压力板","color":"aqua"}'}
execute if score $RareA CollectGoal matches 11 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"竹板","color":"aqua"}'}
execute if score $RareA CollectGoal matches 12 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"制箭台","color":"aqua"}'}
execute if score $RareA CollectGoal matches 13 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"织布机","color":"aqua"}'}
execute if score $RareA CollectGoal matches 14 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"烟熏炉","color":"aqua"}'}
execute if score $RareA CollectGoal matches 15 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"灯笼","color":"aqua"}'}
execute if score $RareA CollectGoal matches 16 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"平滑石头","color":"aqua"}'}
execute if score $RareA CollectGoal matches 17 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"裂纹石砖","color":"aqua"}'}
execute if score $RareA CollectGoal matches 18 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"面包","color":"aqua"}'}
execute if score $RareA CollectGoal matches 19 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"铁靴子","color":"aqua"}'}
execute if score $RareA CollectGoal matches 20 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"铁镐","color":"aqua"}'}
execute if score $RareA CollectGoal matches 21 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"运输矿车","color":"aqua"}'}
execute if score $RareA CollectGoal matches 22 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"绊线勾","color":"aqua"}'}
execute if score $RareA CollectGoal matches 23 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"悬挂式橡木告示牌","color":"aqua"}'}
execute if score $RareA CollectGoal matches 24 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"盔甲架","color":"aqua"}'}
execute if score $RareA CollectGoal matches 25 run summon marker 2000 200 2000 {Tags:["collect_rare_a","collect_goal"],CustomName:'{"text":"营火","color":"aqua"}'}
# Rare - B
execute if score $RareB CollectGoal matches 1 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"橡树树叶","color":"aqua"}'}
execute if score $RareB CollectGoal matches 2 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"铁栏杆","color":"aqua"}'}
execute if score $RareB CollectGoal matches 3 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"粗铁块","color":"aqua"}'}
execute if score $RareB CollectGoal matches 4 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"音符盒","color":"aqua"}'}
execute if score $RareB CollectGoal matches 5 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"避雷针","color":"aqua"}'}
execute if score $RareB CollectGoal matches 6 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"海草","color":"aqua"}'}
execute if score $RareB CollectGoal matches 7 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"骨块","color":"aqua"}'}
execute if score $RareB CollectGoal matches 8 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"橙色带釉陶瓦","color":"aqua"}'}
execute if score $RareB CollectGoal matches 9 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"切制铜楼梯","color":"aqua"}'}
execute if score $RareB CollectGoal matches 10 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"轻质测重压力板","color":"aqua"}'}
execute if score $RareB CollectGoal matches 11 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"竹板","color":"aqua"}'}
execute if score $RareB CollectGoal matches 12 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"制箭台","color":"aqua"}'}
execute if score $RareB CollectGoal matches 13 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"织布机","color":"aqua"}'}
execute if score $RareB CollectGoal matches 14 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"烟熏炉","color":"aqua"}'}
execute if score $RareB CollectGoal matches 15 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"灯笼","color":"aqua"}'}
execute if score $RareB CollectGoal matches 16 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"平滑石头","color":"aqua"}'}
execute if score $RareB CollectGoal matches 17 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"裂纹石砖","color":"aqua"}'}
execute if score $RareB CollectGoal matches 18 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"面包","color":"aqua"}'}
execute if score $RareB CollectGoal matches 19 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"铁靴子","color":"aqua"}'}
execute if score $RareB CollectGoal matches 20 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"铁镐","color":"aqua"}'}
execute if score $RareB CollectGoal matches 21 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"运输矿车","color":"aqua"}'}
execute if score $RareB CollectGoal matches 22 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"绊线勾","color":"aqua"}'}
execute if score $RareB CollectGoal matches 23 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"悬挂式橡木告示牌","color":"aqua"}'}
execute if score $RareB CollectGoal matches 24 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"盔甲架","color":"aqua"}'}
execute if score $RareB CollectGoal matches 25 run summon marker 2000 200 2000 {Tags:["collect_rare_b","collect_goal"],CustomName:'{"text":"营火","color":"aqua"}'}
# Epic - A
execute if score $EpicA CollectGoal matches 1 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"雕纹深板岩","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 2 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"粗金块","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 3 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"干草捆","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 4 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"唱片机","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 5 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"红石中继器","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 6 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"苔石墙","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 7 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"淡蓝色染色玻璃板","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 8 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"漏斗","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 9 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"金头盔","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 10 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"陷阱箱","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 11 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"漏斗矿车","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 12 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"金锄","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 13 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"高炉","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 14 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"砂轮","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 15 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"锻造台","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 16 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"切石机","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 17 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"画","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 18 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"紫水晶块","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 19 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"望远镜","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 20 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"下界砖块","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 21 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"深板岩瓦","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 22 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"遮光玻璃","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 23 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"时钟","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 24 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"蜘蛛网","color":"light_purple"}'}
execute if score $EpicA CollectGoal matches 25 run summon marker 2000 200 2000 {Tags:["collect_epic_a","collect_goal"],CustomName:'{"text":"白色床","color":"light_purple"}'}
# Epic - B
execute if score $EpicB CollectGoal matches 1 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"雕纹深板岩","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 2 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"粗金块","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 3 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"干草捆","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 4 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"唱片机","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 5 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"红石中继器","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 6 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"苔石墙","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 7 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"淡蓝色染色玻璃板","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 8 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"漏斗","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 9 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"金头盔","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 10 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"陷阱箱","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 11 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"漏斗矿车","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 12 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"金锄","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 13 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"高炉","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 14 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"砂轮","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 15 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"锻造台","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 16 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"切石机","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 17 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"画","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 18 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"紫水晶块","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 19 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"望远镜","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 20 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"下界砖块","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 21 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"深板岩瓦","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 22 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"遮光玻璃","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 23 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"时钟","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 24 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"蜘蛛网","color":"light_purple"}'}
execute if score $EpicB CollectGoal matches 25 run summon marker 2000 200 2000 {Tags:["collect_epic_b","collect_goal"],CustomName:'{"text":"白色床","color":"light_purple"}'}
# Legendary
execute if score $Legendary CollectGoal matches 1 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"雕纹石英块","color":"gold"}'}
execute if score $Legendary CollectGoal matches 2 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"活塞","color":"gold"}'}
execute if score $Legendary CollectGoal matches 3 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"投掷器","color":"gold"}'}
execute if score $Legendary CollectGoal matches 4 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"红石比较器","color":"gold"}'}
execute if score $Legendary CollectGoal matches 5 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"弩","color":"gold"}'}
execute if score $Legendary CollectGoal matches 6 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"动力铁轨","color":"gold"}'}
execute if score $Legendary CollectGoal matches 7 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"阳光探测器","color":"gold"}'}
execute if score $Legendary CollectGoal matches 8 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"铁砧","color":"gold"}'}
execute if score $Legendary CollectGoal matches 9 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"粉红色床","color":"gold"}'}
execute if score $Legendary CollectGoal matches 10 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"烈焰棒","color":"gold"}'}
execute if score $Legendary CollectGoal matches 11 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"钻石斧","color":"gold"}'}
execute if score $Legendary CollectGoal matches 12 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"白色旗帜","color":"gold"}'}
execute if score $Legendary CollectGoal matches 13 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"钻石护腿","color":"gold"}'}
execute if score $Legendary CollectGoal matches 14 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"下界合金碎片","color":"gold"}'}
execute if score $Legendary CollectGoal matches 15 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"钻石块","color":"gold"}'}
execute if score $Legendary CollectGoal matches 16 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"标靶","color":"gold"}'}
execute if score $Legendary CollectGoal matches 17 run summon marker 2000 200 2000 {Tags:["collect_legendary","collect_goal"],CustomName:'{"text":"侦测器","color":"gold"}'}
# Mythic
execute if score $Mythic CollectGoal matches 1 run summon marker 2000 200 2000 {Tags:["collect_mythic","collect_goal"],CustomName:'{"text":"损坏的铁砧","color":"red"}'}
execute if score $Mythic CollectGoal matches 2 run summon marker 2000 200 2000 {Tags:["collect_mythic","collect_goal"],CustomName:'{"text":"磁石","color":"red"}'}
execute if score $Mythic CollectGoal matches 3 run summon marker 2000 200 2000 {Tags:["collect_mythic","collect_goal"],CustomName:'{"text":"下界合金胸甲","color":"red"}'}
execute if score $Mythic CollectGoal matches 4 run summon marker 2000 200 2000 {Tags:["collect_mythic","collect_goal"],CustomName:'{"text":"熔岩桶","color":"red"}'}
execute if score $Mythic CollectGoal matches 5 run summon marker 2000 200 2000 {Tags:["collect_mythic","collect_goal"],CustomName:'{"text":"黑曜石","color":"red"}'}
execute if score $Mythic CollectGoal matches 6 run summon marker 2000 200 2000 {Tags:["collect_mythic","collect_goal"],CustomName:'{"text":"发射器","color":"red"}'}
execute if score $Mythic CollectGoal matches 7 run summon marker 2000 200 2000 {Tags:["collect_mythic","collect_goal"],CustomName:'{"text":"品红色旗帜","color":"red"}'}
execute if score $Mythic CollectGoal matches 8 run summon marker 2000 200 2000 {Tags:["collect_mythic","collect_goal"],CustomName:'{"text":"平凡的药水","color":"red"}'}