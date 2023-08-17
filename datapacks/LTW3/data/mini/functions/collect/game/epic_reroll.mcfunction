# Epic - B
scoreboard players set $random_max mem 25
scoreboard players set $random_min mem 1
function lib:random
execute store result score $EpicB CollectGoal run scoreboard players get $random mem
execute if score $EpicB CollectGoal = $EpicA CollectGoal run function mini:collect/game/epic_reroll