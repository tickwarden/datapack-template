#> Objectives
scoreboard objectives add CHANGE_ME.main dummy
scoreboard objectives add CHANGE_ME.tmp dummy
scoreboard objectives add CHANGE_ME trigger
scoreboard players enable @a CHANGE_ME

#> Storage Initialization
data modify storage change_me:data version set value "0.1.0"
execute unless data storage change_me:data temp run data modify storage change_me:data temp set value {}
execute unless data storage change_me:data data run data modify storage change_me:data data set value {}
execute unless data storage change_me:data global run data modify storage change_me:data global set value {}

#> Debug Message & Status
data modify storage change_me:data global.loaded set value 1b
tellraw @a [{"text":"[CHANGE_ME] ","color":"aqua","bold":true},{"text":"Datapack successfully loaded!","color":"green"}]
