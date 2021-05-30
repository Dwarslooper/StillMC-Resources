scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:999}}}] still.warnUse
scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1000}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1001}}}] still.kpUse
scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1003}}}] still.ldUse
scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1004}}}] still.gstp_hbUse



execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:2b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:2b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{id:"minecraft:red_dye",Slot:4b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:5b}]} run teleport @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:6b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]} run teleport @s ~ ~0.1 ~


execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:2b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:2b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 3,4,5,6 und 7 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:3b}]} unless data entity @s {Inventory:[{id:"minecraft:lime_dye",Slot:3b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 3,4,5,6 und 7 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{id:"minecraft:red_dye",Slot:4b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 3,4,5,6 und 7 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:5b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:5b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 3,4,5,6 und 7 benötigt","color":"gold"}
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s as @p[distance=..0.5] at @s if data entity @s {Inventory:[{Slot:6b}]} unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]} run title @s actionbar {"text":"Achtung! Für dieses Fahrzeug werden die Inventarslots 3,4,5,6 und 7 benötigt","color":"gold"}





execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:2b}]},nbt=!{Inventory:[{Slot:2b,id:"minecraft:lime_dye"}]}] hotbar.2 lime_dye{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s lime_dye{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:3b}]},nbt=!{Inventory:[{Slot:3b,id:"minecraft:lime_dye"}]}] hotbar.3 lime_dye{display:{Name:'{"text":"Vorwärts x2","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s lime_dye{display:{Name:'{"text":"Vorwärts x2","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_GSengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:4b}]},nbt=!{Inventory:[{Slot:4b,id:"minecraft:red_dye"}]}] hotbar.4 red_dye{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s red_dye{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}


execute as @e[type=armor_stand,tag=STILL_GSengine] at @s run summon area_effect_cloud ^ ^2 ^2 {Tags:["gstp_hold.l"],Duration:2}
execute as @e[tag=gs_bengine,type=armor_stand] at @s unless entity @e[type=area_effect_cloud,distance=..1,tag=gstp_hold.l] run kill @s


execute as @e[type=armor_stand,tag=STILL_GSengine,scores={still.warn=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt={Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.5 carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s unless score @s still.warn matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt={Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.5 carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"red","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_GSengine,scores={still.warn=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:5b}]},nbt=!{Inventory:[{Slot:5b}]}] hotbar.5 carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s unless score @s still.warn matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:5b}]},nbt=!{Inventory:[{Slot:5b}]}] hotbar.5 carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"red","italic":false}'}}
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:999,display:{Name:'{"text":"Warnleuchte on/off","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_GSengine,scores={still.ld=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt={Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.6 carrot_on_a_stick{CustomModelData:1003,display:{Name:'{"text":"Laden on/off","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s unless score @s still.ld matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt={Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.6 carrot_on_a_stick{CustomModelData:1003,display:{Name:'{"text":"Laden on/off","color":"red","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_GSengine,scores={still.ld=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:6b}]},nbt=!{Inventory:[{Slot:6b}]}] hotbar.6 carrot_on_a_stick{CustomModelData:1003,display:{Name:'{"text":"Laden on/off","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s unless score @s still.ld matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:6b}]},nbt=!{Inventory:[{Slot:6b}]}] hotbar.6 carrot_on_a_stick{CustomModelData:1003,display:{Name:'{"text":"Laden on/off","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:1003,display:{Name:'{"text":"Laden on/off","color":"red","italic":false}'}}
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:1003,display:{Name:'{"text":"Laden on/off","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_GSengine,scores={still.gstp_hb=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt={Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.7 carrot_on_a_stick{CustomModelData:1004,display:{Name:'{"text":"Stufe: down","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s unless score @s still.gstp_hb matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt={Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.7 carrot_on_a_stick{CustomModelData:1004,display:{Name:'{"text":"Stufe: up","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_GSengine,scores={still.gstp_hb=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:7b}]},nbt=!{Inventory:[{Slot:7b}]}] hotbar.7 carrot_on_a_stick{CustomModelData:1004,display:{Name:'{"text":"Stufe: down","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_GSengine] at @s unless score @s still.gstp_hb matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1,nbt=!{Inventory:[{Slot:7b}]},nbt=!{Inventory:[{Slot:7b}]}] hotbar.7 carrot_on_a_stick{CustomModelData:1004,display:{Name:'{"text":"Stufe: up","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:1004,display:{Name:'{"text":"Stufe: down","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:1004,display:{Name:'{"text":"Stufe: up","color":"green","italic":false}'}} 1





execute as @a[scores={still.warnUse=1}] at @s run scoreboard players add @e[type=armor_stand,limit=1,sort=nearest,distance=..2,tag=STILL_GSengine] still.warn 1
execute as @a[scores={still.warnUse=1}] at @s run scoreboard players reset @s still.warnUse
execute as @e[scores={still.warn=2..},type=armor_stand,tag=STILL_GSengine] at @s run scoreboard players reset @s still.warn

execute as @a[scores={still.ldUse=1}] at @s run scoreboard players add @e[type=armor_stand,limit=1,sort=nearest,distance=..2,tag=STILL_GSengine] still.ld 1
execute as @a[scores={still.ldUse=1}] at @s run scoreboard players reset @s still.ldUse
execute as @e[scores={still.ld=2..},type=armor_stand,tag=STILL_GSengine] at @s run scoreboard players reset @s still.ld

execute as @a[scores={still.gstp_hbUse=1}] at @s run scoreboard players add @e[type=armor_stand,limit=1,sort=nearest,distance=..2,tag=STILL_GSengine] still.gstp_hb 1
execute as @a[scores={still.gstp_hbUse=1}] at @s run scoreboard players reset @s still.gstp_hbUse
execute as @e[scores={still.gstp_hb=2..},type=armor_stand,tag=STILL_GSengine] at @s run scoreboard players reset @s still.gstp_hb



execute as @e[tag=STILL_GSengine] at @s if score @s still.gstp_hb matches 1 unless data entity @s {ArmorItems:[{}, {}, {}, {id:"minecraft:paper",Count:1b,tag:{CustomModelData: 1005}}]} unless data entity @s {ArmorItems:[{}, {}, {}, {id:"minecraft:paper",Count:1b,tag:{CustomModelData: 1006}}]} run replaceitem entity @s armor.head paper{CustomModelData:1005}
execute as @e[tag=STILL_GSengine] at @s unless score @s still.gstp_hb matches 1 unless data entity @s {ArmorItems:[{}, {}, {}, {id:"minecraft:paper",Count:1b,tag:{CustomModelData: 1003}}]} unless data entity @s {ArmorItems:[{}, {}, {}, {id:"minecraft:paper",Count:1b,tag:{CustomModelData: 1004}}]} run replaceitem entity @s armor.head paper{CustomModelData:1003}



execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL 1
execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Vorwärts x2","color":"green","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL 2
execute as @a[nbt={SelectedItem:{id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL -1
execute as @a[nbt=!{SelectedItem:{id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}}},nbt=!{SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}}},nbt=!{SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Vorwärts x2","color":"green","italic":false}'}}}}] at @s run scoreboard players reset @s still.STILL

execute as @e[scores={still.warn=1},type=armor_stand,tag=STILL_GSengine] at @s run scoreboard players add @s still.warnT 1
execute as @e[scores={still.warnT=19},type=armor_stand,tag=STILL_GSengine] at @s unless score @s still.gstp_hb matches 1 run replaceitem entity @s armor.head paper{CustomModelData:1004}
execute as @e[scores={still.warnT=1},type=armor_stand,tag=STILL_GSengine] at @s unless score @s still.gstp_hb matches 1 run replaceitem entity @s armor.head paper{CustomModelData:1003}
execute as @e[scores={still.warnT=19},type=armor_stand,tag=STILL_GSengine] at @s if score @s still.gstp_hb matches 1 run replaceitem entity @s armor.head paper{CustomModelData:1006}
execute as @e[scores={still.warnT=1},type=armor_stand,tag=STILL_GSengine] at @s if score @s still.gstp_hb matches 1 run replaceitem entity @s armor.head paper{CustomModelData:1005}
execute as @e[scores={still.warnT=20..},type=armor_stand,tag=STILL_GSengine] at @s run scoreboard players reset @s still.warnT