scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.assembler.export_version dummy
scoreboard objectives add aj.assembler.rig_loaded dummy
scoreboard objectives add aj.assembler.animation.ring_loop.local_anim_time dummy
scoreboard objectives add aj.assembler.animation.ring_loop.loop_mode dummy
scoreboard players set $aj.assembler.animation.ring_loop aj.id 0
scoreboard players set $aj.assembler.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.assembler.export_version aj.i -710020188
scoreboard players reset * aj.assembler.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.assembler.root] run function animated_java:assembler/zzzzzzzz/on_load