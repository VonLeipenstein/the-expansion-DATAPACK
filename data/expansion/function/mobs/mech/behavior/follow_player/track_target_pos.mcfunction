# Create an int array
data modify storage expansion:mob_pos PosOut set value [I;0,0,0]

# Copy the player's Pos to storage
data modify storage expansion:mob_pos PosIn set from entity @p Pos

function expansion:mobs/mech/behavior/follow_player/merge_position
