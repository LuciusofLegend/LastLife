#  RNG tick
scoreboard players add #clock_time RNG 1
execute if score #clock_time RNG matches 992.. run scoreboard players set #clock_time RNG 1

#  Timekeeper tick
scoreboard players remove timekeeper boogeycountdown 1
execute if score timekeeper boogeycountdown matches 1200 run function lastlife:boogey/warn
execute if score timekeeper boogeycountdown matches 220 run function lastlife:boogey/suspense/begin
execute if score timekeeper boogeycountdown matches 180 run function lastlife:boogey/suspense/3
execute if score timekeeper boogeycountdown matches 140 run function lastlife:boogey/suspense/2
execute if score timekeeper boogeycountdown matches 100 run function lastlife:boogey/suspense/1
execute if score timekeeper boogeycountdown matches 60 run function lastlife:boogey/suspense/youare
execute if score timekeeper boogeycountdown matches 0 run function lastlife:boogey/choose

#  Detect player death
execute as @a run execute if score @s deathdetector matches 1 run function lastlife:ondeath