#  RNG tick
scoreboard players add #clock_time RNG 1
execute if score #clock_time RNG matches 992.. run scoreboard players set #clock_time RNG 1

#  Detect player death
execute as @a run execute if score @s deathdetector matches 1 run function lastlife:ondeath