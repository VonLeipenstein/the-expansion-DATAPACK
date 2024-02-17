#particle end_rod ^2 ^ ^
#particle end_rod ^-2 ^ ^
#particle end_rod ^2 ^3 ^
#particle end_rod ^-2 ^3 ^

execute positioned ^-.5 ^ ^1 if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-.5 ^1 ^1 if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-.5 ^2 ^1 if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-.5 ^3 ^1 if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy

execute positioned ^-1.5 ^ ^1 if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-1.5 ^1 ^1 if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-1.5 ^2 ^1 if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-1.5 ^3 ^1 if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy


execute positioned ^-.5 ^ ^ if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-.5 ^1 ^ if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-.5 ^2 ^ if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-.5 ^3 ^ if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy

execute positioned ^-1.5 ^ ^ if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-1.5 ^1 ^ if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-1.5 ^2 ^ if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
execute positioned ^-1.5 ^3 ^ if block ~ ~ ~ #expansion:drillable run setblock ~ ~ ~ air destroy
