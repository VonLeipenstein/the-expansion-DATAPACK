execute if entity @s[tag=exp.mech.action.swing] run function expansion:vehicles/mech/actions/combo/swords/init
execute if entity @s[tag=exp.mech.action.shoot] run function expansion:vehicles/mech/actions/combo/blasters/init

tag @s remove exp.mech.action.combo
tag @s remove exp.mech.action.left
tag @s remove exp.mech.action.right

tag @s add exp.mech.tick.combo