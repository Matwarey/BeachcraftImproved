# when joining, say command will say some important news about the Krusty Krab!
say @a[tag=!wel2] Come by the krusty Krab where you can go start a quest for the Krusty Krab!

# Storyline PT1
say @a[tag=m1] Hey! It's me, Spongebob.
say @a[tag=m1] Let's just say.. the Krusty Krab is going into debt!
say @a[tag=m1] and you'll need to help the Krusty Krab by collecting Spongecoins all over the map!
say @a[tag=m1] You'll need 10,000 Spongecoins to make the Krusty Krab rich again!
say @a[tag=m1] The CrabSMP is going to shut the business down if you don't get 10,000 Spongecoins quick!
say @a[tag=m1] By Aug 15th at 3:00PM EST, You can get Spongebob's Kit by completing the event!
say @a[tag=m1] Your Items will be given to you automatic when hitting 10,000 Spongecoins.
say @a[tag=m1] If you need help anytime, you can do '~shelp' in chat!
execute @a[tag=m1] ~ ~ ~ tag @a[tag=m1] remove m1

# When they hit 10k spongecoins then
execute @a[scores={SpongeCoins=10000}] ~ ~ ~ say @a @a[scores={SpongeCoins=10000}] has completed the spongebob event and has been rewarded.
execute @a[scores={SpongeCoins=10000},tag=!cc] ~ ~ ~ tag @a[scores={SpongeCoins=10000,tag=!cc}] add cc
# boots
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:616b0165d3aa4c37a10d95999d4db7ae
# leggings
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:398b945fa1f24b92935d8672e0047c71
# chestplate
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:90cbca1c5325452fb89f7742e27ae082
# helmet
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:8e822758a97d44808cd880b98431135f
# sword
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:5104ef5307084d37b3db3a39d66e9cee
# pickaxe
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:2514c7c365024dc1a24eb646def16984
# add tag after giving items
execute @a[scores={SpongeCoins=10000}] ~ ~ ~ tag @a[scores={SpongeCoins=10000},tag=cc] add completedspongeevent

# check if they have spawn in the items
execute @a[scores=!{SpongeCoins=10000},tag=!cc] ~ ~ ~ clear @a[scores=!{SpongeCoins=10000},tag=!cc] encryption:2514c7c365024dc1a24eb646def16984
execute @a[scores=!{SpongeCoins=10000},tag=!cc] ~ ~ ~ clear @a[scores=!{SpongeCoins=10000},tag=!cc] encryption:5104ef5307084d37b3db3a39d66e9cee
execute @a[scores=!{SpongeCoins=10000},tag=!cc] ~ ~ ~ clear @a[scores=!{SpongeCoins=10000},tag=!cc] encryption:8e822758a97d44808cd880b98431135f
execute @a[scores=!{SpongeCoins=10000},tag=!cc] ~ ~ ~ clear @a[scores=!{SpongeCoins=10000},tag=!cc] encryption:90cbca1c5325452fb89f7742e27ae082
execute @a[scores=!{SpongeCoins=10000},tag=!cc] ~ ~ ~ clear @a[scores=!{SpongeCoins=10000},tag=!cc] encryption:398b945fa1f24b92935d8672e0047c71
execute @a[scores=!{SpongeCoins=10000},tag=!cc] ~ ~ ~ clear @a[scores=!{SpongeCoins=10000},tag=!cc] encryption:616b0165d3aa4c37a10d95999d4db7ae
scoreboard players add @s[scores=!{SpongeCoins=10000},hasitem={item=encryption:2514c7c365024dc1a24eb646def16984},tag=!cc] badscore 1
scoreboard players add @s[scores=!{SpongeCoins=10000},hasitem={item=encryption:5104ef5307084d37b3db3a39d66e9cee},tag=!cc] badscore 1
scoreboard players add @s[scores=!{SpongeCoins=10000},hasitem={item=encryption:8e822758a97d44808cd880b98431135f},tag=!cc] badscore 1
scoreboard players add @s[scores=!{SpongeCoins=10000},hasitem={item=encryption:90cbca1c5325452fb89f7742e27ae082},tag=!cc] badscore 1
scoreboard players add @s[scores=!{SpongeCoins=10000},hasitem={item=encryption:398b945fa1f24b92935d8672e0047c71},tag=!cc] badscore 1
scoreboard players add @s[scores=!{SpongeCoins=10000},hasitem={item=encryption:616b0165d3aa4c37a10d95999d4db7ae},tag=!cc] badscore 1

# notify staff if they have notify tag
# Scythe anticheat has a tag 'notify' so we can just use that.
tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" §1has low score of §7(SpongeCoins) to get Spongebob's Armor §4LowScore §4(VL= "},{"score":{"name":"@s","objective":"badscore"}}]}

# if they have 10k SpongeCoins and Completed Event then
scoreboard players set @s[scores={SpongeCoins=10000},tag=cc,tag=completedspongeevent] SpongeCoins 9995
scoreboard players set @s[tag=cc,tag=completedspongeevent] badscore 0