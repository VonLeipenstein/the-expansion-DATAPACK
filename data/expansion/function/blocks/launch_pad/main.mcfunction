# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# calculate the stats for the rocket so the text displays can easily retrieve them
execute on passengers if entity @s[type=snowball] on origin at @s run function expansion:blocks/launch_pad/rocket/main

execute if predicate expansion:periodic/5 run function expansion:blocks/launch_pad/text_display/main