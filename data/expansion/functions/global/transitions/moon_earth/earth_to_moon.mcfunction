# destroy rocket
kill @e[type=armor_stand,tag=exp.rocket,limit=1,sort=nearest]
kill @e[type=item_display,tag=exp.rocket_display,limit=1,sort=nearest]
kill @e[type=armor_stand,tag=exp.rocket_seat,limit=1,sort=nearest]

# disable weather
function expansion:utilities/weather/disable_weather

scoreboard players set @s exp.cooldown 10

# teleport
execute in expansion:moon run tp @s ~ 450 ~
tag @s add exp.landing_moon

