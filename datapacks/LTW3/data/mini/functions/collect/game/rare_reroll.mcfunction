# Rare - B
scoreboard players set $random_max mem 25
scoreboard players set $random_min mem 1
function lib:random
execute store result score $RareB CollectGoal run scoreboard players get $random mem
execute if score $RareB CollectGoal = $RareA CollectGoal run function mini:collect/game/rare_reroll