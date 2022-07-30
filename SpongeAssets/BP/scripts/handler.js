import config from "./data/config.js";

// import all our commands
import { bal } from "./commands/bal.js";
import { shelp } from "./commands/shelp.js";

/**
 * @name commandHandler
 * @param {object} player - The player that has sent the message
 * @param {object} message - Message data
 */
export function commandHandler(player, message) {
    // validate that required params are defined
    if (!player) return console.warn(`${new Date()} | ` + "Error: ${player} isnt defined. Did you forget to pass it? (./handler.js:13)");
    if (!message) return console.warn(`${new Date()} | ` + "Error: ${message} isnt defined. Did you forget to pass it? (./handler.js:14)");

    if (config.debug) console.warn(`${new Date()} | ` + "did run command handler");

    // checks if the message starts with our prefix, if not exit
    if (!message.message.startsWith(config.customcommands.prefix)) return;

    let args = message.message.slice(config.customcommands.prefix.length).split(/ +/);

    const commandName = args.shift().toLowerCase();

    if (config.debug) console.warn(`${new Date()} | ${player.name} used the command: ${config.customcommands.prefix}${commandName} ${args.join(" ")}`);

    // this wont work if you use a command alias
    if(config.customcommands[commandName] === false) {
        player.runCommand(`tellraw @s {"rawtext":[{"text":"§r§6[§eSpongebob Support§6]§r "},{"text":"This command has been disabled in config.js. If this was a mistake please contact your server owner,"}]}`);
        message.cancel = true;
        return;
    }

    try {
        if (config.customcommands.bal && commandName === "bal") bal(message, args);
        else if (config.customcommands.shelp && commandName === "shelp" || commandName === "shelp") shelp(message, args);
        else return;
    } catch (error) {
        console.warn(`${new Date()} | ` + `${error} ${error.stack}`);
        return player.runCommand(`tellraw @s {"rawtext":[{"text":"§r§6[§eSpongebob Support§6]§r "},{"text":"There was an error while trying to run this command. Please forward this message to support.\n-------------------------\nCommand: ${String(message.message).replace(/"|\\/g, "")}\nError: ${String(error).replace(/"|\\/g, "")}\n${error.stack}\n-------------------------"}]}`);
    }
}
