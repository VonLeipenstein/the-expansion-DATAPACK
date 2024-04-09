data remove entity @s WanderTarget

data modify storage expansion:mob_pos Pos set from entity @r[distance=..50] Pos

function expansion:mobs/mech/behavior/follow_player/merge_position