scoreboard objectives add still.joinftime minecraft.custom:minecraft.play_one_minute
scoreboard objectives add still.lv minecraft.custom:minecraft.leave_game
scoreboard objectives add still.STILL dummy
scoreboard objectives add still.data dummy
scoreboard objectives add still.warnUse minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add still.warn dummy
scoreboard objectives add still.warnT dummy
scoreboard objectives add still.backS dummy
scoreboard objectives add still.ankp dummy
scoreboard objectives add still.kpUse minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add still.bohrUse minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add still.bohr dummy
scoreboard objectives add drillkill deathCount
scoreboard objectives add still.hb dummy
scoreboard objectives add still.ld dummy
scoreboard objectives add still.ldUse minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add still.gstp_hbUse minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add still.gstp_hb dummy
scoreboard objectives add still.infobook minecraft.crafted:minecraft.knowledge_book
scoreboard objectives add still.ldT dummy
scoreboard players set #90 still.data 90
execute as @a[scores={still.lv=1..}] at @s run scoreboard players reset @s still.joinftime
execute as @a[scores={still.lv=1..}] at @s run scoreboard players reset @s still.lv
execute as @a[scores={still.joinftime=1}] at @s run tellraw @s [{"text":"STILL vehicles in Minecraft\n","color":"gold","bold":true,"underlined":true},{"text":"         v Beta 0.9a","color":"dark_green","underlined":false},{"text":"\n        by ","color":"gray","bold":false,"underlined":false},{"text":"Dwarslooper","color":"dark_red","bold":true,"underlined":false},{"text":"\n------------------------","color":"gray","underlined":false},{"text":"\nSTILL Fahrzeuge in Minecraft!\nDies ist die Beta Version des\nDatapacks für STILL Fahrzeuge\nvon Dwarslooper. Zum Datapack\nwird das STILL Ressourcepack\nbenötigt, da ansonsten einige\nTexturen fehlen werden. Du\nkannst es","color":"dark_aqua","bold":false,"underlined":false},{"text":" HIER ","color":"dark_purple","bold":true,"underlined":false,"clickEvent":{"action":"open_url","value":"https://discord.gg/DkarNxM"}},{"text":"Downloaden.","color":"dark_aqua","bold":false,"underlined":false},{"text":"\n\n⚠WARNUNG⚠","color":"red","underlined":false},{"text":" Das Löschen von\njeglichen scoreboards mit\ndem Anfang \"still.\" kann\nzu dauerhaften Fehlfunktionen\ndes Datapacks führen!","color":"red","bold":false,"underlined":false}]