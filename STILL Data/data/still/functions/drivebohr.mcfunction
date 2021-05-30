scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1002}}}] still.bohrUse

execute as @e[type=armor_stand,tag=STILL_BHengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1] hotbar.3 lime_dye{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s lime_dye{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_BHengine] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1] hotbar.5 red_dye{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s red_dye{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}

execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1] hotbar.4 carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Bohrer: on/off","color":"green","italic":false}'}} 1
execute as @e[type=armor_stand,tag=STILL_BHengine] at @s unless score @s still.bohr matches 1 as @e[type=minecart,distance=..2] at @s run replaceitem entity @p[distance=..1] hotbar.4 carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Bohrer: on/off","color":"red","italic":false}'}} 1
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Bohrer: on/off","color":"green","italic":false}'}}
execute as @a at @s unless entity @e[type=armor_stand,tag=STILL_eg,distance=..2] run clear @s carrot_on_a_stick{CustomModelData:1002,display:{Name:'{"text":"Bohrer: on/off","color":"red","italic":false}'}}

execute as @a[scores={still.bohrUse=1}] at @s run scoreboard players add @e[type=armor_stand,limit=1,sort=nearest,distance=..2,tag=STILL_BHengine] still.bohr 1
execute as @a[scores={still.bohrUse=1}] at @s run scoreboard players reset @s still.bohrUse
execute as @e[scores={still.bohr=2..},type=armor_stand,tag=STILL_BHengine] at @s run scoreboard players reset @s still.bohr


execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"Vorwärts","color":"green","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL 1
execute as @a[nbt={SelectedItem:{id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"Rückwärts","color":"red","italic":false}'}}}}] at @s run scoreboard players set @s still.STILL -1


gamerule showDeathMessages true


execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s run fill ^1 ^2 ^1.3 ^-1 ^3 ^1.3 air destroy
gamerule showDeathMessages false
execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s positioned ^ ^2 ^2 run effect give @e[distance=..1,type=!zombie,type=!skeleton,type=!stray,type=!phantom,type=!zombie_villager,type=!husk,type=!drowned] instant_damage 1 0 true
execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s positioned ^ ^2 ^2 run summon area_effect_cloud ~ ~ ~ {Tags:["drillkill"]}
gamerule showDeathMessages false
execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s positioned ^ ^2 ^2 run effect give @e[distance=..1,type=zombie] instant_health 1 0 true
execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s positioned ^ ^2 ^2 run effect give @e[distance=..1,type=skeleton] instant_health 1 0 true
execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s positioned ^ ^2 ^2 run effect give @e[distance=..1,type=phantom] instant_health 1 0 true
execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s positioned ^ ^2 ^2 run effect give @e[distance=..1,type=stray] instant_health 1 0 true
execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s positioned ^ ^2 ^2 run effect give @e[distance=..1,type=husk] instant_health 1 0 true
execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s positioned ^ ^2 ^2 run effect give @e[distance=..1,type=drowned] instant_health 1 0 true
execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s positioned ^ ^2 ^2 run effect give @e[distance=..1,type=zombie_villager] instant_health 1 0 true
gamerule showDeathMessages false
execute as @e[type=armor_stand,tag=STILL_BHengine,scores={still.bohr=1}] at @s positioned ^ ^2 ^2 as @a[scores={drillkill=1..}] at @s if entity @e[type=area_effect_cloud,distance=..1] run tellraw @a [{"selector":"@s"},{"text":" was proceed by Mining Drill"}]
scoreboard players reset @a drillkill


