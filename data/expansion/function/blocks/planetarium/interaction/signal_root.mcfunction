say signal root
execute on passengers if entity @s[tag=exp.planetarium_pivot] on passengers if entity @s[type=snowball] on origin run return run function expansion:blocks/planetarium/interaction/signal_root

execute if entity @s[tag=exp.sun_pivot] run say sun pivot
execute if entity @s[tag=exp.mini_sun] run say sun model
