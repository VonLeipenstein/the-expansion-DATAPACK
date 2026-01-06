execute unless predicate expansion:periodic/30 run return fail

title @s subtitle {text:" "}
execute unless predicate expansion:armor/all run title @s subtitle {translate:"exp_screentxt_lowoxygen_subtitle_nosuit"}
execute if predicate expansion:armor/all run title @s subtitle {translate:"exp_screentxt_lowoxygen_subtitle_tankdepleted"}
execute if predicate expansion:armor/all unless data entity @s equipment.chest.components."minecraft:custom_data".ModStorage[{components:{"minecraft:custom_data":{exp_item:{name:"oxygen_tank"}}}}] run title @s subtitle {translate:"exp_screentxt_lowoxygen_subtitle_notank"}
execute if predicate expansion:armor/all if entity @s[tag=exp.inside_pressurized_space] run title @s subtitle {translate:"exp_screentxt_lowoxygen_subtitle_insuit"}
execute if predicate expansion:armor/all unless predicate expansion:dimension/oxygen_absent run title @s subtitle {translate:"exp_screentxt_lowoxygen_subtitle_insuit"}
title @s title {translate:"exp_screentxt_lowoxygen_title",color:"red",bold:true}
