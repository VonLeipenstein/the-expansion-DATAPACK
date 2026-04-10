# >>> generated function callers >>>
# Callers for expansion:projectiles/slowcaster_debug
# Total callers: 5 from 5 source(s)
# Folder rule (function callers): 0/5 honored
# Sources:
# - function expansion:projectiles/autocannon_bullet/cast (1 caller) [WARN side/down 1]
# - function expansion:projectiles/electric_arc/cast (1 caller) [WARN side/down 1]
# - function expansion:projectiles/freeze_ray/cast (1 caller) [WARN side/down 1]
# - function expansion:projectiles/railgun_bullet/cast (1 caller) [WARN side/down 1]
# - function expansion:projectiles/ship_blaster/cast (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

# if this entity is a slowcaster, succeed
execute if entity @s[type=#expansion:slowcasters] run return 1

# else, send a message and fail
say Run this function as a slowcaster (marker, item display, snowball, armor stand)
return fail