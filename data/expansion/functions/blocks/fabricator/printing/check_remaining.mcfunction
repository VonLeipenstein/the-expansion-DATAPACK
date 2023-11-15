scoreboard players set @s exp.value 0

execute if data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set @s exp.value 1

execute unless score @s exp.value matches 1 if data block ~ ~ ~ Items[{Slot:10b}] run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if data block ~ ~ ~ Items[{Slot:11b}] run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if data block ~ ~ ~ Items[{Slot:12b}] run scoreboard players set @s exp.value 1

execute unless score @s exp.value matches 1 if data block ~ ~ ~ Items[{Slot:19b}] run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if data block ~ ~ ~ Items[{Slot:20b}] run scoreboard players set @s exp.value 1
execute unless score @s exp.value matches 1 if data block ~ ~ ~ Items[{Slot:21b}] run scoreboard players set @s exp.value 1
