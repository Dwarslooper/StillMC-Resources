function still:start
function still:drive
function still:system
function still:crafting
function still:drivebohr
function still:drivegstp
function still:stapler
function still:infobook
function still:shadowsteel

execute as @e[tag=STILL_engine] at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace cave_air
execute as @e[tag=STILL_BHengine] at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace cave_air
execute as @e[tag=STILL_GSengine] at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace cave_air

execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 air run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 torch run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 air run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 torch run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 air run teleport @s ^ ^ ^-0.1
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 torch run teleport @s ^ ^ ^-0.1

execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 grass run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 grass run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 grass run teleport @s ^ ^ ^-0.1

execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 minecraft:tall_grass run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 minecraft:tall_grass run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 minecraft:tall_grass run teleport @s ^ ^ ^-0.1

execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 #minecraft:flowers run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 #minecraft:flowers run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 #minecraft:flowers run teleport @s ^ ^ ^-0.1

execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 #minecraft:carpets run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 #minecraft:carpets run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_engine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 #minecraft:carpets run teleport @s ^ ^ ^-0.1

execute as @e[tag=STILL_engine,type=minecraft:armor_stand] at @s store result score @s still.data run data get entity @s Rotation[0]
execute as @e[tag=STILL_engine,type=minecraft:armor_stand] at @s run scoreboard players operation @s still.data += #90 still.data
execute as @e[tag=STILL_engine,type=minecraft:armor_stand] at @s as @e[type=minecart,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=STILL_engine,type=minecraft:armor_stand,sort=nearest,distance=..2,limit=1] still.data
execute as @e[tag=STILL_engine] at @s if entity @a[distance=..2] run data modify entity @s Rotation[0] set from entity @p[distance=..2] Rotation[0]
execute as @e[tag=STILL_engine,type=minecraft:armor_stand] at @s run data modify entity @s Rotation[1] set value 0f
execute as @e[tag=STILL_engine] at @s unless block ^ ^1.5 ^1 air unless block ^ ^1.5 ^1 torch unless block ^ ^1.5 ^1 grass unless block ^ ^1.5 ^1 tall_grass unless block ^ ^1.5 ^1 #carpets unless block ^ ^1.5 ^1 #flowers unless block ^ ^1.5 ^1 #rails if block ^ ^2.5 ^1 air run teleport @s ~ ~1 ~
execute as @e[tag=STILL_engine] at @s if block ^ ^0.6 ^-1.5 air if block ^ ^0.6 ^1 air run teleport @s ~ ~-1 ~

execute as @e[tag=STILL_engine] at @s if block ^ ^1.3 ^-1.5 air if block ^ ^1.3 ^1 air run teleport @s ~ ~-0.1 ~
execute as @e[tag=STILL_engine] at @s if block ^ ^1.3 ^-1.5 torch if block ^ ^1.3 ^1 torch run teleport @s ~ ~-0.1 ~
execute as @e[tag=STILL_engine] at @s unless block ^ ^1.3 ^1 air unless block ^ ^1.3 ^1 torch unless block ^ ^1.3 ^1 grass unless block ^ ^1.3 ^1 tall_grass unless block ^ ^1.3 ^1 #carpets unless block ^ ^1.3 ^1 #flowers unless block ^ ^1.3 ^1 #rails if block ^ ^2.5 ^1 air run teleport @s ~ ~0.1 ~
execute as @e[tag=STILL_engine] at @s unless block ^ ^1.3 ^-1.5 air unless block ^ ^1.3 ^-1.5 torch unless block ^ ^1.3 ^-1.5 grass unless block ^ ^1.3 ^-1.5 tall_grass unless block ^ ^1.3 ^-1.5 #carpets unless block ^ ^1.3 ^-1.5 #flowers unless block ^ ^1.3 ^-1.5 #rails if block ^ ^2.5 ^-1.5 air run teleport @s ~ ~0.1 ~






