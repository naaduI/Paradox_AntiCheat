scoreboard players add @s[type=player,tag=!left,scores={last_attack=4..}] killauravl 1

execute @s[type=player,tag=!left,scores={last_attack=4..}] ~~~ tellraw @a[tag=notify] {"rawtext":[{"text":"§r§4[§6Paradox§4]§r "},{"selector":"@s"},{"text":" §1has failed §7(Combat) §4Killaura/C §7(last_attack="},{"score":{"name":"@s","objective":"last_attack"}},{"text":")§4 VL= "},{"score":{"name":"@s","objective":"killauravl"}}]}

scoreboard players set @s[type=player,tag=!left,scores={last_attack=4..}] last_attack 0