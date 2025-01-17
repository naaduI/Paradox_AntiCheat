# make sure they are allowed to use this command
tellraw @s[type=player,tag=!op] {"rawtext":[{"text":"\n§r§4[§6Paradox§4]§r §4§lHey! §rYou must be Paradox-Opped to use this function!"}]}
execute @s[tag=!op] ~~~ tellraw @a[tag=op] {"rawtext":[{"text":"\n§r§4[§6Paradox§4]§r "},{"selector":"@s"},{"text":" has tried to toggle Gamemode 0 (Survival) without perms!"}]}

# allow
execute @s[type=player,tag=op,scores={gms=..0}] ~~~ scoreboard players set paradox:config gms 1
execute @s[type=player,tag=op,scores={gms=..0}] ~~~ tellraw @a[tag=op] {"rawtext":[{"text":"\n§r§4[§6Paradox§4]§r "},{"selector":"@s"},{"text":" has disallowed §4Gamemode 0 (Survival)§r to be used!"}]}

# deny
execute @s[type=player,tag=op,scores={gms=1..}] ~~~ scoreboard players set paradox:config gms 0
execute @s[type=player,tag=op,scores={gms=1..}] ~~~ tellraw @a[tag=op] {"rawtext":[{"text":"\n§r§4[§6Paradox§4]§r "},{"selector":"@s"},{"text":" has allowed §6Gamemode 0 (Survival)§r to be used!"}]}

scoreboard players operation @a gms = paradox:config gms