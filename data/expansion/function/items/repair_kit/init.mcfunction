# repair all worn armor pieces
execute unless score @s exp.suit_integrity matches 91.. if predicate expansion:armor/any run function expansion:items/repair_kit/repair