# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/prepare/assemble_hierarchy
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/planetarium/place/setup (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

execute on passengers run ride @s[tag=exp.moon_pivot] dismount
execute on passengers if entity @s[tag=exp.planetarium_pivot] on passengers if entity @s[type=snowball] on origin if entity @s[tag=exp.mini_earth] run ride @n[type=item_display,tag=exp.moon_pivot] mount @s

execute on passengers run ride @s[tag=exp.europa_pivot] dismount
execute on passengers if entity @s[tag=exp.planetarium_pivot] on passengers if entity @s[type=snowball] on origin if entity @s[tag=exp.mini_jupiter] run ride @n[type=item_display,tag=exp.europa_pivot] mount @s

execute on passengers run ride @s[tag=exp.earth_pivot] dismount
execute on passengers if entity @s[tag=exp.planetarium_pivot] on passengers if entity @s[type=snowball] on origin if entity @s[tag=exp.mini_sun] run ride @n[type=item_display,tag=exp.earth_pivot] mount @s

execute on passengers run ride @s[tag=exp.mars_pivot] dismount
execute on passengers if entity @s[tag=exp.planetarium_pivot] on passengers if entity @s[type=snowball] on origin if entity @s[tag=exp.mini_sun] run ride @n[type=item_display,tag=exp.mars_pivot] mount @s

execute on passengers run ride @s[tag=exp.venus_pivot] dismount
execute on passengers if entity @s[tag=exp.planetarium_pivot] on passengers if entity @s[type=snowball] on origin if entity @s[tag=exp.mini_sun] run ride @n[type=item_display,tag=exp.venus_pivot] mount @s

execute on passengers run ride @s[tag=exp.jupiter_pivot] dismount
execute on passengers if entity @s[tag=exp.planetarium_pivot] on passengers if entity @s[type=snowball] on origin if entity @s[tag=exp.mini_sun] run ride @n[type=item_display,tag=exp.jupiter_pivot] mount @s
