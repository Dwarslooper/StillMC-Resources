function still:start
function still:drive
function still:system
function still:crafting
function still:drivebohr
function still:drivegstp
function still:drivesnow
function still:driveelev
function still:stapler
function still:infobook
function still:shadowsteel
function still:drivetank

execute as @e[tag=STILL_engine] at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace cave_air
execute as @e[tag=STILL_BHengine] at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace cave_air
execute as @e[tag=STILL_SNengine] at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace cave_air
execute as @e[tag=STILL_GSengine] at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace cave_air




execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=1},distance=..2] if block ^ ^2.3 ^1 #minecraft:drivable_through run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=2},distance=..2] if block ^ ^2.3 ^1 #minecraft:drivable_through run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=-1},distance=..2] if block ^ ^2.3 ^-2.2 #minecraft:drivable_through run teleport @s ^ ^ ^-0.1

execute as @e[tag=STILL_engine,type=minecraft:armor_stand] at @s store result score @s still.data run data get entity @s Rotation[0]
execute as @e[tag=STILL_engine,type=minecraft:armor_stand] at @s run scoreboard players operation @s still.data += #90 still.data
execute as @e[tag=STILL_engine,type=minecraft:armor_stand] at @s as @e[type=minecart,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=STILL_engine,type=minecraft:armor_stand,sort=nearest,distance=..2,limit=1] still.data
execute as @e[tag=STILL_engine] at @s if entity @a[distance=..2] run data modify entity @s Rotation[0] set from entity @p[distance=..2] Rotation[0]
execute as @e[tag=STILL_engine,type=minecraft:armor_stand] at @s run data modify entity @s Rotation[1] set value 0f
execute as @e[tag=STILL_engine] at @s unless block ^ ^1.5 ^1 #minecraft:drivable_through if block ^ ^2.5 ^1 #minecraft:drivable_through run teleport @s ~ ~1 ~
execute as @e[tag=STILL_engine] at @s if block ^ ^0.6 ^-1.5 #minecraft:drivable_through if block ^ ^0.6 ^1 #minecraft:drivable_through run teleport @s ~ ~-1 ~

execute as @e[tag=STILL_engine] at @s if block ^ ^1.35 ^-1.5 #minecraft:drivable_through if block ^ ^1.3 ^1 #minecraft:drivable_through run teleport @s ~ ~-0.1 ~
execute as @e[tag=STILL_engine] at @s unless block ^ ^1.3 ^1 #minecraft:drivable_through if block ^ ^2.5 ^1 #minecraft:drivable_through run teleport @s ~ ~0.1 ~
execute as @e[tag=STILL_engine] at @s unless block ^ ^1.3 ^-1.5 #minecraft:drivable_through if block ^ ^2.5 ^-1.5 #minecraft:drivable_through run teleport @s ~ ~0.1 ~






execute as @e[type=minecraft:armor_stand,tag=STILL_BHengine] at @s if entity @a[scores={still.STILL=1},distance=..2] if block ^ ^2.3 ^1 #minecraft:drivable_through run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_BHengine] at @s if entity @a[scores={still.STILL=-1},distance=..2] if block ^ ^2.3 ^-2.5 #minecraft:drivable_through run teleport @s ^ ^ ^-0.1
execute as @e[tag=STILL_BHengine,type=minecraft:armor_stand] at @s store result score @s still.data run data get entity @s Rotation[0]
execute as @e[tag=STILL_BHengine,type=minecraft:armor_stand] at @s run scoreboard players operation @s still.data += #90 still.data
execute as @e[tag=STILL_BHengine,type=minecraft:armor_stand] at @s as @e[type=minecart,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=STILL_BHengine,type=minecraft:armor_stand,sort=nearest,distance=..2,limit=1] still.data
execute as @e[tag=STILL_BHengine] at @s if entity @a[distance=..2] run data modify entity @s Rotation[0] set from entity @p[distance=..2] Rotation[0]
execute as @e[tag=STILL_BHengine,type=minecraft:armor_stand] at @s run data modify entity @s Rotation[1] set value 0f

execute as @e[tag=STILL_BHengine] at @s unless block ^ ^1.6 ^1 #minecraft:drivable_through if block ^ ^2.5 ^1 #minecraft:drivable_through run teleport @s ~ ~1 ~

