# >>> generated function callers >>>
# Callers for expansion:items/transporter/transport/check_loaded
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/main (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# keep the player on the correct y level if the transportation hasn't succeeded yet
tp @s ~ 129 ~

# finish the transport if the chunk is loaded
execute if loaded ~ ~ ~ run function expansion:items/transporter/transport/finish