tag @s add exp.landing_earth
execute on vehicle on passengers run tag @s add exp.landing_earth
execute on vehicle on passengers run tag @s add exp.landing_earth_init

# destroy module
execute if entity @s[tag=exp.module_pilot] on vehicle on vehicle run function expansion:vehicles/lunar_module/delete

# disable weather
execute if entity @s[tag=exp.module_pilot] run function expansion:utilities/weather/disable_weather

# cooldown, don't remember what this was for but keeping it just in case
scoreboard players set @s exp.cooldown 1

# teleport
execute as @a[tag=exp.landing_earth_init,limit=2,sort=nearest] in minecraft:overworld run tp @s ~ 450 ~
