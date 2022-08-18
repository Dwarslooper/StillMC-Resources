scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1002}}}] still.snUse

execute as @e[type=armor_stand,tag=STILL_SNengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:4b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:red_dye",Slot:5b}]} run teleport @s ~ ~0.1 ~


execute as @e[type=armor_stand,tag=STILL_SNengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 4,5 und 6 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:4b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 4,5 und 6 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s as @e[type=minecart,tag=STILL_seat,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:red_dye",Slot:5b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 4,5 und 6 benötigt","color":"gold"}

execute as @e[type=armor_stand,tag=STILL_SNengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:3b}]}] hotbar.3 lime_dye{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s lime_dye{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_SNengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:5b}]}] hotbar.5 red_dye{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s red_dye{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_SNengine,scores={still.sn=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.4 carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Schieber: up/down","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s unless score @s still.sn matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.4 carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Schieber: up/down","color":"red","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_SNengine,scores={still.sn=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:4b}]}] hotbar.4 carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Schieber: up/down","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s unless score @s still.sn matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:4b}]}] hotbar.4 carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Schieber: up/down","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Schieber: up/down","color":"green","italic":false}'}}
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Schieber: up/down","color":"red","italic":false}'}}

execute as @a[scores={still.snUse=1}] at @s run scoreboard players add @e[type=armor_stand,limit=1,sort=nearest,distance=..2,tag=STILL_SNengine] still.sn 1
execute as @a[scores={still.snUse=1}] at @s run scoreboard players reset @s still.snUse
execute as @e[scores={still.sn=2..},type=armor_stand,tag=STILL_SNengine] at @s run scoreboard players reset @s still.sn


execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL 1
execute as @a[nbt={SelectedItem:{id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL -1


execute as @e[type=armor_stand,tag=STILL_SNengine] at @s if score @s still.sn matches 1 positioned ^0.5 ^1.6 ^1.8 if block ^ ^-1 ^0.6 air run clone ^ ^ ^ ^ ^ ^ ^ ^-1 ^ masked move
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s if score @s still.sn matches 1 positioned ^-0.5 ^1.6 ^1.8 if block ^ ^-1 ^0.6 air run clone ^ ^ ^ ^ ^ ^ ^ ^-1 ^ masked move
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s if score @s still.sn matches 1 positioned ^ ^1.6 ^1.8 if block ^ ^-1 ^0.6 air run clone ^ ^ ^ ^ ^ ^ ^ ^-1 ^0.6 masked move

execute as @e[type=armor_stand,tag=STILL_SNengine] at @s if score @s still.sn matches 1 positioned ^0.5 ^1.6 ^1.8 unless block ^ ^-1 ^0.6 air at @s positioned ^-0.5 ^1.6 ^1.8 unless block ^ ^-1 ^0.6 air at @s positioned ^ ^1.6 ^1.8 unless block ^ ^-1 ^0.6 air at @s positioned ^ ^1.6 ^1.5 if block ^2 ^ ^ air run clone ^0.1 ^ ^ ^1 ^ ^ ^2 ^ ^ masked move
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s if score @s still.sn matches 1 positioned ^0.5 ^1.6 ^1.8 unless block ^ ^-1 ^0.6 air at @s positioned ^-0.5 ^1.6 ^1.8 unless block ^ ^-1 ^0.6 air at @s positioned ^ ^1.6 ^1.8 unless block ^ ^-1 ^0.6 air at @s positioned ^ ^1.6 ^1.5 if block ^-2 ^ ^ air run clone ^-0.1 ^ ^ ^-1 ^ ^ ^-2 ^ ^ masked move

execute as @e[type=armor_stand,tag=STILL_SNengine] at @s if score @s still.sn matches 1 positioned ^0.5 ^1.6 ^1.8 run fill ^-1 ^ ^ ^1 ^ ^ air replace snow
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s if score @s still.sn matches 1 positioned ^0.5 ^1.6 ^1.8 run fill ^-1 ^ ^ ^1 ^ ^ air replace fern
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s if score @s still.sn matches 1 positioned ^0.5 ^1.6 ^1.8 run fill ^-1 ^ ^ ^1 ^ ^ air replace large_fern
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s if score @s still.sn matches 1 positioned ^0.5 ^1.6 ^1.8 run fill ^-1 ^ ^ ^1 ^ ^ air replace grass
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s if score @s still.sn matches 1 positioned ^0.5 ^1.6 ^1.8 run fill ^-1 ^ ^ ^1 ^ ^ air replace tall_grass
execute as @e[type=armor_stand,tag=STILL_SNengine] at @s if score @s still.sn matches 1 positioned ^0.5 ^1.6 ^1.8 run fill ^-1 ^ ^ ^1 ^ ^ air replace #minecraft:flowers