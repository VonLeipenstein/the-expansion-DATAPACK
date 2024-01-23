execute if entity @s[tag=exp.mech.action.swing] run function expansion:vehicles/mech/actions/lefthand/swing/init
execute if entity @s[tag=exp.mech.action.shoot] run function expansion:vehicles/mech/actions/lefthand/shoot/init

tag @s remove exp.mech.action.left

tag @s add exp.mech.tick.left