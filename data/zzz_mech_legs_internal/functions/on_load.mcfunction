scoreboard players set @s aj.mech_legs.rig_loaded 1
execute unless score @s aj.mech_legs.export_version = aj.mech_legs.export_version aj.i at @s run function zzz_mech_legs_internal:upgrade_rig
function #mech_legs:on_load