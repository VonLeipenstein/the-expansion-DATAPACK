playsound minecraft:entity.villager.work_librarian voice @p
loot spawn ~ ~ ~ loot expansion:books/guide1
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{exp_guide1:1b}}},limit=1,sort=nearest] run function expansion:items/expansion_guides/guide1/insert_guide1_info
kill @e[type=item,nbt={Item:{id:"minecraft:book"}},distance=..1,limit=1,sort=nearest]