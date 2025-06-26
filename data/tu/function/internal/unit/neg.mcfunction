$data modify storage tu:unit out set from storage tu:unit dict[$(key)]
execute store result score $sin(a) tu.math run data get storage tu:unit out[0] -0.1
execute store result score $cos(a) tu.math run data get storage tu:unit out[1] -0.1