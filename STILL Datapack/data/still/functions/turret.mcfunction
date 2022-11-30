execute as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] if score @e[tag=turret_attack,distance=..30,sort=nearest,limit=1] still.y >= @s still.y run teleport @s ~ ~ ~ facing entity @e[tag=turret_attack,distance=..30,sort=nearest,limit=1] feet
execute as @e[tag=STILL_TRbullet] at @s run teleport @s ^ ^ ^1
execute as @e[tag=STILL_TRbullet] at @s unless entity @a[distance=..40] run kill @s
execute as @e[tag=STILL_TRbullet] at @s run effect give @e[tag=turret_attack,distance=..2] minecraft:instant_damage 1 200 true
execute as @e[tag=STILL_TRbullet] at @s run effect give @e[tag=turret_attack,distance=..2] minecraft:instant_health 1 200 true
execute as @e[tag=STILL_TRbullet] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 0 normal
execute as @e[tag=turret_attack] at @s store result score @s still.y run data get entity @s Pos[1]
execute as @e[tag=STILL_MTturret] at @s store result score @s still.y run data get entity @s Pos[1]

execute unless score turret_timer still.data matches 20.. run scoreboard players add turret_timer still.data 1

execute if score turret_timer still.data matches 20.. run execute as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] if score @e[tag=turret_attack,distance=..30,sort=nearest,limit=1] still.y >= @s still.y run particle minecraft:lava ~ ~1.4 ~ 0 0 0 0 4
execute if score turret_timer still.data matches 20.. run execute as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] if score @e[tag=turret_attack,distance=..30,sort=nearest,limit=1] still.y >= @s still.y run playsound minecraft:entity.firework_rocket.blast master @a[distance=..30] 0 0 0 100 0
execute if score turret_timer still.data matches 20.. run execute as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] if score @e[tag=turret_attack,distance=..30,sort=nearest,limit=1] still.y >= @s still.y run summon minecraft:armor_stand ~ ~1.4 ~ {Tags:["STILL_TRbullet"],Small:1b,Invisible:1b}
execute if score turret_timer still.data matches 20.. run execute as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] if score @e[tag=turret_attack,distance=..30,sort=nearest,limit=1] still.y >= @s still.y positioned ~ ~2 ~ run data modify entity @e[type=minecraft:armor_stand,tag=STILL_TRbullet,limit=1,sort=nearest] Rotation set from entity @s Rotation

execute if score turret_timer still.data matches 20.. as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] run tag @e[type=zombie] add turret_attack
execute if score turret_timer still.data matches 20.. as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] run tag @e[type=husk] add turret_attack
execute if score turret_timer still.data matches 20.. as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] run tag @e[type=#skeletons] add turret_attack
execute if score turret_timer still.data matches 20.. as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] run tag @e[type=#raiders] add turret_attack
execute if score turret_timer still.data matches 20.. as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] run tag @e[type=wandering_trader] add turret_attack
execute if score turret_timer still.data matches 20.. as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] run tag @e[type=spider] add turret_attack
execute if score turret_timer still.data matches 20.. as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] run tag @e[type=cave_spider] add turret_attack
execute if score turret_timer still.data matches 20.. as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] run tag @e[type=creeper] add turret_attack
execute if score turret_timer still.data matches 20.. as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] run tag @e[type=drowned] add turret_attack
execute if score turret_timer still.data matches 20.. as @e[tag=STILL_MTturret] at @s if entity @a[distance=..40] run tag @e[type=horse] add turret_attack

execute if score turret_timer still.data matches 20.. run scoreboard players set turret_timer still.data 0