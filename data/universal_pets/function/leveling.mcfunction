# Universal Pets - leveling
# Converts hostile-kill deltas into pet XP and level-ups (10 kills = +1 level, cap 20).

scoreboard players operation @a up_kills_total = @s up_kills
scoreboard players operation @a up_kills_total += @s up_kills_skeleton
scoreboard players operation @a up_kills_total += @s up_kills_creeper
scoreboard players operation @a up_kills_total += @s up_kills_spider
scoreboard players operation @a up_kills_total += @s up_kills_enderman
scoreboard players operation @a up_kills_total += @s up_kills_witch
scoreboard players operation @a up_kills_total += @s up_kills_slime
scoreboard players operation @a up_kills_total += @s up_kills_guardian
scoreboard players operation @a up_kills_total += @s up_kills_phantom
scoreboard players operation @a up_kills_total += @s up_kills_raider
scoreboard players operation @a up_kills_total += @s up_kills_vindicator
scoreboard players operation @a up_kills_total += @s up_kills_evoker
scoreboard players operation @a up_kills_total += @s up_kills_hoglin
scoreboard players operation @a up_kills_total += @s up_kills_piglin_brute
scoreboard players operation @a up_kills_total += @s up_kills_blaze
scoreboard players operation @a up_kills_total += @s up_kills_ghast
scoreboard players operation @a up_kills_total += @s up_kills_magma_cube
scoreboard players operation @a up_kills_total += @s up_kills_wither_skeleton
scoreboard players operation @a up_kills_total += @s up_kills_drowned
scoreboard players operation @a up_kills_total += @s up_kills_husk
scoreboard players operation @a up_kills_total += @s up_kills_stray
scoreboard players operation @a up_kills_total += @s up_kills_shulker
scoreboard players operation @a up_kills_total += @s up_kills_silverfish

scoreboard players operation @a up_delta_kills = @s up_kills_total
scoreboard players operation @a up_delta_kills -= @s up_prev_kills
scoreboard players operation @a up_prev_kills = @s up_kills_total

execute as @a[scores={up_delta_kills=1..}] at @s run scoreboard players operation @e[tag=universal_pet,tag=up_owner_me,distance=..16,limit=1,sort=nearest] up_pet_xp += @s up_delta_kills

execute as @e[tag=universal_pet,scores={up_pet_xp=10..,up_pet_level=..19}] run scoreboard players remove @s up_pet_xp 10
execute as @e[tag=universal_pet,scores={up_pet_level=..19}] if score @s up_pet_xp matches 0..9 run scoreboard players add @s up_pet_level 1
execute as @e[tag=universal_pet,scores={up_pet_level=20..}] run scoreboard players set @s up_pet_level 20
