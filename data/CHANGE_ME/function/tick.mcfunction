#> =============================================================================
#> TICK FUNCTION (Executed 20 times per second)
#> =============================================================================

#> Performance Gate: Abort execution if no players are online
execute unless entity @a run return 0

#> -----------------------------------------------------------------------------
#> 1. GLOBAL LOGIC & TIMERS
#> -----------------------------------------------------------------------------
# Add your global timers, tick counters, or system tasks here.
# Example:
scoreboard players add $global CHANGE_ME.main 1


#> -----------------------------------------------------------------------------
#> 2. PLAYER ITERATION & CONTEXT LOGIC
#> -----------------------------------------------------------------------------
# Run player-specific tick logic using a scoped selector (@s).
# Always enforce scope-bound selectors for multiplayer safety.
# Example:
execute as @a at @s run function CHANGE_ME:player/tick
