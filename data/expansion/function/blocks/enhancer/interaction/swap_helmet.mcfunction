execute on vehicle if items entity @s contents * unless items entity @p weapon.mainhand * at @s run return run function expansion:blocks/enhancer/interaction/take_helmet

execute on vehicle unless items entity @s contents * if items entity @p[tag=exp.clicked] weapon.mainhand *[minecraft:custom_data~{exp.enhanceable:1b}] at @s run function expansion:blocks/enhancer/interaction/insert_helmet