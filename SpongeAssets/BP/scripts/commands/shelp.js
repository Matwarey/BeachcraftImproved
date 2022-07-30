/**
 * @name shelp
 * @param {object} message - Message object
 */
export function shelp(message) {
    // validate that required params are defined
    if (!message) return console.warn(`${new Date()} | ` + "Error: ${message} isnt defined. Did you forget to pass it? (./commands/shelp.js:11)");

    message.cancel = true;

    let player = message.sender;
    
    // make sure the user has permissions to run the command
    if(!player.hasTag("op")) 
        return player.runCommand(`function shelp`);

    return player.runCommand(`function shelp`);
}
