tellraw @s[tag=!op] {"rawtext":[{"text":"\n§r§4[§6Paradox§4]§r §7You are now op!"}]}
tellraw @s[tag=op] {"rawtext":[{"text":"\nTo OP someone use this command: /execute <PlayerName> ~~~ function op."}]}
tag @s[type=player,tag=!op] add op
tellraw @a[tag=op] {"rawtext":[{"text":"\n§r§4[§6Paradox§4]§r "},{"selector":"@s"},{"text":" is now Paradox-Opped."}]}