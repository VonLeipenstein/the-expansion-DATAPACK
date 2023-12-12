data merge entity @s {Marker:1b,Invisible:1b,Small:1b}
item replace entity @s weapon.mainhand from entity @p armor.head
item replace entity @p armor.head from entity @p weapon.mainhand
item replace entity @p weapon.mainhand with air
item replace entity @p weapon.mainhand from entity @s weapon.mainhand
kill @s