# find the state of the handle inside a cell
scoreboard players operation #temp exp.speed = @s exp.speed
scoreboard players operation #temp exp.speed %= #5 exp.const

execute if score @s exp.speed matches 10 run scoreboard players set #temp exp.speed 1

execute if score #temp exp.speed matches 1 run data modify storage expansion:temp actionbar.handle set value "ﴂ‑"
execute if score #temp exp.speed matches 2 run data modify storage expansion:temp actionbar.handle set value "ﴃ‑"
execute if score #temp exp.speed matches 3 run data modify storage expansion:temp actionbar.handle set value "ﴄ‑"
execute if score #temp exp.speed matches 4 run data modify storage expansion:temp actionbar.handle set value "ﴅ‑"
execute if score #temp exp.speed matches 0 run data modify storage expansion:temp actionbar.handle set value "ﴆ‑"

# Color in pieces of the oxygen bar based on the tanks percentage
execute if score @s exp.speed matches 10 run data modify storage expansion:temp actionbar.speed[18].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 11..15 run data modify storage expansion:temp actionbar.speed[18].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 16..20 run data modify storage expansion:temp actionbar.speed[17].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 21..25 run data modify storage expansion:temp actionbar.speed[16].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 26..30 run data modify storage expansion:temp actionbar.speed[15].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 31..35 run data modify storage expansion:temp actionbar.speed[14].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 36..40 run data modify storage expansion:temp actionbar.speed[13].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 41..45 run data modify storage expansion:temp actionbar.speed[12].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 46..50 run data modify storage expansion:temp actionbar.speed[11].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 51..55 run data modify storage expansion:temp actionbar.speed[10].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 56..60 run data modify storage expansion:temp actionbar.speed[9].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 61..65 run data modify storage expansion:temp actionbar.speed[8].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 66..70 run data modify storage expansion:temp actionbar.speed[7].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 71..75 run data modify storage expansion:temp actionbar.speed[6].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 76..80 run data modify storage expansion:temp actionbar.speed[5].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 81..85 run data modify storage expansion:temp actionbar.speed[4].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 86..90 run data modify storage expansion:temp actionbar.speed[3].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 91..95 run data modify storage expansion:temp actionbar.speed[2].text set from storage expansion:temp actionbar.handle
execute if score @s exp.speed matches 96..100 run data modify storage expansion:temp actionbar.speed[1].text set from storage expansion:temp actionbar.handle