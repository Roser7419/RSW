#as item
function item:bonus_item/gameparty/wrap/all
team join blue @e[tag=new_item_]
tag @e[tag=new_item_] add item_green
tp @e[tag=new_item_] ~ ~ ~
tag @e[tag=new_item_] remove new_item_
