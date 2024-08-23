tag @p add exp.inside_check
execute if entity @s[tag=exp.pressurized] run playsound block.lava.extinguish block @p[tag=!exp.has_oxygen] ~ ~ ~
execute if entity @s[tag=exp.pressurized] run tag @p[tag=!exp.has_oxygen] add exp.has_oxygen
