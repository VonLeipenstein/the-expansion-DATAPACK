execute unless entity @s[tag=exp.defeated_mech] on passengers on passengers if entity @s[tag=exp.mech_seat] on passengers run function expansion:vehicles/mech/main

effect give @s invisibility 1 1 true
item replace entity @s weapon.mainhand with air