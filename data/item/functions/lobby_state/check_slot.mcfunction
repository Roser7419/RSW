# 第八格
execute unless data entity @s[tag=lobby_watch] Inventory[{Slot:8b,tag:{lobby_item:1b,lobby_watch:1b}}] run function item:lobby_state/join_game
execute unless data entity @s[tag=lobby_ready] Inventory[{Slot:8b,tag:{lobby_item:1b,lobby_ready:1b}}] run function item:lobby_state/join_watch

# 清除临时物品
clear @s barrier{LockTempItem:1b}