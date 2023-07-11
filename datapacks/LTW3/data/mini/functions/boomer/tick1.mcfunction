# 调整物品：仅在纵向速度 < -0.010 且 y > 20 时, 才将 NoGravity 设置为 false
execute as @e[tag=bonus_item] store result score @s temp run data get entity @s Motion[1] 1000
execute as @e[tag=bonus_item] if entity @s[x=2000,y=20,z=1000,dx=100,dy=100,dz=100,scores={temp=-10..}] run data merge entity @s {NoGravity:0b}
execute as @e[tag=bonus_item] unless entity @s[x=2000,y=20,z=1000,dx=100,dy=100,dz=100,scores={temp=-10..}] run data merge entity @s {NoGravity:1b}

# 设置 TNT 爆炸时间
execute as @e[type=tnt,nbt={Fuse:80s}] run data merge entity @s {Fuse:36s}