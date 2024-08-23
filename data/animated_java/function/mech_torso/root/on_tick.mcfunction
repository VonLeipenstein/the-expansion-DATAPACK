# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.mech_torso.root] run return 0
execute unless score @s aj.is_rig_loaded matches 1 run function #animated_java:global/root/on_load
function #animated_java:mech_torso/as_root/pre_tick
execute if entity @s[tag=aj.mech_torso.animation.init.playing] run function animated_java:mech_torso/animations/init/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.idle.playing] run function animated_java:mech_torso/animations/idle/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.walking_body.playing] run function animated_java:mech_torso/animations/walking_body/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.walking_left.playing] run function animated_java:mech_torso/animations/walking_left/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.walking_right.playing] run function animated_java:mech_torso/animations/walking_right/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.walking_backwards_body.playing] run function animated_java:mech_torso/animations/walking_backwards_body/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.walking_backwards_left.playing] run function animated_java:mech_torso/animations/walking_backwards_left/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.walking_backwards_right.playing] run function animated_java:mech_torso/animations/walking_backwards_right/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.rocket_shoot_r.playing] run function animated_java:mech_torso/animations/rocket_shoot_r/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.rocket_shoot_l.playing] run function animated_java:mech_torso/animations/rocket_shoot_l/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.sword_swing_r.playing] run function animated_java:mech_torso/animations/sword_swing_r/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.sword_swing_l.playing] run function animated_java:mech_torso/animations/sword_swing_l/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.gatling_start_l.playing] run function animated_java:mech_torso/animations/gatling_start_l/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.gatling_shooting_l.playing] run function animated_java:mech_torso/animations/gatling_shooting_l/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.gatling_stop_l.playing] run function animated_java:mech_torso/animations/gatling_stop_l/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.gatling_start_r.playing] run function animated_java:mech_torso/animations/gatling_start_r/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.gatling_shooting_r.playing] run function animated_java:mech_torso/animations/gatling_shooting_r/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.gatling_stop_r.playing] run function animated_java:mech_torso/animations/gatling_stop_r/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.drill_start_l.playing] run function animated_java:mech_torso/animations/drill_start_l/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.drill_drill_l.playing] run function animated_java:mech_torso/animations/drill_drill_l/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.drill_stop_l.playing] run function animated_java:mech_torso/animations/drill_stop_l/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.drill_start_r.playing] run function animated_java:mech_torso/animations/drill_start_r/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.drill_drill_r.playing] run function animated_java:mech_torso/animations/drill_drill_r/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.drill_stop_r.playing] run function animated_java:mech_torso/animations/drill_stop_r/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.empty_combo.playing] run function animated_java:mech_torso/animations/empty_combo/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.empty_shield.playing] run function animated_java:mech_torso/animations/empty_shield/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.empty_punch1_l.playing] run function animated_java:mech_torso/animations/empty_punch1_l/zzz/on_tick
execute if entity @s[tag=aj.mech_torso.animation.empty_punch1_r.playing] run function animated_java:mech_torso/animations/empty_punch1_r/zzz/on_tick
execute on passengers if entity @s[tag=aj.mech_torso.data] run function animated_java:mech_torso/root/zzz/1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function #animated_java:mech_torso/as_root/post_tick