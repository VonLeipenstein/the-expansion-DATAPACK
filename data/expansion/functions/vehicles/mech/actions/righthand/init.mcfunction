execute if entity @s[tag=exp.mech.action.swing] run function expansion:vehicles/mech/actions/righthand/swing/init
execute if entity @s[tag=exp.mech.action.shoot] run function expansion:vehicles/mech/actions/righthand/shoot/init

tag @s remove exp.mech.action.right

tag @s add exp.mech.tick.right