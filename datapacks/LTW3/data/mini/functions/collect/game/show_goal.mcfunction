# 已经收集到的以灰色删除线表示
tellraw @s "\n\n收集目标清单 » 放置到副手即可提交\n"
execute if entity @s[tag=!common_collected] run tellraw @s {"selector":"@e[tag=collect_common]"}
execute if entity @s[tag=common_collected] run tellraw @s {"selector":"@e[tag=collect_common]","color": "gray","strikethrough": true}
execute if entity @s[tag=!uncommon_collected] run tellraw @s {"selector":"@e[tag=collect_uncommon]"}
execute if entity @s[tag=uncommon_collected] run tellraw @s {"selector":"@e[tag=collect_uncommon]","color": "gray","strikethrough": true}
execute if entity @s[tag=!rare_a_collected] run tellraw @s {"selector":"@e[tag=collect_rare_a]"}
execute if entity @s[tag=rare_a_collected] run tellraw @s {"selector":"@e[tag=collect_rare_a]","color": "gray","strikethrough": true}
execute if entity @s[tag=!rare_b_collected] run tellraw @s {"selector":"@e[tag=collect_rare_b]"}
execute if entity @s[tag=rare_b_collected] run tellraw @s {"selector":"@e[tag=collect_rare_b]","color": "gray","strikethrough": true}
execute if entity @s[tag=!epic_a_collected] run tellraw @s {"selector":"@e[tag=collect_epic_a]"}
execute if entity @s[tag=epic_a_collected] run tellraw @s {"selector":"@e[tag=collect_epic_a]","color": "gray","strikethrough": true}
execute if entity @s[tag=!epic_b_collected] run tellraw @s {"selector":"@e[tag=collect_epic_b]"}
execute if entity @s[tag=epic_b_collected] run tellraw @s {"selector":"@e[tag=collect_epic_b]","color": "gray","strikethrough": true}
execute if entity @s[tag=!legendary_collected] run tellraw @s {"selector":"@e[tag=collect_legendary]"}
execute if entity @s[tag=legendary_collected] run tellraw @s {"selector":"@e[tag=collect_legendary]","color": "gray","strikethrough": true}
execute if entity @s[tag=!mythic_collected] run tellraw @s {"selector":"@e[tag=collect_mythic]"}
execute if entity @s[tag=mythic_collected] run tellraw @s {"selector":"@e[tag=collect_mythic]","color": "gray","strikethrough": true}