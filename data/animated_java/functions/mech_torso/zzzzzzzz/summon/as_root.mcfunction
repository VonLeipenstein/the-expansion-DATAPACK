execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.mech_torso.rig_loaded 1
scoreboard players operation @s aj.mech_torso.export_version = aj.mech_torso.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:mech_torso/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.mech_torso.variant.default aj.id run function animated_java:mech_torso/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.mech_torso.variant.drill_left aj.id run function animated_java:mech_torso/zzzzzzzz/apply_variant/drill_left/as_root
execute if score #variant aj.i = $aj.mech_torso.variant.drill_right aj.id run function animated_java:mech_torso/zzzzzzzz/apply_variant/drill_right/as_root
execute if score #variant aj.i = $aj.mech_torso.variant.empty_left aj.id run function animated_java:mech_torso/zzzzzzzz/apply_variant/empty_left/as_root
execute if score #variant aj.i = $aj.mech_torso.variant.empty_right aj.id run function animated_java:mech_torso/zzzzzzzz/apply_variant/empty_right/as_root
execute if score #variant aj.i = $aj.mech_torso.variant.gatling_left aj.id run function animated_java:mech_torso/zzzzzzzz/apply_variant/gatling_left/as_root
execute if score #variant aj.i = $aj.mech_torso.variant.gatling_right aj.id run function animated_java:mech_torso/zzzzzzzz/apply_variant/gatling_right/as_root
execute if score #variant aj.i = $aj.mech_torso.variant.rocket_left aj.id run function animated_java:mech_torso/zzzzzzzz/apply_variant/rocket_left/as_root
execute if score #variant aj.i = $aj.mech_torso.variant.rocket_right aj.id run function animated_java:mech_torso/zzzzzzzz/apply_variant/rocket_right/as_root
execute if score #variant aj.i = $aj.mech_torso.variant.sword_left aj.id run function animated_java:mech_torso/zzzzzzzz/apply_variant/sword_left/as_root
execute if score #variant aj.i = $aj.mech_torso.variant.sword_right aj.id run function animated_java:mech_torso/zzzzzzzz/apply_variant/sword_right/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.walking_body aj.id run function animated_java:mech_torso/zzzzzzzz/animations/walking_body/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.walking_body aj.id run scoreboard players operation @s aj.mech_torso.animation.walking_body.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.walking_left aj.id run function animated_java:mech_torso/zzzzzzzz/animations/walking_left/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.walking_left aj.id run scoreboard players operation @s aj.mech_torso.animation.walking_left.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.walking_right aj.id run function animated_java:mech_torso/zzzzzzzz/animations/walking_right/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.walking_right aj.id run scoreboard players operation @s aj.mech_torso.animation.walking_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.walking_backwards_body aj.id run function animated_java:mech_torso/zzzzzzzz/animations/walking_backwards_body/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.walking_backwards_body aj.id run scoreboard players operation @s aj.mech_torso.animation.walking_backwards_body.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.walking_backwards_left aj.id run function animated_java:mech_torso/zzzzzzzz/animations/walking_backwards_left/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.walking_backwards_left aj.id run scoreboard players operation @s aj.mech_torso.animation.walking_backwards_left.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.walking_backwards_right aj.id run function animated_java:mech_torso/zzzzzzzz/animations/walking_backwards_right/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.walking_backwards_right aj.id run scoreboard players operation @s aj.mech_torso.animation.walking_backwards_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.idle aj.id run function animated_java:mech_torso/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.idle aj.id run scoreboard players operation @s aj.mech_torso.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.sword_swing_l_old aj.id run function animated_java:mech_torso/zzzzzzzz/animations/sword_swing_l_old/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.sword_swing_l_old aj.id run scoreboard players operation @s aj.mech_torso.animation.sword_swing_l_old.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.sword_swing_r_old aj.id run function animated_java:mech_torso/zzzzzzzz/animations/sword_swing_r_old/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.sword_swing_r_old aj.id run scoreboard players operation @s aj.mech_torso.animation.sword_swing_r_old.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.rocket_shoot_r aj.id run function animated_java:mech_torso/zzzzzzzz/animations/rocket_shoot_r/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.rocket_shoot_r aj.id run scoreboard players operation @s aj.mech_torso.animation.rocket_shoot_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.rocket_shoot_l aj.id run function animated_java:mech_torso/zzzzzzzz/animations/rocket_shoot_l/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.rocket_shoot_l aj.id run scoreboard players operation @s aj.mech_torso.animation.rocket_shoot_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.rocket_shoot_combo aj.id run function animated_java:mech_torso/zzzzzzzz/animations/rocket_shoot_combo/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.rocket_shoot_combo aj.id run scoreboard players operation @s aj.mech_torso.animation.rocket_shoot_combo.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.sword_swing_r aj.id run function animated_java:mech_torso/zzzzzzzz/animations/sword_swing_r/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.sword_swing_r aj.id run scoreboard players operation @s aj.mech_torso.animation.sword_swing_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.sword_swing_l aj.id run function animated_java:mech_torso/zzzzzzzz/animations/sword_swing_l/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.sword_swing_l aj.id run scoreboard players operation @s aj.mech_torso.animation.sword_swing_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.sword_swing_combo aj.id run function animated_java:mech_torso/zzzzzzzz/animations/sword_swing_combo/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.sword_swing_combo aj.id run scoreboard players operation @s aj.mech_torso.animation.sword_swing_combo.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_start_l aj.id run function animated_java:mech_torso/zzzzzzzz/animations/gatling_start_l/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_start_l aj.id run scoreboard players operation @s aj.mech_torso.animation.gatling_start_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_shooting_l aj.id run function animated_java:mech_torso/zzzzzzzz/animations/gatling_shooting_l/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_shooting_l aj.id run scoreboard players operation @s aj.mech_torso.animation.gatling_shooting_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_stop_l aj.id run function animated_java:mech_torso/zzzzzzzz/animations/gatling_stop_l/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_stop_l aj.id run scoreboard players operation @s aj.mech_torso.animation.gatling_stop_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_start_r aj.id run function animated_java:mech_torso/zzzzzzzz/animations/gatling_start_r/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_start_r aj.id run scoreboard players operation @s aj.mech_torso.animation.gatling_start_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_shooting_r aj.id run function animated_java:mech_torso/zzzzzzzz/animations/gatling_shooting_r/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_shooting_r aj.id run scoreboard players operation @s aj.mech_torso.animation.gatling_shooting_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_stop_r aj.id run function animated_java:mech_torso/zzzzzzzz/animations/gatling_stop_r/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.gatling_stop_r aj.id run scoreboard players operation @s aj.mech_torso.animation.gatling_stop_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.drill_start_l aj.id run function animated_java:mech_torso/zzzzzzzz/animations/drill_start_l/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.drill_start_l aj.id run scoreboard players operation @s aj.mech_torso.animation.drill_start_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.drill_drill_l aj.id run function animated_java:mech_torso/zzzzzzzz/animations/drill_drill_l/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.drill_drill_l aj.id run scoreboard players operation @s aj.mech_torso.animation.drill_drill_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.drill_stop_l aj.id run function animated_java:mech_torso/zzzzzzzz/animations/drill_stop_l/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.drill_stop_l aj.id run scoreboard players operation @s aj.mech_torso.animation.drill_stop_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.drill_start_r aj.id run function animated_java:mech_torso/zzzzzzzz/animations/drill_start_r/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.drill_start_r aj.id run scoreboard players operation @s aj.mech_torso.animation.drill_start_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.drill_drill_r aj.id run function animated_java:mech_torso/zzzzzzzz/animations/drill_drill_r/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.drill_drill_r aj.id run scoreboard players operation @s aj.mech_torso.animation.drill_drill_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.drill_stop_r aj.id run function animated_java:mech_torso/zzzzzzzz/animations/drill_stop_r/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.drill_stop_r aj.id run scoreboard players operation @s aj.mech_torso.animation.drill_stop_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.empty_combo aj.id run function animated_java:mech_torso/zzzzzzzz/animations/empty_combo/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.empty_combo aj.id run scoreboard players operation @s aj.mech_torso.animation.empty_combo.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.empty_shield aj.id run function animated_java:mech_torso/zzzzzzzz/animations/empty_shield/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.empty_shield aj.id run scoreboard players operation @s aj.mech_torso.animation.empty_shield.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.empty_punch1_l aj.id run function animated_java:mech_torso/zzzzzzzz/animations/empty_punch1_l/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.empty_punch1_l aj.id run scoreboard players operation @s aj.mech_torso.animation.empty_punch1_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.mech_torso.animation.empty_punch1_r aj.id run function animated_java:mech_torso/zzzzzzzz/animations/empty_punch1_r/apply_frame_as_root
execute if score #animation aj.i = $aj.mech_torso.animation.empty_punch1_r aj.id run scoreboard players operation @s aj.mech_torso.animation.empty_punch1_r.local_anim_time = #frame aj.i
execute at @s run function #animated_java:mech_torso/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i