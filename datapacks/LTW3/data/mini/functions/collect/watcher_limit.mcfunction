# 观察者限制飞行范围
execute unless score $state mem matches 5 run tp @a[gamemode=spectator,team=!debugging] 1983.37 282.77 2022.90 -89.3 -3.2
execute as @a[gamemode=spectator,x=2024,y=250,z=2024,distance=70..] run spectate
tp @a[gamemode=spectator,x=2024,y=250,z=2024,distance=70..,team=!debugging] 2038.37 285.37 2035.37 115.3 22.6