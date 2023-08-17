# 清理物品
clear @s written_book{game_item:1b}

# 返还物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

# 设置最后一格的物品
item replace entity @s hotbar.8 with written_book{game_item:1b,display:{Name:'[{"text":"收集清单","color":"white","italic":false}]',Lore:['[{"text":"打开这本书来浏览收集目标！","italic":false,"color":"gray"}]']},pages:['[{"text":"收集目标清单 »\\n放置到副手即可提交\\n\\n"},{"selector":"@e[tag=collect_common]"},{"text":"\\n"},{"selector":"@e[tag=collect_uncommon]"},{"text":"\\n"},{"selector":"@e[tag=collect_rare_a]"},{"text":"\\n"},{"selector":"@e[tag=collect_rare_b]"},{"text":"\\n"},{"selector":"@e[tag=collect_epic_a]"},{"text":"\\n"},{"selector":"@e[tag=collect_epic_b]"},{"text":"\\n"},{"selector":"@e[tag=collect_legendary]"},{"text":"\\n"},{"selector":"@e[tag=collect_mythic]"}]'],title:"List",author:"The RSW Game",resolved:false,HideFlags:63}