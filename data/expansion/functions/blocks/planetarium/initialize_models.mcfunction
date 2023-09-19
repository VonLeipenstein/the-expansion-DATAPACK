execute if entity @s[tag=exp.mini_sun] run data merge entity @s {transformation:{scale:[3.5f,3.5f,3.5f],translation:[0.0f,3.2f,0.0f]}}
execute if entity @s[tag=exp.mini_earth] run data merge entity @s {transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}
execute if entity @s[tag=exp.mini_mars] run data merge entity @s {transformation:{scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.4f,0.0f]}}
execute if entity @s[tag=exp.mini_venus] run data merge entity @s {transformation:{scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.5f,0.0f]}}
execute if entity @s[tag=exp.mini_mercury] run data merge entity @s {transformation:{scale:[0.35f,0.35f,0.35f],translation:[0.0f,0.3f,0.0f]}}
execute if entity @s[tag=exp.mini_pluto] run data merge entity @s {transformation:{scale:[0.35f,0.35f,0.35f],translation:[0.0f,0.3f,0.0f]}}
execute if entity @s[tag=exp.mini_saturn] run data merge entity @s {transformation:{scale:[2.2f,2.2f,2.2f],translation:[0.0f,0.8f,0.0f]}}
execute if entity @s[tag=exp.mini_neptune] run data merge entity @s {transformation:{scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.7f,0.0f]}}
execute if entity @s[tag=exp.mini_uranus] run data merge entity @s {transformation:{scale:[1.8f,1.8f,1.8f],translation:[0.0f,0.65f,0.0f]}}
execute if entity @s[tag=exp.mini_jupiter] run data merge entity @s {transformation:{scale:[2.5f,2.5f,2.5f],translation:[0.0f,0.85f,0.0f]}}
execute if entity @s[tag=exp.mini_moon] run data merge entity @s {transformation:{scale:[0.2f,0.2f,0.2f],translation:[0.0f,0.3f,0.0f]}}
execute if entity @s[tag=exp.mini_europa] run data merge entity @s {transformation:{scale:[0.25f,0.25f,0.25f],translation:[0.0f,0.30f,0.0f]}}
execute if entity @s[tag=exp.mini_callisto] run data merge entity @s {transformation:{scale:[0.25f,0.25f,0.25f],translation:[0.0f,0.30f,0.0f]}}
execute if entity @s[tag=exp.mini_io] run data merge entity @s {transformation:{scale:[0.25f,0.25f,0.25f],translation:[0.0f,0.30f,0.0f]}}
execute if entity @s[tag=exp.mini_ganymede] run data merge entity @s {transformation:{scale:[0.25f,0.25f,0.25f],translation:[0.0f,0.30f,0.0f]}}
execute if entity @s[tag=exp.mini_phobos] run data merge entity @s {transformation:{scale:[0.1f,0.1f,0.1f],translation:[0.0f,0.25f,0.0f]}}
execute if entity @s[tag=exp.mini_deimos] run data merge entity @s {transformation:{scale:[0.1f,0.1f,0.1f],translation:[0.0f,0.35f,0.0f]}}
execute if entity @s[tag=exp.mini_titan] run data merge entity @s {transformation:{scale:[0.25f,0.25f,0.25f],translation:[0.0f,0.3f,0.0f]}}
execute if entity @s[tag=exp.mini_ceres] run data merge entity @s {transformation:{scale:[0.25f,0.25f,0.25f],translation:[0.0f,0.28f,0.0f]}}
execute if entity @s[tag=exp.mini_amogus] run data merge entity @s {transformation:{scale:[0.1f,0.1f,0.1f],translation:[0.0f,0.28f,0.0f]}}

execute if entity @s[tag=exp.mini_amogus] run tp @s ~ ~ ~ ~-90 ~
execute if entity @s[tag=exp.mini_comet1] run tp @s ~ ~3.5 ~-5 ~90 ~
execute if entity @s[tag=exp.mini_comet2] run tp @s ~2 ~3 ~ ~ ~
execute if entity @s[tag=exp.mini_comet3] run tp @s ~ ~2.5 ~2 ~-90 ~

scoreboard players operation @s exp.unique_id = #planetarium_id exp.unique_id
