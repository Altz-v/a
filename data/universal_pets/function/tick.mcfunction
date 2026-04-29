# Universal Pets - tick entry point
# Small scheduler to keep command count lower every tick.

scoreboard players add #tick up_tick 1

function universal_pets:tame
execute if score #tick up_tick matches 1 run function universal_pets:follow
execute if score #tick up_tick matches 2 run function universal_pets:leveling
execute if score #tick up_tick matches 3 run function universal_pets:buffs
execute if score #tick up_tick matches 4.. run scoreboard players set #tick up_tick 0
