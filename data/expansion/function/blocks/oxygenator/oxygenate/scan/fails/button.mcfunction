# custom title
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run function expansion:blocks/oxygenator/oxygenate/titles/button

tag @s remove exp.depressurize
return 1