# increase speed while pressing W.
execute on passengers on passengers if entity @s[type=player] if predicate expansion:input/forward unless predicate expansion:input/backward on vehicle on vehicle if score @s exp.speed matches -10..99 run scoreboard players add @s exp.speed 1
# reduce speed while pressing S.
execute on passengers on passengers if entity @s[type=player] if predicate expansion:input/backward unless predicate expansion:input/forward on vehicle on vehicle if score @s exp.speed matches 11..100 run scoreboard players remove @s exp.speed 1

# movement
execute unless score @s exp.speed matches ..10 run function expansion:vehicles/spaceship/propulsion/fly

# update the speed percentage when the speed changes
scoreboard players set #offset exp.math 10
scoreboard players set #total exp.math 90
execute on passengers on passengers if entity @s[type=player] if predicate expansion:input/any on vehicle on vehicle store result score #temp exp.speed run function expansion:vehicles/spaceship/propulsion/speed_percentage

# fuel functions, exp.value decides the interval at which fuel is removed. this can be changed by a fuel upgrade
function expansion:vehicles/spaceship/fuel/use_fuel

# make the correct particles run depending on the skin
execute on passengers if predicate expansion:nbt_checks/armor/spaceship on vehicle at @s anchored eyes run function expansion:vehicles/spaceship/engine_particles/spaceship
execute on passengers if predicate expansion:nbt_checks/armor/zwaluw on vehicle at @s anchored eyes run function expansion:vehicles/spaceship/engine_particles/zwaluw