execute as @e[tag=STILL_BHengine] at @s if block ^ ^0.6 ^-1.5 #minecraft:drivable_through if block ^ ^0.6 ^1 #minecraft:drivable_through run teleport @s ~ ~-1 ~

execute as @e[tag=STILL_BHengine] at @s if block ^ ^1.6 ^-1.5 #minecraft:drivable_through if block ^ ^1.5 ^1 #minecraft:drivable_through run teleport @s ~ ~-0.1 ~
execute as @e[tag=STILL_BHengine] at @s unless block ^ ^1.5 ^1 #minecraft:drivable_through if block ^ ^2.7 ^1 #minecraft:drivable_through run teleport @s ~ ~0.1 ~
execute as @e[tag=STILL_BHengine] at @s unless block ^ ^1.5 ^-1 #minecraft:drivable_through if block ^ ^2.5 ^1 #minecraft:drivable_through run teleport @s ~ ~0.1 ~





execute as @e[type=minecraft:armor_stand,tag=STILL_SNengine] at @s if entity @a[scores={still.STILL=1},distance=..2] if block ^ ^2.3 ^1 #minecraft:drivable_through run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_SNengine] at @s if entity @a[scores={still.STILL=2},distance=..2] if block ^ ^2.3 ^1 #minecraft:drivable_through run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_SNengine] at @s if entity @a[scores={still.STILL=-1},distance=..2] if block ^ ^2.3 ^-2.2 #minecraft:drivable_through run teleport @s ^ ^ ^-0.1

execute as @e[tag=STILL_SNengine,type=minecraft:armor_stand] at @s store result score @s still.data run data get entity @s Rotation[0]
execute as @e[tag=STILL_SNengine,type=minecraft:armor_stand] at @s run scoreboard players operation @s still.data += #90 still.data
execute as @e[tag=STILL_SNengine,type=minecraft:armor_stand] at @s as @e[type=minecart,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=STILL_SNengine,type=minecraft:armor_stand,sort=nearest,distance=..2,limit=1] still.data
execute as @e[tag=STILL_SNengine] at @s if entity @a[distance=..2] run data modify entity @s Rotation[0] set from entity @p[distance=..2] Rotation[0]
execute as @e[tag=STILL_SNengine,type=minecraft:armor_stand] at @s run data modify entity @s Rotation[1] set value 0f
execute as @e[tag=STILL_SNengine] at @s unless block ^ ^1.5 ^1 #minecraft:drivable_through if block ^ ^2.6 ^1 #minecraft:drivable_through run teleport @s ~ ~1 ~
execute as @e[tag=STILL_SNengine] at @s if block ^ ^0.7 ^-1.5 #minecraft:drivable_through if block ^ ^0.7 ^1 #minecraft:drivable_through run teleport @s ~ ~-1 ~

execute as @e[tag=STILL_SNengine] at @s if block ^ ^1.8 ^-1.5 #minecraft:drivable_through if block ^ ^1.8 ^1 #minecraft:drivable_through run teleport @s ~ ~-0.1 ~
execute as @e[tag=STILL_SNengine] at @s unless block ^ ^1.6 ^1 #minecraft:drivable_through if block ^ ^2.6 ^1 #minecraft:drivable_through run teleport @s ~ ~0.1 ~
execute as @e[tag=STILL_SNengine] at @s unless block ^ ^1.6 ^-1.5 #minecraft:drivable_through if block ^ ^2.6 ^-1.5 #minecraft:drivable_through run teleport @s ~ ~0.1 ~





execute as @a[scores={still.STILL=-1}] at @s run scoreboard players add @s still.backS 1
execute as @a[scores={still.backS=19}] at @s run playsound still:backs master @a[distance=..20] ~ ~ ~ 100 1 1
execute as @a[scores={still.backS=20..}] at @s run scoreboard players reset @s still.backS
execute as @a at @s unless score @s still.STILL matches -1 run scoreboard players reset @s still.backS






execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=1},distance=..2] if block ^ ^2.3 ^1 #minecraft:drivable_through run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=2},distance=..2] if block ^ ^2.3 ^1 #minecraft:drivable_through run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=-1},distance=..2] if block ^ ^2.3 ^-2.2 #minecraft:drivable_through run teleport @s ^ ^ ^-0.1

