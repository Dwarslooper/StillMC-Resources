scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:999}}}] still.warnUse
scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1000}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1001}}}] still.kpUse
scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1003}}}] still.ldUse


execute as @e[type=minecraft:item,tag=hi1] at @s run data modify entity @s Item.id set from entity Dwarslooper Inventory[0].id


execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:2b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:2b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{id:"minecraft:red_dye",Slot:4b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:5b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:6b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]} run teleport @s ~ ~0.1 ~


execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:2b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:2b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 3,4,5,6 und 7 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 3,4,5,6 und 7 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{id:"minecraft:red_dye",Slot:4b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 3,4,5,6 und 7 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:5b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 3,4,5,6 und 7 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:6b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 3,4,5,6 und 7 benötigt","color":"gold"}


execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..0.5,nbt=!{Inventory:[{Slot:2b}]},nbt=!{Inventory:[{Slot:2b,id:"minecraft:lime_dye"}]}] hotbar.2 lime_dye{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s lime_dye{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..0.5,nbt=!{Inventory:[{Slot:3b}]},nbt=!{Inventory:[{Slot:3b,id:"minecraft:lime_dye"}]}] hotbar.3 lime_dye{display:{Name:'{"text":"Vorwärts x2","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s lime_dye{display:{Name:'{"text":"Vorwärts x2","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_engine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..0.5,nbt=!{Inventory:[{Slot:4b}]},nbt=!{Inventory:[{Slot:4b,id:"minecraft:lime_dye"}]}] hotbar.4 red_dye{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s red_dye{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_engine,scores={still.warn=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..0.5,nbt={Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.5 carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_engine] at @s unless score @s still.warn matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..0.5,nbt={Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.5 carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"red","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_engine,scores={still.warn=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..0.5,nbt=!{Inventory:[{Slot:5b}]}] hotbar.5 carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_engine] at @s unless score @s still.warn matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..0.5,nbt=!{Inventory:[{Slot:5b}]}] hotbar.5 carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"red","italic":false}'}}
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_engine,scores={still.ankp=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..0.5,nbt={Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.6 carrot_on_a_stick{CustomModelData:1000,display:{Name:'{"text":"Anhänger: on/off","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_engine] at @s unless score @s still.ankp matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..0.5,nbt={Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.6 carrot_on_a_stick{CustomModelData:1001,display:{Name:'{"text":"Anhänger: on/off","color":"red","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_engine,scores={still.ankp=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..0.5,nbt=!{Inventory:[{Slot:6b}]}] hotbar.6 carrot_on_a_stick{CustomModelData:1000,display:{Name:'{"text":"Anhänger: on/off","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_engine] at @s unless score @s still.ankp matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..0.5,nbt=!{Inventory:[{Slot:6b}]}] hotbar.6 carrot_on_a_stick{CustomModelData:1001,display:{Name:'{"text":"Anhänger: on/off","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:1001,display:{Name:'{"text":"Anhänger: on/off","color":"red","italic":false}'}}
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:1000,display:{Name:'{"text":"Anhänger: on/off","color":"green","italic":false}'}}

execute as @a[scores={still.warnUse=1}] at @s run scoreboard players add @e[type=armor_stand,limit=1,sort=nearest,distance=..2,tag=STILL_engine] still.warn 1

execute as @e[scores={still.warn=2..},type=armor_stand,tag=STILL_engine] at @s run scoreboard players reset @s still.warn


execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL 1
execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Vorwärts x2","color":"green","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL 2
execute as @a[nbt={SelectedItem:{id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL -1
execute as @a[nbt=!{SelectedItem:{id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}}},nbt=!{SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}}},nbt=!{SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Vorwärts x2","color":"green","italic":false}'}}}}] at @s run scoreboard players reset @s still.STILL

execute as @e[scores={still.warn=1},type=armor_stand,tag=STILL_engine] at @s run scoreboard players add @s still.warnT 1
execute as @e[scores={still.warnT=19},type=armor_stand,tag=STILL_engine] at @s run replaceitem entity @s armor.head paper{CustomModelData:1000}
execute as @e[scores={still.warnT=1},type=armor_stand,tag=STILL_engine] at @s run replaceitem entity @s armor.head paper{CustomModelData:999}
execute as @e[scores={still.warnT=20..},type=armor_stand,tag=STILL_engine] at @s run scoreboard players reset @s still.warnT


execute as @e[tag=STILL_anhaenger,type=minecraft:armor_stand] at @s store result score @s still.data run data get entity @s Rotation[0]
execute as @e[tag=STILL_anhaenger,type=minecraft:armor_stand] at @s run scoreboard players operation @s still.data += #90 still.data
execute as @e[tag=STILL_anhaenger,type=minecraft:armor_stand] at @s as @e[type=chest_minecart,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=STILL_anhaenger,type=minecraft:armor_stand,sort=nearest,distance=..2,limit=1] still.data

execute as @e[type=minecraft:armor_stand,tag=STILL_engine,scores={still.ankp=1}] at @s if score @p[distance=..2] still.STILL matches 1..2 run summon minecraft:area_effect_cloud ^ ^-0.6 ^-2 {Tags:["still.ah_rout_back","still.ah_rout"],Duration:1}
execute as @e[type=minecraft:armor_stand,tag=STILL_engine,scores={still.ankp=1}] at @s if score @p[distance=..2] still.STILL matches -1 run summon minecraft:area_effect_cloud ^ ^-0.6 ^1 {Tags:["still.ah_rout_front","still.ah_rout"],Duration:1}
execute as @e[type=minecraft:armor_stand,tag=STILL_anhaenger] at @s run teleport @s ~ ~ ~ facing entity @e[type=area_effect_cloud,limit=1,tag=still.ah_rout,tag=still.ah_rout_back,distance=..4,sort=nearest] eyes
execute as @e[type=minecraft:armor_stand,tag=STILL_anhaenger] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=still.ah_rout_back,tag=still.ah_rout,distance=..4,sort=nearest,limit=1] eyes unless entity @e[tag=STILL_engine,distance=..3.2] unless entity @e[tag=STILL_anhaenger,distance=0.1..3.2] unless entity @e[tag=STILL_anhaenger1,distance=0.1..3.2] run teleport @s ^ ^ ^0.6
execute as @e[type=minecraft:armor_stand,tag=STILL_anhaenger] at @s run teleport @s ~ ~ ~ facing entity @e[type=area_effect_cloud,limit=1,tag=still.ah_rout_front,tag=still.ah_rout,distance=..4,sort=nearest] eyes
execute as @e[type=minecraft:armor_stand,tag=STILL_anhaenger] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=still.ah_rout_front,tag=still.ah_rout,distance=..4,sort=nearest,limit=1] eyes unless entity @e[tag=STILL_engine,distance=..2.2] unless entity @e[tag=STILL_anhaenger,distance=0.1..3.2] unless entity @e[tag=STILL_anhaenger1,distance=0.1..3.2] run teleport @s ^ ^ ^0.6
execute as @e[tag=STILL_anhaenger] at @s run data modify entity @s Rotation[0] set value 0



execute as @e[tag=STILL_anhaenger1,type=minecraft:armor_stand] at @s store result score @s still.data run data get entity @s Rotation[0]
execute as @e[tag=STILL_anhaenger1,type=minecraft:armor_stand] at @s run scoreboard players operation @s still.data += #90 still.data
execute as @e[tag=STILL_anhaenger1,type=minecraft:armor_stand] at @s as @e[type=minecart,distance=..2] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=STILL_anhaenger1,type=minecraft:armor_stand,sort=nearest,distance=..2,limit=1] still.data

execute as @e[type=minecraft:armor_stand,tag=STILL_anhaenger1] at @s run teleport @s ~ ~ ~ facing entity @e[type=area_effect_cloud,limit=1,tag=still.ah_rout,tag=still.ah_rout_back,distance=..4,sort=nearest] eyes
execute as @e[type=minecraft:armor_stand,tag=STILL_anhaenger1] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=still.ah_rout_back,tag=still.ah_rout,distance=..4,sort=nearest,limit=1] eyes unless entity @e[tag=STILL_engine,distance=..3.2] unless entity @e[tag=STILL_anhaenger1,distance=0.1..3.2] unless entity @e[tag=STILL_anhaenger,distance=0.1..3.2] run teleport @s ^ ^ ^0.6
execute as @e[type=minecraft:armor_stand,tag=STILL_anhaenger1] at @s run teleport @s ~ ~ ~ facing entity @e[type=area_effect_cloud,limit=1,tag=still.ah_rout_front,tag=still.ah_rout,distance=..4,sort=nearest] eyes
execute as @e[type=minecraft:armor_stand,tag=STILL_anhaenger1] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=still.ah_rout_front,tag=still.ah_rout,distance=..4,sort=nearest,limit=1] eyes unless entity @e[tag=STILL_engine,distance=..2.2] unless entity @e[tag=STILL_anhaenger1,distance=0.1..3.2] unless entity @e[tag=STILL_anhaenger,distance=0.1..3.2] run teleport @s ^ ^ ^0.6
execute as @e[tag=STILL_anhaenger] at @s run data modify entity @s Rotation[0] set value 0

execute as @a[scores={still.kpUse=1..}] at @s run scoreboard players add @e[type=armor_stand,limit=1,sort=nearest,tag=STILL_engine] still.ankp 1
execute as @a[scores={still.kpUse=1..}] at @s run scoreboard players reset @s still.kpUse
execute as @e[type=armor_stand,tag=STILL_engine] at @s if score @s still.ankp matches 2.. run scoreboard players reset @s still.ankp



