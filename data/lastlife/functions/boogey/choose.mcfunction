#  Choose the boogeyman, or boogeymen
scoreboard players set @r[scores={boogeyman=0,lives=2..}] boogeyman 1
scoreboard players remove randboogeys boogeycount 1

execute if score randboogeys boogeycount matches 1.. run function lastlife:boogey/choose