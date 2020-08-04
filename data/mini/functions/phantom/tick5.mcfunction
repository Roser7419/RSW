
# 击杀音效与提示
execute as @a[tag=!watcher] run scoreboard players operation @s temp = @s kill_phantom
execute as @a[tag=!watcher] run scoreboard players operation @s temp -= @s kill_phantom2
execute as @a[tag=!watcher] run scoreboard players operation @s kill_phantom2 = @s kill_phantom
execute as @a[tag=!watcher] run scoreboard players operation @s kill_phantom2 %= #const_5 mem
execute as @a[tag=!watcher,scores={temp=1..,kill_phantom2=1..}] run function lib:sounds/hit
execute as @a[tag=!watcher,scores={temp=1..,kill_phantom2=0}] run function lib:sounds/levelup
execute as @a[tag=!watcher,scores={temp=1..,kill_phantom2=0}] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"}," 已击杀 ",{"score": { "name": "@s","objective": "kill_phantom"},"color":"gold"}," 只幻翼!"]
execute as @a[tag=!watcher] run scoreboard players operation @s kill_phantom2 = @s kill_phantom

# 给予进度
execute as @a[tag=!watcher,scores={temp=1..,kill_phantom=8}] run advancement grant @s only ltw:combat/phantom_1
execute as @a[tag=!watcher,scores={temp=1..,kill_phantom=16}] run advancement grant @s only ltw:combat/phantom_2
execute as @a[tag=!watcher,scores={temp=1..,kill_phantom=24}] run advancement grant @s only ltw:combat/phantom_3