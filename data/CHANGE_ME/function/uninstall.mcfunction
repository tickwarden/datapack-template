#> =============================================================================
#> UNINSTALL FUNCTION
#> =============================================================================

#> Remove Scoreboard Objectives
scoreboard objectives remove CHANGE_ME.main
scoreboard objectives remove CHANGE_ME.tmp
scoreboard objectives remove CHANGE_ME

#> Clear Data Storage
data remove storage change_me:data data
data remove storage change_me:data temp
data remove storage change_me:data global

#> Feedback Message
tellraw @a [{"text":"[CHANGE_ME] ","color":"aqua","bold":true},{"text":"Datapack successfully uninstalled!","color":"red"}]

#> Disable Datapack
datapack disable "file/CHANGE_ME"
