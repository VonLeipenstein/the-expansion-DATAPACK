scoreboard players remove @s[scores={exp.gravity_delay=-10}] exp.gravity_delay 1
attribute @s[scores={exp.gravity_delay=0}] minecraft:generic.knockback_resistance modifier add 69-34f-243a-f3e-34b "levitation_fix" 10 add 

effect give @s[scores={exp.gravity_delay=0}] levitation 1 255 true
effect clear @s[scores={exp.gravity_delay=-5}] levitation
effect give @s[scores={exp.gravity_delay=-5}] levitation 1 254 true
effect clear @s[scores={exp.gravity_delay=-10}] levitation
tp @s[scores={exp.gravity_delay=-10}] ~ ~ ~
attribute @s[scores={exp.gravity_delay=-10}] minecraft:generic.knockback_resistance modifier remove 69-34f-243a-f3e-34b
