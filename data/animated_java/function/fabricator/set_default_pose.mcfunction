# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.fabricator.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'fabricator', 'function_path': 'animated_java:fabricator/set_default_pose'}
execute on passengers if entity @s[tag=aj.fabricator.bone.arm_z] run data merge entity @s {transformation: [-1.0208333333333333f,0f,1.2501602741295897e-16f,0f,0f,1.0208333333333333f,0f,-1.6625f,-1.2501602741295897e-16f,0f,-1.0208333333333333f,0f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.fabricator.bone.nozzle] run data merge entity @s {transformation: [-1.0833333333333333f,0f,1.3267006990762992e-16f,7.654042494670958e-18f,0f,1.0833333333333333f,0f,-1.6625f,-1.3267006990762992e-16f,0f,-1.0833333333333333f,-0.0625f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.fabricator.bone.arm_x] run data merge entity @s {transformation: [-1.0208333333333333f,0f,1.2501602741295897e-16f,0f,0f,1.0208333333333333f,0f,-1.6625f,-1.2501602741295897e-16f,0f,-1.0208333333333333f,0f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.fabricator.bone.frame] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.31250062500000003f,0f,1f,0f,-0.1625000000000001f,-1.2246467991473532e-16f,0f,-1f,0.33080499999999996f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.fabricator.bone.product] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,-1.975f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.fabricator.bone.bone2] run data merge entity @s {transformation: [-1.3758333333333335f,0f,1.6849098878269002e-16f,0.004464285714285768f,0f,1.3758333333333335f,0f,-0.4797341214137589f,-1.6849098878269002e-16f,0f,-1.3758333333333335f,-0.2560581687191594f,0f,0f,0f,1f], start_interpolation: -1}