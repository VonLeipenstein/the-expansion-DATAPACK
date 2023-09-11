# Put the portal animation on the head of the exp.portal_main armor stand. This item also stores all information in an array.
item replace entity @s armor.head with minecraft:carrot_on_a_stick{CustomModelData:1012604}

# Create a unique ID for every portal which increments every time a new portal is activated. exp.counter_1 is the ID scoreboard for the portals.
execute unless score @s exp.counter_1 matches 0.. run function expansion:blocks/portal/activation/assign_id

# create the portal array and 'upload' it to the global portal array
function expansion:blocks/portal/activation/create_array
data modify storage expansion:portal portal_array append from entity @s ArmorItems[3].tag.portal_array[]

playsound expansion:portal.activate ambient @a ~ ~ ~ 1

# Add tag
tag @s add exp.activated_portal