execute as @e[type=minecraft:armor_stand,tag=STILL_BHengine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 air run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_BHengine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 torch run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_BHengine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.5 air run teleport @s ^ ^ ^-0.1
execute as @e[tag=STILL_BHengine,type=minecraft:armor_stand] at @s store result score @s still.data run data get entity @s Rotation[0]
execute as @e[tag=STILL_BHengine,type=minecraft:armor_stand] at @s run scoreboard players operation @s still.data += #90 still.data
execute as @e[tag=STILL_BHengine,type=minecraft:armor_stand] at @s as @e[type=minecart,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=STILL_BHengine,type=minecraft:armor_stand,sort=nearest,distance=..2,limit=1] still.data
execute as @e[tag=STILL_BHengine] at @s if entity @a[distance=..2] run data modify entity @s Rotation[0] set from entity @p[distance=..2] Rotation[0]
execute as @e[tag=STILL_BHengine,type=minecraft:armor_stand] at @s run data modify entity @s Rotation[1] set value 0f

execute as @e[tag=STILL_BHengine] at @s unless block ^ ^1.6 ^1 air unless block ^ ^1.6 ^1 torch if block ^ ^2.5 ^1 air run teleport @s ~ ~1 ~

execute as @e[tag=STILL_BHengine] at @s if block ^ ^0.6 ^-1.5 air if block ^ ^0.6 ^1 air run teleport @s ~ ~-1 ~

execute as @e[tag=STILL_BHengine] at @s if block ^ ^1.5 ^-1.5 air if block ^ ^1.5 ^1 air run teleport @s ~ ~-0.1 ~
execute as @e[tag=STILL_BHengine] at @s unless block ^ ^1.5 ^1 air unless block ^ ^1.5 ^1 torch if block ^ ^2.7 ^1 air run teleport @s ~ ~0.1 ~
execute as @e[tag=STILL_BHengine] at @s unless block ^ ^1.5 ^-1 air unless block ^ ^1.5 ^-1 torch if block ^ ^2.5 ^1 air run teleport @s ~ ~0.1 ~


execute as @a[scores={still.STILL=-1}] at @s run scoreboard players add @s still.backS 1
execute as @a[scores={still.backS=19}] at @s run playsound still:backs master @a[distance=..20] ~ ~ ~ 100 1 1
execute as @a[scores={still.backS=20..}] at @s run scoreboard players reset @s still.backS
execute as @a at @s unless score @s still.STILL matches -1 run scoreboard players reset @s still.backS









execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 air run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 torch run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 air run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 torch run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 air run teleport @s ^ ^ ^-0.1
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 torch run teleport @s ^ ^ ^-0.1

execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 grass run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 grass run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 grass run teleport @s ^ ^ ^-0.1

execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 minecraft:tall_grass run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 minecraft:tall_grass run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 minecraft:tall_grass run teleport @s ^ ^ ^-0.1

execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 #minecraft:flowers run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 #minecraft:flowers run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 #minecraft:flowers run teleport @s ^ ^ ^-0.1

execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=1},distance=..4] if block ^ ^2.3 ^1 #minecraft:carpets run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=2},distance=..4] if block ^ ^2.3 ^1 #minecraft:carpets run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:armor_stand,tag=STILL_GSengine] at @s if entity @a[scores={still.STILL=-1},distance=..4] if block ^ ^2.3 ^-2.2 #minecraft:carpets run teleport @s ^ ^ ^-0.1

execute as @e[tag=STILL_GSengine,type=minecraft:armor_stand] at @s store result score @s still.data run data get entity @s Rotation[0]
execute as @e[tag=STILL_GSengine,type=minecraft:armor_stand] at @s run scoreboard players operation @s still.data += #90 still.data
execute as @e[tag=STILL_GSengine,type=minecraft:armor_stand] at @s as @e[type=minecart,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=STILL_GSengine,type=minecraft:armor_stand,sort=nearest,distance=..2,limit=1] still.data
execute as @e[tag=STILL_GSengine] at @s if entity @a[distance=..2] run data modify entity @s Rotation[0] set from entity @p[distance=..2] Rotation[0]
execute as @e[tag=STILL_GSengine,type=minecraft:armor_stand] at @s run data modify entity @s Rotation[1] set value 0f
execute as @e[tag=STILL_GSengine] at @s unless block ^ ^1.5 ^1 air unless block ^ ^1.4 ^1 torch unless block ^ ^1.4 ^1 grass unless block ^ ^1.5 ^1 tall_grass unless block ^ ^1.5 ^1 #carpets unless block ^ ^1.5 ^1 #flowers unless block ^ ^1.5 ^1 #rails if block ^ ^2.5 ^1 air run teleport @s ~ ~1 ~
execute as @e[tag=STILL_GSengine] at @s if block ^ ^0.6 ^-1.5 air if block ^ ^0.6 ^1 air run teleport @s ~ ~-1 ~

execute as @e[tag=STILL_GSengine] at @s if block ^ ^1.3 ^-1.5 air if block ^ ^1.3 ^1 air run teleport @s ~ ~-0.1 ~
execute as @e[tag=STILL_GSengine] at @s if block ^ ^1.3 ^-1.5 torch if block ^ ^1.3 ^1 torch run teleport @s ~ ~-0.1 ~
execute as @e[tag=STILL_GSengine] at @s unless block ^ ^1.1 ^1 air unless block ^ ^1.1 ^1 torch unless block ^ ^1.3 ^1 grass unless block ^ ^1.3 ^1 tall_grass unless block ^ ^1.3 ^1 #carpets unless block ^ ^1.3 ^1 #flowers unless block ^ ^1.3 ^1 #rails if block ^ ^2.5 ^1 air run teleport @s ~ ~0.1 ~
execute as @e[tag=STILL_GSengine] at @s unless block ^ ^1.1 ^-1.5 air unless block ^ ^1.1 ^-1.5 torch unless block ^ ^1.3 ^-1.5 grass unless block ^ ^1.3 ^-1.5 tall_grass unless block ^ ^1.3 ^-1.5 #carpets unless block ^ ^1.3 ^-1.5 #flowers unless block ^ ^1.3 ^-1.5 #rails if block ^ ^2.5 ^-1.5 air run teleport @s ~ ~0.1 ~