fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace fire

execute if predicate expansion:periodic/3 at @s positioned ~ ~-0.5 ~ summon marker run function expansion:blocks/infuser/charged/create_arc

execute on passengers if entity @s[tag=exp.output] unless items entity @s contents * on vehicle if function expansion:blocks/infuser/can_smelt run function expansion:blocks/infuser/recipes
execute on passengers if entity @s[tag=exp.output] if items entity @s contents * on vehicle run function expansion:blocks/infuser/melting/melting

execute unless function expansion:blocks/infuser/can_smelt run scoreboard players reset @s exp.timer_2