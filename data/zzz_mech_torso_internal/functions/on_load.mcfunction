scoreboard players set @s aj.mech_torso.rig_loaded 1
execute unless score @s aj.mech_torso.export_version = aj.mech_torso.export_version aj.i at @s run function zzz_mech_torso_internal:upgrade_rig
function #mech_torso:on_load