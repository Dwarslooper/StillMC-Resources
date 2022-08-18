scoreboard objectives add st.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add st.cd dummy
scoreboard objectives add st.timer dummy
execute as @a[scores={st.sneak=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'{"text":"Shadowsteel Sword","color":"light_purple","italic":false}'}}}}] at @s unless entity @e[type=armor_stand,distance=..1] run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["st.ast"],ShowArms:1b}
execute as @e[type=armor_stand,tag=st.ast] at @s if data entity @s {HandItems:[{id:"minecraft:diamond_sword"},{}]} if score @p[sort=nearest,distance=..1] st.cd matches 1.. run tellraw @p "Cooldown is not over yet!"
execute as @e[type=armor_stand,tag=st.ast] at @s if data entity @s {HandItems:[{id:"minecraft:diamond_sword"},{}]} if score @p[sort=nearest,distance=..1] st.cd matches 1.. run give @p[gamemode=survival,distance=..1] minecraft:diamond_sword{display:{Name:'{"text":"Shadowsteel Sword","color":"light_purple","italic":false}'},Unbreakable:0b,Damage:-1000,CustomModelData:1,Enchantments:[{id:"minecraft:sharpness",lvl:44s},{id:"minecraft:knockback",lvl:2s},{id:"minecraft:looting",lvl:2s},{id:"minecraft:unbreaking",lvl:8s},{id:"minecraft:mending",lvl:100s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:4,Operation:0,UUIDLeast:6716987,UUIDMost:2253961,Slot:"mainhand"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:100,Operation:0,UUIDLeast:-372245,UUIDMost:-34949,Slot:"mainhand"}]} 1
execute as @e[type=armor_stand,tag=st.ast] at @s if data entity @s {HandItems:[{id:"minecraft:diamond_sword"},{}]} if score @p[sort=nearest,distance=..1] st.cd matches 1.. run kill @s


execute as @a[scores={st.sneak=1..}] at @s run teleport @e[type=armor_stand,distance=..1,sort=nearest,tag=st.ast] ~ ~ ~ ~ ~
execute as @a at @s unless score @s st.sneak matches 1.. run kill @e[type=armor_stand,distance=..1,sort=nearest,tag=st.ast]
execute as @e[type=armor_stand,tag=st.ast] at @s if data entity @s {HandItems:[{id:"minecraft:diamond_sword"},{}]} run give @p[gamemode=survival,distance=..1] minecraft:diamond_sword{display:{Name:'{"text":"Shadowsteel Sword","color":"light_purple","italic":false}'},Unbreakable:0b,Damage:-1000,CustomModelData:1,Enchantments:[{id:"minecraft:sharpness",lvl:44s},{id:"minecraft:knockback",lvl:2s},{id:"minecraft:looting",lvl:2s},{id:"minecraft:unbreaking",lvl:8s},{id:"minecraft:mending",lvl:100s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:4,Operation:0,UUIDLeast:6716987,UUIDMost:2253961,Slot:"mainhand"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:100,Operation:0,UUIDLeast:-372245,UUIDMost:-34949,Slot:"mainhand"}]} 1
execute as @e[type=armor_stand,tag=st.ast] at @s if data entity @s {HandItems:[{id:"minecraft:diamond_sword"},{}]} run xp add @p -1 levels
execute as @e[type=armor_stand,tag=st.ast] at @s if data entity @s {HandItems:[{id:"minecraft:diamond_sword"},{}]} run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["st.sw"],Invulnerable:1b}
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'{"text":"Shadowsteel Sword","color":"light_purple","italic":false}'}}}}] at @s if entity @e[type=armor_stand,distance=..1,sort=nearest,tag=st.sw] run scoreboard players set @s st.cd 10
execute as @e[type=armor_stand,tag=st.ast] at @s if data entity @s {HandItems:[{id:"minecraft:diamond_sword"},{}]} run teleport @e[type=armor_stand,distance=..0.1,sort=nearest,tag=st.sw] ^ ^ ^0.6 ~ ~
execute as @e[type=armor_stand,tag=st.ast] at @s if data entity @s {HandItems:[{id:"minecraft:diamond_sword"},{}]} run kill @s
execute as @e[type=armor_stand,tag=st.sw] at @s run teleport @s ^ ^ ^0.8
execute as @e[type=armor_stand,tag=st.sw] at @s run summon minecraft:area_effect_cloud ~ ~1 ~ {Particle:"composter",Radius:1f,Duration:20,Effects:[{Id:25b,Amplifier:10b,Duration:20,ShowParticles:0b}]}
execute as @e[type=armor_stand,tag=st.sw] at @s unless block ~ ~1 ~ air run kill @s
execute as @e[type=armor_stand,tag=st.ast] at @s unless entity @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'{"text":"Shadowsteel Sword","color":"light_purple","italic":false}'}}}},distance=..1] run kill @s
execute as @a[scores={st.sneak=1..}] at @s run scoreboard players reset @s st.sneak
execute as @a[scores={st.cd=0..}] at @s run scoreboard players add @s st.timer 1
execute as @a[scores={st.timer=20..}] at @s run scoreboard players remove @s st.cd 1
execute as @a[scores={st.timer=20..}] at @s run scoreboard players reset @s st.timer
execute as @a[scores={st.cd=0},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'{"text":"Shadowsteel Sword","color":"light_purple","italic":false}'}}}}] at @s run title @s actionbar ""
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'{"text":"Shadowsteel Sword","color":"light_purple","italic":false}'}}}},scores={st.cd=1..}] at @s run title @s actionbar [{"text":"Shockwave ready in ","color":"light_purple"},{"score":{"name":"@s","objective":"st.cd"},"bold":true},{"text":" seconds"}]

