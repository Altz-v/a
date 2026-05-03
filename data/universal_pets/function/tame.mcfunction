# Universal Pets - tame
# Detect players holding Pet Cookie and convert one nearby compatible passive mob.
# Trigger: player sneaks with Pet Cookie in main hand (prevents accidental taming).

execute as @a[nbt={OnGround:1b,Sneaking:1b,SelectedItem:{id:"minecraft:cookie",components:{"minecraft:custom_data":{universal_pets:{pet_cookie:1}}}}}] at @s run execute unless entity @e[tag=universal_pet,distance=..3,limit=1,sort=nearest] run function universal_pets:tame_apply
