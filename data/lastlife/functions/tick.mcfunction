#  RNG tick
scoreboard players add #clock_time RNG 1
execute if score #clock_time RNG matches 992.. run scoreboard players set #clock_time RNG 1

#  Timekeeper tick
scoreboard players remove timekeeper countdown 1
execute if score timekeeper countdown matches 1200 run function lastlife:boogey/warn
execute if score timekeeper countdown matches 220 run function lastlife:boogey/suspense/begin
execute if score timekeeper countdown matches 180 run function lastlife:boogey/suspense/3
execute if score timekeeper countdown matches 140 run function lastlife:boogey/suspense/2
execute if score timekeeper countdown matches 100 run function lastlife:boogey/suspense/1
execute if score timekeeper countdown matches 60 run function lastlife:boogey/suspense/youare
execute if score timekeeper countdown matches 0 run function lastlife:boogey/choose
execute if score timekeeper countdown matches 0 run scoreboard players set timekeeper keeptime 0
execute if score timekeeper countdown matches -90 as @a if score @s boogeykill matches 0 run title @s title {"text": "You have failed","color": "#E38317"}
execute if score timekeeper countdown matches -90 as @a if score @s boogeykill matches 0 run title @s subtitle {"text": "You Have Lost a Life to the Curse","color": "#F42B0D","bold": true}

#  Detect player death
execute as @a run execute if score @s deathdetector matches 1 run function lastlife:ondeath