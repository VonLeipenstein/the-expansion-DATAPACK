# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/buggy
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/assembler/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{exp_item:{name:"buggy_wheel"}}] \
        if items block ~ ~ ~ container.2 jigsaw[custom_data~{exp_item:{name:"steel_plate"}}] \
        if items block ~ ~ ~ container.3 jigsaw[custom_data~{exp_item:{name:"steel_plate"}}] \
        if items block ~ ~ ~ container.4 jigsaw[custom_data~{exp_item:{name:"buggy_wheel"}}] \
        \
        if items block ~ ~ ~ container.10 jigsaw[custom_data~{exp_item:{name:"electromotor"}}] \
        if items block ~ ~ ~ container.11 jigsaw[custom_data~{exp_item:{name:"complex_mechanism"}}] \
        if items block ~ ~ ~ container.12 carrot_on_a_stick[custom_data~{exp_item:{name:"oxygen_tank"}}] \
        if items block ~ ~ ~ container.13 jigsaw[custom_data~{exp_item:{name:"electromotor"}}] \
        \
        if items block ~ ~ ~ container.19 jigsaw[custom_data~{exp_item:{name:"buggy_wheel"}}] \
        if items block ~ ~ ~ container.20 jigsaw[custom_data~{exp_item:{name:"steel_plate"}}] \
        if items block ~ ~ ~ container.21 jigsaw[custom_data~{exp_item:{name:"steel_plate"}}] \
        if items block ~ ~ ~ container.22 jigsaw[custom_data~{exp_item:{name:"buggy_wheel"}}] \
        run return 1

return fail