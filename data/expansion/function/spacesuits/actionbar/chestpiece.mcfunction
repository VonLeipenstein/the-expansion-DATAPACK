data modify storage expansion:temp actionbar.integrity[1][1].text set value "！"
execute if score #chestpiece exp.suit_integrity matches 50..79 run data modify storage expansion:temp actionbar.integrity[1][0].color set value "gold"
execute if score #chestpiece exp.suit_integrity matches 20..49 run data modify storage expansion:temp actionbar.integrity[1][0].color set value "red"
execute if score #chestpiece exp.suit_integrity matches 0..19 run data modify storage expansion:temp actionbar.integrity[1][0].color set value "dark_red"
