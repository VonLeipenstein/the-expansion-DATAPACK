tag @s add exp.control_segment

summon camel ~ ~ ~ {Tags:["exp.offset_camel","exp.offset_camel.new"],active_effects:[{id:"invisibility",duration:-1,show_particles:false}],NoAI:1b,Invulnerable:1b,attributes:[{id:"minecraft:scale",base:0.5}],Passengers:[{id:"interaction",width:0,height:-1,Passengers:[{id:"armor_stand",active_effects:[{id:"invisibility",duration:-1}],Invisible:1b,Marker:1b}]}]}

ride @n[tag=exp.offset_camel.new,distance=..0.1] mount @s

execute rotated as @s on passengers if entity @s[tag=exp.offset_camel] run rotate @s 180 ~
execute on passengers if entity @s[tag=exp.offset_camel] run tag @s remove exp.offset_camel.new