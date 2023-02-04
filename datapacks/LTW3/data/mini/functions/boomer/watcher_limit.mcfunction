# 观察者限定范围
execute as @a[gamemode=spectator] at @s anchored eyes if block ~ ~ ~ #mini:boomer_wall run spectate
execute as @a[gamemode=spectator] at @s anchored eyes if block ~ ~ ~ #mini:boomer_wall run tp @s[team=!debugging] 2004.7 25.7 1024.1 -125 20