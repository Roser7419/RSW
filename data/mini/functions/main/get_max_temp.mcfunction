#> mini:main/get_max_temp
# @input score @a[tag=!max_uncounted,team=playing] temp 进行统计的分数
# @output score #score_max mem 最高分

scoreboard players set #score_max mem -2147483648
scoreboard players operation #score_max mem > @a[tag=!max_uncounted,team=playing] temp