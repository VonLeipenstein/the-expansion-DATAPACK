tag @s remove exp.new_mob

tag @s add exp.brute_mob

# make the brute larger and slower
attribute @s minecraft:scale base set 1.5
effect give @s slowness infinite 1 true
attribute @s attack_knockback base set 5.0
attribute @s knockback_resistance base set 10.0


loot replace entity @s armor.head loot expansion:armor/trooper/helmet
loot replace entity @s armor.chest loot expansion:armor/trooper/chestplate
loot replace entity @s armor.legs loot expansion:armor/trooper/leggings
loot replace entity @s armor.feet loot expansion:armor/trooper/boots