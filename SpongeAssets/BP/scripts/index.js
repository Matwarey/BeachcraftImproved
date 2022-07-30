import * as Minecraft from "mojang-minecraft";
import config from "./data/config.js";
import { commandHandler } from "./handler.js";

const World = Minecraft.world;

World.events.beforeChat.subscribe(msg => {
    const message = msg.message.toLowerCase();
    const player = msg.sender;

    if (config.debug && message === "ping") console.warn(`${new Date()} | Pong!`);

    if(player.hasTag("op")) {
        player.runCommand(`tellraw @s {"rawtext":[{"text":"§r§6[§eSpongebob§6]§r "},{"text":"§eSpongebob has loaded Gametest without any errors!"}]}`);
});