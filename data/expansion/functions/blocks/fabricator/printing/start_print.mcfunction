# remove one count from all the 9 crafting slots or remove the item entirely if it only had 1 count left
function expansion:utilities/barrel_utility/remove_crafting_items

# set the print time, this is synchronised with the animation time
scoreboard players set @s exp.timer_1 85

# start the animation
function expansion:blocks/fabricator/animation/animation_start
