# Universal Pets - tame_apply
# Internal helper called as the owning player.

execute as @e[type=minecraft:cow,tag=!universal_pet,distance=..3,limit=1,sort=nearest] run function universal_pets:tame_target
execute unless entity @e[type=minecraft:cow,tag=!universal_pet,distance=..3,limit=1,sort=nearest] as @e[type=minecraft:pig,tag=!universal_pet,distance=..3,limit=1,sort=nearest] run function universal_pets:tame_target
execute unless entity @e[type=minecraft:cow,tag=!universal_pet,distance=..3,limit=1,sort=nearest] unless entity @e[type=minecraft:pig,tag=!universal_pet,distance=..3,limit=1,sort=nearest] as @e[type=minecraft:sheep,tag=!universal_pet,distance=..3,limit=1,sort=nearest] run function universal_pets:tame_target
execute as @e[type=#universal_pets:eligible,tag=!universal_pet,distance=..3,limit=1,sort=nearest] run function universal_pets:tame_target
