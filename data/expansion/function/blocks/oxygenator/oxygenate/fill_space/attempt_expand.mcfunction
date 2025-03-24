execute unless entity @s[tag=exp.checked_forward] positioned ~ ~ ~1 if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_forward
execute unless entity @s[tag=exp.checked_backward] positioned ~ ~ ~-1 if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_backward

execute unless entity @s[tag=exp.checked_up] positioned ~ ~1 ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_up
execute unless entity @s[tag=exp.checked_down] positioned ~ ~-1 ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_down

execute unless entity @s[tag=exp.checked_right] positioned ~1 ~ ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_right
execute unless entity @s[tag=exp.checked_left] positioned ~-1 ~ ~ if function expansion:blocks/oxygenator/oxygenate/fill_space/valid_block if function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker run return run tag @s add exp.checked_left

return fail