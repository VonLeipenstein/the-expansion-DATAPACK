scoreboard players add @s exp.counter_1 2
execute if score @s exp.counter_1 matches 3..4 if score @s exp.mech_left_id = @s exp.mech_right_id run tag @s add exp.mech.action.combo

tag @s[scores={exp.mech_left_id=1,exp.counter_1=..2}] add exp.mech.action.swing
tag @s[scores={exp.mech_left_id=2,exp.counter_1=..2}] add exp.mech.action.shoot
tag @s[scores={exp.mech_left_id=3,exp.counter_1=..2}] add exp.mech.action.drill

tag @s[tag=!exp.mech.action.combo,scores={exp.counter_1=..2}] add exp.mech.action.left
