# swap the curent helmet of the player with the space equipment
execute summon armor_stand run function expansion:items/space_equipment/swap_helmet

# determine the players oxygen scores
scoreboard players set @s exp.oxygen_max 24000
scoreboard players set @s[predicate=expansion:nbt_checks/armor/space_equipment/oxygen] exp.oxygen_max 48000
execute unless entity @s[predicate=expansion:nbt_checks/armor/space_equipment/oxygen] run scoreboard players set @s[scores={exp.oxygen_level=24000..}] exp.oxygen_level 24000
execute unless score @s exp.oxygen_level matches -1.. run scoreboard players set @s exp.oxygen_level 24000

# sound
playsound minecraft:item.armor.equip_iron player @a ~ ~ ~