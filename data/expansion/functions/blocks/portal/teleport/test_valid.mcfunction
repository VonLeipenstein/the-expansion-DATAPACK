execute store result score portal.x1.pos exp.value run data get storage expansion:portal portal_out[0].x
execute store result score portal.y1.pos exp.value run data get storage expansion:portal portal_out[0].y
execute store result score portal.z1.pos exp.value run data get storage expansion:portal portal_out[0].z

execute store result score portal.x2.pos exp.value run data get storage expansion:portal portal_out[-1].x
execute store result score portal.y2.pos exp.value run data get storage expansion:portal portal_out[-1].y
execute store result score portal.z2.pos exp.value run data get storage expansion:portal portal_out[-1].z

execute store result score portal.match exp.value run data get storage expansion:portal portal_out[0]

execute store result score portal.dim exp.value run data get storage expansion:portal portal_out[0].dim

execute unless score portal.dim exp.value matches -1 unless score portal.match exp.value matches 0 if score portal.x1.pos exp.value = portal.x2.pos exp.value if score portal.y1.pos exp.value = portal.y2.pos exp.value if score portal.z1.pos exp.value = portal.z2.pos exp.value run tag @s add exp.valid_portal