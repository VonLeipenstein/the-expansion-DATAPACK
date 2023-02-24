# destroy module
kill @e[type=armor_stand,tag=exp.module_seat,limit=1,sort=nearest]
kill @e[type=armor_stand,tag=exp.lunar_module,limit=1,sort=nearest]
kill @e[type=item_display,tag=exp.module_display,limit=1,sort=nearest]

# enable weather
function expansion:utilities/weather/weather_check

scoreboard players set @s exp.cooldown 20

execute in minecraft:overworld run tp @s ~ 900 ~
tag @s add exp.landing_earth