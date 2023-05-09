scoreboard players set @s aj.mech.rig_loaded 1
execute unless score @s aj.mech.export_version = aj.mech.export_version aj.i at @s run function zzz_mech_internal:upgrade_rig
function #mech:on_load