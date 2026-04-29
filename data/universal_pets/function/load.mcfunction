# Universal Pets - load
# Initializes scoreboards used by player progression and pet levels.

scoreboard objectives add up_kills minecraft.killed:minecraft.zombie
scoreboard objectives add up_kills_skeleton minecraft.killed:minecraft.skeleton
scoreboard objectives add up_kills_creeper minecraft.killed:minecraft.creeper
scoreboard objectives add up_kills_spider minecraft.killed:minecraft.spider
scoreboard objectives add up_kills_enderman minecraft.killed:minecraft.enderman
scoreboard objectives add up_kills_witch minecraft.killed:minecraft.witch
scoreboard objectives add up_kills_slime minecraft.killed:minecraft.slime
scoreboard objectives add up_kills_guardian minecraft.killed:minecraft.guardian
scoreboard objectives add up_kills_phantom minecraft.killed:minecraft.phantom
scoreboard objectives add up_kills_raider minecraft.killed:minecraft.pillager
scoreboard objectives add up_kills_vindicator minecraft.killed:minecraft.vindicator
scoreboard objectives add up_kills_evoker minecraft.killed:minecraft.evoker
scoreboard objectives add up_kills_hoglin minecraft.killed:minecraft.hoglin
scoreboard objectives add up_kills_piglin_brute minecraft.killed:minecraft.piglin_brute
scoreboard objectives add up_kills_blaze minecraft.killed:minecraft.blaze
scoreboard objectives add up_kills_ghast minecraft.killed:minecraft.ghast
scoreboard objectives add up_kills_magma_cube minecraft.killed:minecraft.magma_cube
scoreboard objectives add up_kills_wither_skeleton minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add up_kills_drowned minecraft.killed:minecraft.drowned
scoreboard objectives add up_kills_husk minecraft.killed:minecraft.husk
scoreboard objectives add up_kills_stray minecraft.killed:minecraft.stray
scoreboard objectives add up_kills_shulker minecraft.killed:minecraft.shulker
scoreboard objectives add up_kills_silverfish minecraft.killed:minecraft.silverfish
scoreboard objectives add up_kills_total dummy

scoreboard objectives add up_prev_kills dummy
scoreboard objectives add up_delta_kills dummy
scoreboard objectives add up_pet_xp dummy
scoreboard objectives add up_pet_level dummy
scoreboard objectives add up_pet_owner_id dummy

scoreboard objectives add up_tick dummy
scoreboard players set #tick up_tick 0

tellraw @a [{"text":"[Universal Pets] ","color":"gold"},{"text":"Datapack loaded.","color":"yellow"}]
