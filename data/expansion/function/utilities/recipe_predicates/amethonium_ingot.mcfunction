execute if items block ~ ~ ~ container.0 minecraft:amethyst_shard \
        if items block ~ ~ ~ container.2 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"raw_titanium"}}] \
        run return 1

execute if items block ~ ~ ~ container.2 minecraft:amethyst_shard \
        if items block ~ ~ ~ container.0 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"raw_titanium"}}] \
        run return 1

return fail