/* eslint no-var: "off"*/
/* eslint no-redeclare: "off"*/
import * as Minecraft from "mojang-minecraft";

const World = Minecraft.world;

/**
 * @name deop
 * @param {object} message - Message object
 * @param {array} args - Additional arguments provided.
 */
export function deop(message, args) {
    // validate that required params are defined
    if (!message) return console.warn(`${new Date()} | ` + "Error: ${message} isnt defined. Did you forget to pass it? (./commands/moderation/op.js:14)");
    if (!args) return console.warn(`${new Date()} | ` + "Error: ${args} isnt defined. Did you forget to pass it? (./commands/moderation/op.js:15)");

    message.cancel = true;

    let player = message.sender;
    
    // make sure the user has permissions to run the command
    try {
        player.dimension.runCommand(`testfor @a[name="${player.nameTag}",tag=op]`);
    } catch (error) {
        return player.dimension.runCommand(`tellraw "${player.nameTag}" {"rawtext":[{"text":"§r§4[§6Paradox§4]§r "},{"text":"You need to be Paradox-Opped to use this command."}]}`);
    }
    
    // try to find the player requested
    if (args.length) for (let pl of World.getPlayers()) if (pl.nameTag.toLowerCase().includes(args[0].toLowerCase().replace("@", "").replace("\"", ""))) var member = pl;
    
    if (!member) return player.dimension.runCommand(`tellraw "${player.nameTag}" {"rawtext":[{"text":"§r§4[§6Paradox§4]§r "},{"text":"Couldnt find that player!"}]}`);

    return player.dimension.runCommand(`execute "${member.nameTag}" ~~~ function deop`);
}