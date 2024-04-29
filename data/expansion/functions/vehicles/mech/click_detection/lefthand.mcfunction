# detect combo's - players clicking left and right and the same time
scoreboard players add @s exp.counter_1 2

tag @s[tag=exp.mech.action.left,scores={exp.mech_left_dur=1..}] add exp.mech.action.left.stop

tag @s[tag=!exp.mech.action.combo] add exp.mech.action.left

