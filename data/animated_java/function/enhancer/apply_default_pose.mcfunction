# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.enhancer.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'enhancer', 'function_path': 'animated_java:enhancer/apply_default_pose'}
execute on passengers if entity @s[tag=aj.enhancer.bone.bone2] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,7.654042494670958e-18f,0f,1f,0f,0.25f,-1.2246467991473532e-16f,0f,-1f,-0.0625f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.enhancer.bone.scanner] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,0.4583333333333333f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.enhancer.bone.bone] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.49999999999999994f,0f,1f,0f,0f,-1.2246467991473532e-16f,0f,-1f,0.5000000000000001f,0f,0f,0f,1f], start_interpolation: 0}