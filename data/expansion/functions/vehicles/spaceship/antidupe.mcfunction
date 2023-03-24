clear @s minecraft:carrot_on_a_stick{ship_blaster:1b} 1
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Fire!","color":"white","bold":false,"italic":false,"underlined":false}'},Unbreakable:1b,CustomModelData:1012006,ship_blaster:1b,exp_tool:1b,expansion_coas:1b} 1
kill @e[type=item,nbt={Item:{tag:{ship_blaster:1b}}},limit=1,sort=nearest,distance=..5]