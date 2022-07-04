#  Randomize how many boogeymen will be chosen
scoreboard objectives add attendees dummy
execute as @a[scores={lives=2..}] run scoreboard players add randboogeys attendees 1

scoreboard objectives add 2 dummy
scoreboard players set divideby 2 2

scoreboard players operation randboogeys attendees /= divideby 2
scoreboard objectives add maxboogeys dummy
scoreboard players operation randboogeys maxboogeys = randboogeys attendees

scoreboard players set min RNG 1
scoreboard players operation max RNG = randboogeys maxboogeys

function lastlife:rng/rand
scoreboard objectives add boogeycount dummy
scoreboard players operation randboogeys boogeycount = number RNG