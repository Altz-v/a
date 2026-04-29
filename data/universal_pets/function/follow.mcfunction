# Universal Pets - follow
# Pets walk toward nearest player with owner marker and teleport if too far.

execute as @e[tag=universal_pet,tag=up_owner_me] at @s unless entity @p[distance=..12,limit=1] run tp @s ^ ^ ^0.8 facing entity @p[limit=1,sort=nearest]
execute as @e[tag=universal_pet,tag=up_owner_me] at @s unless entity @p[distance=..30,limit=1] run tp @s @p[limit=1,sort=nearest]
