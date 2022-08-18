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
scoreboard objectives add still.snUse minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add still.sn dummy
scoreboard objectives add still.hwtime dummy
scoreboard objectives add still.hwhight dummy
scoreboard players set #90 still.data 90
execute as @a[scores={still.lv=1..}] at @s run scoreboard players reset @s still.joinftime
execute as @a[scores={still.lv=1..}] at @s run scoreboard players reset @s still.lv