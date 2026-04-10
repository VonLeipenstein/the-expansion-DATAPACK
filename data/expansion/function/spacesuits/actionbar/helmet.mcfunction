# >>> generated function callers >>>
# Callers for expansion:spacesuits/actionbar/helmet
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/actionbar/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

data modify storage expansion:temp actionbar.integrity[0][1].text set value "＀"
execute if score #helmet exp.suit_integrity matches 50..79 run data modify storage expansion:temp actionbar.integrity[0][0].color set value "gold"
execute if score #helmet exp.suit_integrity matches 20..49 run data modify storage expansion:temp actionbar.integrity[0][0].color set value "red"
execute if score #helmet exp.suit_integrity matches 0..19 run data modify storage expansion:temp actionbar.integrity[0][0].color set value "dark_red"