execute as @e[tag=STILL_GSengine,type=minecraft:armor_stand] at @s store result score @s still.data run data get entity @s Rotation[0]
execute as @e[tag=STILL_GSengine,type=minecraft:armor_stand] at @s run scoreboard players operation @s still.data += #90 still.data
execute as @e[tag=STILL_GSengine,type=minecraft:armor_stand] at @s as @e[type=minecart,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=STILL_GSengine,type=minecraft:armor_stand,sort=nearest,distance=..2,limit=1] still.data
execute as @e[tag=STILL_GSengine] at @s if entity @a[distance=..2] run data modify entity @s Rotation[0] set from entity @p[distance=..2] Rotation[0]
execute as @e[tag=STILL_GSengine,type=minecraft:armor_stand] at @s run data modify entity @s Rotation[1] set value 0f
execute as @e[tag=STILL_GSengine] at @s unless block ^ ^1.5 ^1 #minecraft:drivable_through if block ^ ^2.5 ^1 #minecraft:drivable_through run teleport @s ~ ~1 ~
execute as @e[tag=STILL_GSengine] at @s if block ^ ^0.6 ^-1.5 #minecraft:drivable_through if block ^ ^0.6 ^1 #minecraft:drivable_through run teleport @s ~ ~-1 ~

execute as @e[tag=STILL_GSengine] at @s if block ^ ^1.3 ^-1.5 #minecraft:drivable_through if block ^ ^1.3 ^1 #minecraft:drivable_through run teleport @s ~ ~-0.1 ~
execute as @e[tag=STILL_GSengine] at @s unless block ^ ^1.1 ^1 #minecraft:drivable_through if block ^ ^2.5 ^1 #minecraft:drivable_through run teleport @s ~ ~0.1 ~
execute as @e[tag=STILL_GSengine] at @s unless block ^ ^1.1 ^-1.5 #minecraft:drivable_through if block ^ ^2.5 ^-1.5 #minecraft:drivable_through run teleport @s ~ ~0.1 ~







execute as @e[type=minecraft:armor_stand,tag=STILL_TKengine] at @s if entity @a[scores={still.STILL=1},distance=..2] if block ^ ^2.3 ^1 #minecraft:drivable_through run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_TKengine] at @s if entity @a[scores={still.STILL=2},distance=..2] if block ^ ^2.3 ^1 #minecraft:drivable_through run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_TKengine] at @s if entity @a[scores={still.STILL=-1},distance=..2] if block ^ ^2.3 ^-2.2 #minecraft:drivable_through run teleport @s ^ ^ ^-0.1

execute as @e[tag=STILL_TKengine,type=minecraft:armor_stand] at @s store result score @s still.data run data get entity @s Rotation[0]
execute as @e[tag=STILL_TKengine,type=minecraft:armor_stand] at @s run scoreboard players operation @s still.data += #90 still.data
execute as @e[tag=STILL_TKengine,type=minecraft:armor_stand] at @s as @e[type=minecart,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=STILL_TKengine,type=minecraft:armor_stand,sort=nearest,distance=..2,limit=1] still.data
execute as @e[tag=STILL_TKengine] at @s if entity @a[distance=..2] run data modify entity @s Rotation[0] set from entity @p[distance=..2] Rotation[0]
execute as @e[tag=STILL_TKengine,type=minecraft:armor_stand] at @s run data modify entity @s Rotation[1] set value 0f
execute as @e[tag=STILL_TKengine] at @s unless block ^ ^1.5 ^1.2 #minecraft:drivable_through if block ^ ^2.5 ^1.2 #minecraft:drivable_through run teleport @s ~ ~1 ~
execute as @e[tag=STILL_TKengine] at @s if block ^ ^0.5 ^-1.5 #minecraft:drivable_through if block ^ ^0.5 ^1.2 #minecraft:drivable_through run teleport @s ~ ~-1 ~

execute as @e[tag=STILL_TKengine] at @s if block ^ ^1.2 ^-1.3 #minecraft:drivable_through if block ^ ^1.4 ^1.2 #minecraft:drivable_through run teleport @s ~ ~-0.1 ~
execute as @e[tag=STILL_TKengine] at @s unless block ^ ^1 ^1.2 #minecraft:drivable_through if block ^ ^2.4 ^1.2 #minecraft:drivable_through run teleport @s ~ ~0.1 ~
execute as @e[tag=STILL_TKengine] at @s unless block ^ ^1 ^-1.3 #minecraft:drivable_through if block ^ ^2.4 ^-1.3 #minecraft:drivable_through run teleport @s ~ ~0.1 ~