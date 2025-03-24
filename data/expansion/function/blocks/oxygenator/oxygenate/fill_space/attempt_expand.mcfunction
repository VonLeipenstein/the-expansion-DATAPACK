# run functions 1 block further in 5 directions if the block is air and if there isn't a marker already

execute unless entity @s[tag=exp.checked_forward] at @s positioned ~ ~ ~1 if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_forward
execute unless entity @s[tag=exp.checked_backward] at @s positioned ~ ~ ~-1 if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_backward

execute unless entity @s[tag=exp.checked_up] at @s positioned ~ ~1 ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_up
execute unless entity @s[tag=exp.checked_down] at @s positioned ~ ~-1 ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_down

execute unless entity @s[tag=exp.checked_right] at @s positioned ~1 ~ ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_right
execute unless entity @s[tag=exp.checked_left] at @s positioned ~-1 ~ ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_left

return fail