execute if items entity @s container.0 * unless items entity @p weapon.mainhand * run return run function expansion:blocks/enhancer/interaction/take_helmet

execute if score #temp exp.bool matches 1 unless items entity @s container.0 * if items entity @p[tag=exp.clicked] armor.head carrot_on_a_stick[minecraft:custom_data~{space_equipment:1b}] run return run function expansion:blocks/enhancer/interaction/insert_helmet
execute unless items entity @s container.0 * if items entity @p[tag=exp.clicked] weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{space_equipment:1b}] run function expansion:blocks/enhancer/interaction/insert_helmet
