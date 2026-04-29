# Universal Pets - buffs
# Applies tiered buffs to owner if pet is nearby.

execute as @a at @s if entity @e[tag=universal_pet,tag=up_owner_me,distance=..12,scores={up_pet_level=1..4},limit=1] run effect give @s minecraft:speed 4 0 true

execute as @a at @s if entity @e[tag=universal_pet,tag=up_owner_me,distance=..12,scores={up_pet_level=5..9},limit=1] run effect give @s minecraft:speed 4 0 true
execute as @a at @s if entity @e[tag=universal_pet,tag=up_owner_me,distance=..12,scores={up_pet_level=5..9},limit=1] run effect give @s minecraft:resistance 4 0 true

execute as @a at @s if entity @e[tag=universal_pet,tag=up_owner_me,distance=..12,scores={up_pet_level=10..14},limit=1] run effect give @s minecraft:speed 4 1 true
execute as @a at @s if entity @e[tag=universal_pet,tag=up_owner_me,distance=..12,scores={up_pet_level=10..14},limit=1] run effect give @s minecraft:resistance 4 0 true

execute as @a at @s if entity @e[tag=universal_pet,tag=up_owner_me,distance=..12,scores={up_pet_level=15..20},limit=1] run effect give @s minecraft:speed 4 1 true
execute as @a at @s if entity @e[tag=universal_pet,tag=up_owner_me,distance=..12,scores={up_pet_level=15..20},limit=1] run effect give @s minecraft:resistance 4 1 true
execute as @a at @s if entity @e[tag=universal_pet,tag=up_owner_me,distance=..12,scores={up_pet_level=15..20},limit=1] run effect give @s minecraft:regeneration 4 0 true
