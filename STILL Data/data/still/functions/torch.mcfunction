summon area_effect_cloud ~ ~ ~ {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~6 ~ ~ {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~-6 ~ ~ {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~-6 ~ ~6 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~6 ~ ~-6 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~ ~ ~6 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~ ~ ~-6 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~-6 ~ ~-6 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~6 ~ ~6 {Duration:22,Tags:["still.torch"]}

summon area_effect_cloud ~ ~ ~ {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~12 ~ ~ {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~-12 ~ ~ {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~-12 ~ ~12 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~12 ~ ~-12 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~ ~ ~12 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~ ~ ~-12 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~-12 ~ ~-12 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~12 ~ ~12 {Duration:22,Tags:["still.torch"]}

summon area_effect_cloud ~ ~ ~ {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~18 ~ ~ {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~-18 ~ ~ {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~-18 ~ ~18 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~18 ~ ~-18 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~ ~ ~18 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~ ~ ~-18 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~-18 ~ ~-18 {Duration:22,Tags:["still.torch"]}
summon area_effect_cloud ~18 ~ ~18 {Duration:22,Tags:["still.torch"]}

execute as @e[type=area_effect_cloud,tag=still.torch] at @s run setblock ~ ~-1 ~ cobblestone keep
execute as @e[type=area_effect_cloud,tag=still.torch] at @s run setblock ~ ~ ~ torch keep