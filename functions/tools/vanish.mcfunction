tag @s[tag=vanish] add novanish
tag @s[tag=novanish] remove vanish
event entity @s[tag=novanish] unvanish
effect @s[tag=novanish] clear
tellraw @s[tag=novanish] {"rawtext":[{"text":"\n§4[§6Paradox§4] §rYou are no longer in vanish!"}]}
execute @s[tag=novanish] ~~~ tellraw @a[tag=op] {"rawtext":[{"text":"§r§4[§6Paradox§4]§r "},{"selector":"@s"},{"text":" is no longer vanished."}]}

tag @s[tag=!novanish] add vanish
event entity @s[tag=vanish,tag=!novanish] vanish
tellraw @s[tag=vanish,tag=!novanish] {"rawtext":[{"text":"\n§4[§6Paradox§4] §rYou are now in vanish!"}]}
execute @s[tag=vanish,tag=!novanish] ~~~ tellraw @a[tag=op] {"rawtext":[{"text":"§r§4[§6Paradox§4]§r "},{"selector":"@s"},{"text":" is now vanished."}]}

tag @s[tag=novanish] remove novanish
