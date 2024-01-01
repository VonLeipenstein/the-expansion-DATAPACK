# summon the model
execute if entity @s[y_rotation=-135.1..-45] positioned ~ ~1 ~ rotated 90 0 run function animated_java:assembler/summon
execute if entity @s[y_rotation=45.1..135] positioned ~ ~1 ~ rotated 270 0 run function animated_java:assembler/summon
execute if entity @s[y_rotation=-45..45] positioned ~ ~1 ~ rotated 180 0 run function animated_java:assembler/summon
execute if entity @s[y_rotation=135.1..-135] positioned ~ ~1 ~ rotated 0 0 run function animated_java:assembler/summon

# summon the display entity which displays the product
execute summon minecraft:item_display run function expansion:blocks/assembler/place/product
