execute if items block ~ ~ ~ container.0 #expansion:iron \
        if items block ~ ~ ~ container.2 #expansion:coal \
        run return 1

execute if items block ~ ~ ~ container.0 #expansion:coal \
        if items block ~ ~ ~ container.2 #expansion:iron \
        run return 1

return fail