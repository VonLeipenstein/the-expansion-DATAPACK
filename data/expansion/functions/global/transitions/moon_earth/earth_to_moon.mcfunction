tag @s add exp.landing_moon
tag @s add exp.landing_moon_init
execute on vehicle on vehicle on passengers on passengers on passengers run tag @s[type=player] add exp.landing_moon
execute on vehicle on vehicle on passengers on passengers on passengers run tag @s[type=player] add exp.landing_moon_init

# destroy rocket
execute if entity @s[tag=exp.rocket_pilot] on vehicle on vehicle run function expansion:vehicles/rocket/destroy

# disable weather
execute if entity @s[tag=exp.rocket_pilot] run function expansion:utilities/weather/disable_weather

# cooldown, don't remember what this was for but keeping it just in case
scoreboard players set @s exp.cooldown 1

# teleport
execute as @a[tag=exp.landing_moon_init,limit=2,sort=nearest] in expansion:moon run tp @s ~ 450 ~