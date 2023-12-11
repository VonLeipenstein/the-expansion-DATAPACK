# keep the player on the correct y level if the transportation hasn't succeeded yet
tp @s ~ 129 ~

# finish the transport if the chunk is loaded
execute if loaded ~ ~ ~ run function expansion:items/transporter/transport/finish