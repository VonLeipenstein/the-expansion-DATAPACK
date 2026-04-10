# >>> generated function callers >>>
# Callers for expansion:mobs/martian/summon
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 0/3 honored
# Sources:
# - function expansion:mobs/martian/brute/summon (1 caller) [WARN side/down 1]
# - function expansion:mobs/martian/melee/summon (1 caller) [WARN side/down 1]
# - function expansion:mobs/martian/ranged/summon (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

summon skeleton ~ ~ ~ {\
    Silent:1b,\
    NoAI:0b,\
    Tags:[\
        "exp.martian",\
        "exp.mob",\
        "exp.new_mob"\
    ],\
    Passengers:[{id:"minecraft:marker",Tags:["exp.mob_marker"]}]\
}