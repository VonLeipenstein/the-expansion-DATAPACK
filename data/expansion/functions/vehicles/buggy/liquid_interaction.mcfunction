playsound entity.item.break player @p ~ ~ ~
ride @p[tag=exp.inside_buggy] dismount
execute as @p[tag=exp.inside_buggy] run function expansion:vehicles/buggy/exit
function expansion:vehicles/buggy/demount
