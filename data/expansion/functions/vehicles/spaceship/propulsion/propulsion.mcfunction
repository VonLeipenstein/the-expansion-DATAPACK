# increase speed while pressing W.
execute if score .w exp.wasd matches 1 unless score .s exp.wasd matches 1 if score @s exp.speed matches -10..99 run scoreboard players add @s exp.speed 1
# reduce speed while pressing S.
execute if score .s exp.wasd matches 1 unless score .w exp.wasd matches 1 if score @s exp.speed matches 11..100 run scoreboard players remove @s exp.speed 1

# incorporate the speed mod into the speed. 
scoreboard players operation @s exp.counter_1 = @s exp.delay
scoreboard players operation @s exp.counter_1 *= @s exp.speed
scoreboard players operation @s exp.counter_1 /= #10 exp.const

# movement
execute unless score @s exp.speed matches ..10 run function expansion:vehicles/spaceship/propulsion/fly

# update the speed percentage when the speed changes
scoreboard players operation .w exp.wasd += .s exp.wasd
execute if score .w exp.wasd matches 1.. run function expansion:vehicles/spaceship/propulsion/speed_percentage

#execute if predicate expansion:nbt_checks/armor/spaceship run function expansion:vehicles/spaceship/engine_particles/spaceship
#execute if predicate expansion:nbt_checks/armor/the_boston run function expansion:vehicles/spaceship/engine_particles/the_boston
#execute if predicate expansion:nbt_checks/armor/bomber run function expansion:vehicles/spaceship/engine_particles/bomber
#execute if predicate expansion:nbt_checks/armor/zwaluw run function expansion:vehicles/spaceship/engine_particles/zwaluw

