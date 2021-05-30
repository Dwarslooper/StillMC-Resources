execute as @e[tag=STILL_engine] at @s if entity @e[type=minecraft:armor_stand,distance=0.1..1,tag=STILL_engine] run tellraw @p {"text":"removed STILL vehicle due to a collision!","color":"red"}
execute as @e[tag=STILL_engine] at @s if entity @e[type=minecraft:armor_stand,distance=0.1..1,tag=STILL_engine] run kill @e[type=minecart,distance=..2]
execute as @e[tag=STILL_engine] at @s if entity @e[type=minecraft:armor_stand,distance=0.1..1,tag=STILL_engine] run kill @s

