scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1002}}}] still.fireUse

execute as @e[type=armor_stand,tag=STILL_TKengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_TKengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:4b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_TKengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:red_dye",Slot:5b}]} run teleport @s ~ ~0.1 ~


execute as @e[type=armor_stand,tag=STILL_TKengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 4,5 und 6 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_TKengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:4b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 4,5 und 6 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_TKengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:red_dye",Slot:5b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 4,5 und 6 benötigt","color":"gold"}

execute as @e[type=armor_stand,tag=STILL_TKengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:3b}]},nbt=!{Inventory:[{Slot:3b,id:"minecraft:lime_dye"}]}] hotbar.3 lime_dye{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s lime_dye{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_TKengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:5b}]},nbt=!{Inventory:[{Slot:5b,id:"minecraft:lime_dye"}]}] hotbar.5 red_dye{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s red_dye{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_TKengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.4 carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Fire Missile","color":"dark_red","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_TKengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:4b}]}] hotbar.4 carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Fire Missile","color":"dark_red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Fire Missile","color":"dark_red","italic":false}'}}



execute as @a[scores={still.fireUse=1},gamemode=!creative,gamemode=!spectator] at @s if data entity @s {Inventory:[{id:"minecraft:fire_charge"}]} run clear @s fire_charge 1
execute as @a[scores={still.fireUse=1},gamemode=!creative,gamemode=!spectator] at @s unless data entity @s {Inventory:[{id:"minecraft:fire_charge"}]} run scoreboard players reset @s still.fireUse


execute as @a[scores={still.fireUse=1}] at @s run summon armor_stand ~ ~ ~ {Tags:["STILL_tank_missile"],Small:1b,ArmorItems:[{}, {}, {}, {id:"minecraft:tnt",Count:1b}],Invulnerable:1b,Invisible:1b}
execute as @a[scores={still.fireUse=1}] at @s run tp @e[type=armor_stand,tag=STILL_tank_missile,distance=..1] @s
execute as @a[scores={still.fireUse=1}] at @s as @e[type=armor_stand,tag=STILL_tank_missile,distance=..1] at @s run data modify entity @s Rotation[1] set value 0f
execute as @a[scores={still.fireUse=1}] at @s as @e[type=armor_stand,tag=STILL_tank_missile,distance=..1] at @s run teleport @s ~ ~1 ~
execute as @a[scores={still.fireUse=1..}] at @s run scoreboard players reset @s still.fireUse

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Fire Missile","color":"dark_red","italic":false}'},CustomModelData:1002}}}] at @s run effect give @s slowness 1 200 true

execute as @e[type=armor_stand,tag=STILL_tank_missile] at @s run teleport @s ^ ^ ^0.8
execute as @e[type=armor_stand,tag=STILL_tank_missile] at @s run teleport @s ^ ^ ^0.8
execute as @e[type=armor_stand,tag=STILL_tank_missile] at @s run teleport @s ^ ^ ^0.8
execute as @e[type=armor_stand,tag=STILL_tank_missile] at @s run teleport @s ^ ^ ^0.8
execute as @e[type=armor_stand,tag=STILL_tank_missile] at @s unless block ~ ~ ~ #minecraft:drivable_through run summon tnt ~ ~ ~
execute as @e[type=armor_stand,tag=STILL_tank_missile] at @s unless block ^ ^ ^1 #minecraft:drivable_through run summon tnt ~ ~ ~
execute as @e[type=armor_stand,tag=STILL_tank_missile] at @s unless block ^ ^ ^-1 #minecraft:drivable_through run summon tnt ~ ~ ~
execute as @e[type=armor_stand,tag=STILL_tank_missile] at @s unless block ~ ~ ~ #minecraft:drivable_through run kill @s
execute as @e[type=armor_stand,tag=STILL_tank_missile] at @s unless entity @a[distance=..40] run kill @s


execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL 1
execute as @a[nbt={SelectedItem:{id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL -1


