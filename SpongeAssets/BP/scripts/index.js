import * as Minecraft from "mojang-minecraft";
import { commandHandler } from "./handler.js";

const World = Minecraft.world;

World.events.beforeChat.subscribe(msg => {
	const message = msg.message.toLowerCase();
	const player = msg.sender;
	
	commandHandler(player, msg);
});