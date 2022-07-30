/**
 * @name bal
 * @param {object} message - Message object
 */
export function bal(message) {
    // validate that required params are defined
    if (!message) return console.warn(`${new Date()} | ` + "Error: ${message} isnt defined. Did you forget to pass it? (./commands/bal.js:8)");

    message.cancel = true;

    let player = message.sender;
    
    // make sure the user has permissions to run the command
    if(!player.hasTag("op")) 
        return player.runCommand(`tellraw @s {"rawtext":[{"text":"You have: "},{"score":{"name":"@s","objective":"SpongeCoins"}}]}`);

    return player.runCommand(`tellraw @s {"rawtext":[{"text":"You have: "},{"score":{"name":"@s","objective":"SpongeCoins"}}]}`);
}
