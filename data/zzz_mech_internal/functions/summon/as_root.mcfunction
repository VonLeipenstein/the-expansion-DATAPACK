execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.mech.rig_loaded 1
scoreboard players operation @s aj.mech.export_version = aj.mech.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function zzz_mech_internal:summon/as_bone
execute if score #variant aj.i = $aj.mech.variant.default aj.id run function zzz_mech_internal:apply_variant/default_as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech.animation.walking aj.id run function zzz_mech_internal:animations/walking/apply_frame_as_root
execute if score #animation aj.i = $aj.mech.animation.walking aj.id run scoreboard players operation @s aj.mech.animation.walking.local_anim_time = #frame aj.i
execute at @s run function #mech:on_summon
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i