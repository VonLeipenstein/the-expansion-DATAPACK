# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.mech_legs.root] run return 0
execute unless score @s aj.is_rig_loaded matches 1 run function #animated_java:global/root/on_load
function #animated_java:mech_legs/as_root/pre_tick
execute if entity @s[tag=aj.mech_legs.animation.walking.playing] run function animated_java:mech_legs/animations/walking/zzz/on_tick
execute if entity @s[tag=aj.mech_legs.animation.walking_backwards.playing] run function animated_java:mech_legs/animations/walking_backwards/zzz/on_tick
execute if entity @s[tag=aj.mech_legs.animation.idle.playing] run function animated_java:mech_legs/animations/idle/zzz/on_tick
execute on passengers if entity @s[tag=aj.mech_legs.data] run function animated_java:mech_legs/root/zzz/1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function #animated_java:mech_legs/as_root/post_tick