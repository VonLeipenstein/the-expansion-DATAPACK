# display the printed item
execute if score @s exp.timer_1 matches 15 run item replace entity @e[type=minecraft:item_display,tag=exp.fabricator_display,limit=1,sort=nearest] container.0 from entity @s armor.feet

# change the loader
scoreboard players operation @s exp.hold_value_alt = @s exp.timer_1
scoreboard players operation @s exp.hold_value_alt %= #3 exp.const
execute if score @s exp.hold_value_alt matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,components:{"minecraft:custom_data":{gui_item:1b}}}]} run function expansion:blocks/fabricator/gui/change_loader

# stop the print when the timer runs out
execute if score @s exp.timer_1 matches 1 run function expansion:blocks/fabricator/printing/stop_print

# remove the print timer cooldown. set to 85 in start_print
scoreboard players remove @s exp.timer_1 1