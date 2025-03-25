# If I have the tag that was removed on scan/init, I was found by the wave
execute on origin unless entity @s[tag=exp.oxygenated] run return 1

return fail