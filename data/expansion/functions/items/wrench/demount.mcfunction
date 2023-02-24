execute if entity @s[tag=exp.rocket] run function expansion:vehicles/rocket/demount
execute if entity @s[tag=exp.moon_buggy] run function expansion:vehicles/buggy/demount
execute if entity @s[tag=exp.lunar_module] run function expansion:vehicles/lunar_module/demount
execute if entity @s[tag=exp.return_capsule] run function expansion:vehicles/return_capsule/demount
execute if entity @s[tag=exp.spaceship] run function expansion:vehicles/spaceship/demount
execute if entity @s[tag=exp.module_bottom] run function expansion:vehicles/lunar_module/demount_bottom
execute if entity @s[tag=exp.rocket_part] run function expansion:blocks/rocket_parts/destroy
execute positioned ~ ~1 ~ if entity @s[tag=exp.portal_main] run function expansion:contraptions/portal/assembly/destroy_portal/destroy_portal