# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.buggy.root] run return 0
execute on passengers if entity @s[tag=aj.buggy.data] unless data entity @s {data:{rigHash: '1e312cc724c692d2911d4b736f0a4f8aa9dc87f5efd1d04b8f6aa348c7630687'}} on vehicle run function animated_java:buggy/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1