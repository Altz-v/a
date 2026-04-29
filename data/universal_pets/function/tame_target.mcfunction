# Universal Pets - tame_target
# Called as target mob, positioned at owner player with @p[distance=..3,limit=1].

tag @s add universal_pet
scoreboard players set @s up_pet_level 1
scoreboard players set @s up_pet_xp 0

tag @s add up_owner_pending
execute as @p[distance=..3,limit=1,sort=nearest] run scoreboard players add @s up_pet_owner_id 1
execute as @p[distance=..3,limit=1,sort=nearest] run tag @e[tag=up_owner_pending,limit=1,sort=nearest,distance=..6] add up_owner
execute as @p[distance=..3,limit=1,sort=nearest] run tag @e[tag=up_owner_pending,limit=1,sort=nearest,distance=..6] add up_owner_me

tag @s remove up_owner_pending

data merge entity @s {PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Universal Pet","color":"aqua","italic":false}'}
particle minecraft:heart ~ ~1 ~ 0.4 0.4 0.4 0.05 8 force
playsound minecraft:entity.player.levelup player @p[distance=..8,limit=1] ~ ~ ~ 0.6 1.4

execute as @p[distance=..3,limit=1,sort=nearest] if items entity @s weapon.mainhand minecraft:cookie[minecraft:custom_data~{universal_pets:{pet_cookie:1}}] run clear @s minecraft:cookie[minecraft:custom_data~{universal_pets:{pet_cookie:1}}] 1
