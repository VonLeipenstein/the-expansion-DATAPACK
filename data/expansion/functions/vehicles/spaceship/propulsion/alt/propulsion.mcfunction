# increase speed while pressing W. it takes 5 seconds to get up to full speed with these parameters
execute if score .w exp.wasd matches 1 unless score .s exp.wasd matches 1 if score @s exp.speed matches -10..99 run scoreboard players add @s exp.speed 1
# reduce speed while pressing S.
execute if score .s exp.wasd matches 1 unless score .w exp.wasd matches 1 if score @s exp.speed matches 11..100 run scoreboard players remove @s exp.speed 1


# movement
execute unless score @s exp.speed matches ..10 run function expansion:vehicles/spaceship/propulsion/fly
execute if predicate expansion:dimension/zero_gravity if score @s exp.speed matches ..10 run data merge entity @s {Motion:[0.0,0.0,0.0]}

#execute if predicate expansion:nbt_checks/armor/spaceship run function expansion:vehicles/spaceship/engine_particles/spaceship
#execute if predicate expansion:nbt_checks/armor/the_boston run function expansion:vehicles/spaceship/engine_particles/the_boston
#execute if predicate expansion:nbt_checks/armor/bomber run function expansion:vehicles/spaceship/engine_particles/bomber
#execute if predicate expansion:nbt_checks/armor/zwaluw run function expansion:vehicles/spaceship/engine_particles/zwaluw

