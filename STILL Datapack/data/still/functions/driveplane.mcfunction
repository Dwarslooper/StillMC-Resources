scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1002}}}] still.fireUse

execute as @e[type=armor_stand,tag=STILL_PLengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_PLengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:4b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_PLengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:5b}]} run teleport @s ~ ~0.1 ~


execute as @e[type=armor_stand,tag=STILL_PLengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 4,5 und 6 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_PLengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:4b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 4,5 und 6 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_PLengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:5b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 4,5 und 6 benötigt","color":"gold"}

execute as @e[type=armor_stand,tag=STILL_PLengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:3b}]},nbt=!{Inventory:[{Slot:3b,id:"minecraft:lime_dye"}]}] hotbar.3 lime_dye{display:{Name:'{"text":"Hoch","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s lime_dye{display:{Name:'{"text":"Hoch","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_PLengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:4b}]},nbt=!{Inventory:[{Slot:4b,id:"minecraft:lime_dye"}]}] hotbar.4 lime_dye{display:{Name:'{"text":"Speed up","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s lime_dye{display:{Name:'{"text":"Speed up","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_PLengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:5b}]},nbt=!{Inventory:[{Slot:5b,id:"minecraft:lime_dye"}]}] hotbar.5 lime_dye{display:{Name:'{"text":"Runter","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s lime_dye{display:{Name:'{"text":"Runter","color":"green","italic":false}'}}





execute as @e[type=armor_stand,tag=STILL_PLengine] at @s run title @p[distance=..2] actionbar ["",{"text":"Geschwindigkeit: ","color":"gold"},{"score":{"name":"@e[type=armor_stand,distance=..2,tag=STILL_PLengine]","objective":"still.PLspeed"},"bold":true,"color":"gold"}]