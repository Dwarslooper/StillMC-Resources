execute as @e[type=armor_stand,tag=STILL_HWengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_HWengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:red_dye",Slot:5b}]} run teleport @s ~ ~0.1 ~


execute as @e[type=armor_stand,tag=STILL_HWengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 4,5 und 6 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_HWengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:red_dye",Slot:5b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 4,5 und 6 benötigt","color":"gold"}

execute as @e[type=armor_stand,tag=STILL_HWengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:3b}]},nbt=!{Inventory:[{Slot:3b,id:"minecraft:lime_dye"}]}] hotbar.3 lime_dye{display:{Name:'{"text":"Hoch","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s lime_dye{display:{Name:'{"text":"Hoch","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_HWengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:5b}]},nbt=!{Inventory:[{Slot:5b,id:"minecraft:lime_dye"}]}] hotbar.5 red_dye{display:{Name:'{"text":"Runter","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s red_dye{display:{Name:'{"text":"Runter","color":"red","italic":false}'}}

execute as @e[tag=STILL_HWengine] at @s at @e[type=minecraft:minecart,tag=STILL_seat,distance=..1.482] if entity @p[nbt={SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Hoch","color":"green","italic":false}'}}}},distance=..1] at @s if block ~ ~3.2 ~ air unless score @s still.hwhight matches 64.. positioned ~ ~-2 ~ unless entity @e[tag=still.ah_rout,distance=..4] at @s run teleport @s ~ ~0.1 ~
execute as @e[tag=STILL_HWengine] at @s at @e[type=minecraft:minecart,tag=STILL_seat,distance=..1.482] if entity @p[nbt={SelectedItem:{id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"Runter","color":"red","italic":false}'}}}},distance=..1] at @s if block ~ ~1.4 ~ air unless score @s still.hwhight matches 65.. positioned ~ ~-2 ~ unless entity @e[tag=still.ah_rout,distance=..4] at @s run teleport @s ~ ~-0.1 ~

execute as @e[tag=STILL_HWengine] at @s at @e[type=minecraft:minecart,tag=STILL_seat,distance=..1.482] if entity @p[nbt={SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Hoch","color":"green","italic":false}'}}}},distance=..1] at @s if block ~ ~3.2 ~ air positioned ~ ~-2 ~ unless entity @e[tag=still.ah_rout,distance=..4] at @s run scoreboard players add @s still.hwtime 1
execute as @e[tag=STILL_HWengine] at @s if score @s still.hwtime matches 1 run summon armor_stand ~ ~-0.1 ~ {Tags:["still.hw.back"],Silent:1b,NoGravity:1b,Invisible:1b}
execute as @e[tag=STILL_HWengine] at @s if score @s still.hwtime matches 2..100 run data modify entity @e[type=armor_stand,limit=1,distance=..8,tag=still.hw.back] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=STILL_HWengine] at @s if score @s still.hwtime matches 1 run replaceitem entity @e[type=armor_stand,limit=1,distance=..0.1,tag=still.hw.back] armor.head minecraft:paper{CustomModelData:1001}
execute as @e[tag=STILL_HWengine] at @s if score @s still.hwtime matches 1 run replaceitem entity @s armor.head air
execute as @e[tag=STILL_HWengine,type=minecraft:armor_stand,scores={still.hwtime=3..}] at @s if entity @e[tag=still.hw.back,type=minecraft:armor_stand,distance=..0.1] run scoreboard players reset @s still.hwtime
execute as @e[tag=STILL_HWengine,type=minecraft:armor_stand] at @s unless score @s still.hwtime matches 1.. run kill @e[tag=still.hw.back,type=minecraft:armor_stand,distance=..0.1]
execute as @e[tag=STILL_HWengine,type=minecraft:armor_stand] at @s unless score @s still.hwtime matches 1.. unless data entity @s {ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b}]} run replaceitem entity @s armor.head minecraft:paper{CustomModelData:1001}
execute as @e[tag=STILL_HWengine,type=minecraft:armor_stand] at @s if score @s still.hwtime matches 1.. run particle end_rod ~ ~0.5 ~ 0 0.4 0 0.002 10 normal @a

execute as @e[tag=STILL_HWengine] at @s at @e[type=minecraft:minecart,tag=STILL_seat,distance=..1.482] if entity @p[nbt={SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Hoch","color":"green","italic":false}'}}}},distance=..1] at @s if block ~ ~3.2 ~ air if block ~ ~1.1 ~ air unless score @s still.hwhight matches 64.. positioned ~ ~-2 ~ unless entity @e[tag=still.ah_rout,distance=..4] at @s run scoreboard players add @s still.hwhight 1
execute as @e[tag=STILL_HWengine] at @s at @e[type=minecraft:minecart,tag=STILL_seat,distance=..1.6] if entity @p[nbt={SelectedItem:{id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"Runter","color":"red","italic":false}'}}}},distance=..1] at @s if block ~ ~1.2 ~ air unless score @s still.hwhight matches 65.. positioned ~ ~-2 ~ unless entity @e[tag=still.ah_rout,distance=..4] at @s run scoreboard players remove @s still.hwhight 1

execute as @e[tag=STILL_HWengine] at @s if score @s still.hwhight matches 1.. run data merge entity @e[type=minecart,tag=STILL_HWseat,distance=..1.6,limit=1,sort=nearest] {Invulnerable:1b}
execute as @e[tag=STILL_HWengine] at @s unless score @s still.hwhight matches 1.. run data merge entity @e[type=minecart,tag=STILL_HWseat,distance=..1.6,limit=1,sort=nearest] {Invulnerable:0b}

execute as @e[tag=STILL_HWengine] at @s if score @s still.hwhight matches 1.. run tag @s add STILL_HWfloat
execute as @e[tag=STILL_HWengine] at @s unless score @s still.hwhight matches 1.. run tag @s remove STILL_HWfloat

execute as @e[tag=STILL_HWengine,type=minecraft:armor_stand] at @s store result score @s still.data run data get entity @s Rotation[0]
execute as @e[tag=STILL_HWengine,type=minecraft:armor_stand] at @s run scoreboard players operation @s still.data += #90 still.data
execute as @e[tag=STILL_HWengine,type=minecraft:armor_stand] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=STILL_HWengine,type=minecraft:armor_stand,sort=nearest,distance=..2,limit=1] still.data