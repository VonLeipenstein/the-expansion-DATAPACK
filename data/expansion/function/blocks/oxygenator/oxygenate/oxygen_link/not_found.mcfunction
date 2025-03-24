# if I have the tag that was removed on scan/init, I was found by the wave
execute on origin if entity @s[tag=exp.recieved_oxygen] run return fail

return 1