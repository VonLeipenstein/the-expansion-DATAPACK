execute unless items block ~ ~ ~ container.1 * run function expansion:blocks/enhancer/gui/buttons/enhance
execute unless items block ~ ~ ~ container.7 * run function expansion:blocks/enhancer/gui/buttons/remove

# add or remove the helmet from the display if the player puts one in the container slot
execute if items block ~ ~ ~ container.5 carrot_on_a_stick[minecraft:custom_data~{space_equipment:1b}] on passengers if entity @s[tag=exp.enhancer_display] unless items entity @s container.0 * run function expansion:blocks/enhancer/display_helmet
execute unless items block ~ ~ ~ container.5 carrot_on_a_stick[minecraft:custom_data~{space_equipment:1b}] on passengers if entity @s[tag=exp.enhancer_display] if items entity @s container.0 * run function expansion:blocks/enhancer/remove_helmet

execute on passengers if entity @s[tag=exp.enhancer_display] at @s run tp @s ~ ~ ~ ~-2 ~

function expansion:blocks/enhancer/gui/main