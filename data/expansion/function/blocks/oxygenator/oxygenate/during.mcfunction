# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/during
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# Provide continuous oxygen to players connected by the oxygen_link
execute on passengers if entity @s[tag=exp.oxygen_link,tag=exp.enabled_oxygen] on origin run function expansion:blocks/oxygenator/oxygenate/connected_player

# Funny particles
function expansion:blocks/oxygenator/particles