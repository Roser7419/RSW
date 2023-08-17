# 清理残余实体
tp @e[type=!player,x=1950,y=-200,z=1950,dx=100,dy=600,dz=100] ~ -100 ~
kill @e[type=!player,x=1950,y=-200,z=1950,dx=100,dy=600,dz=100]

# 矿物生成
setblock 2045 284 2015 minecraft:redstone_block

schedule function mini:collect/game_init3 7t