#  Randomize lives between 3 and 5 for all players
scoreboard players set min RNG 3
scoreboard players set max RNG 5
function lastlife:rng/rand
scoreboard players operation @s lives = number RNG