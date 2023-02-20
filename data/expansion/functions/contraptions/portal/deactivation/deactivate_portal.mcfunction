# Search the current portal in the global portal array and remove its entry.
function expansion:contraptions/portal/deactivation/search_match_id
tag @s remove exp.activated_portal

execute at @e[type=armor_stand,tag=exp.portal_main,limit=1,sort=nearest] run playsound expansion:portal.shutdown ambient @a ~ ~ ~ 1

item replace entity @s armor.head with minecraft:air