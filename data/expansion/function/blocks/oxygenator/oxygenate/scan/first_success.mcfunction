# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/scan/first_success
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/success (1 caller) [OK above +1]
# <<< generated function callers <<<

tag @s add exp.pressurized

execute on passengers if entity @s[tag=exp.oxygen_link] on origin run function expansion:blocks/oxygenator/oxygenate/titles/pressurized