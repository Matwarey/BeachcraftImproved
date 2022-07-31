# when joining, say command will say some important news about the Krusty Krab!
say @a[tag=!wel2] Come by the krusty Krab when you can to start a quest for the Krusty Krab!

# Start
say @a[tag=m1] §aHey! §3It's me, §eSpongebob.
say @a[tag=m1] §2Let's just say.. §cthe Krusty Krab §4is going into debt!
say @a[tag=m1] §eand you'll need to help §cthe Krusty Krab §eby collecting Spongecoins all over the §dmap!
say @a[tag=m1] You'll need 10,000 Spongecoins to make the Krusty Krab rich again!
say @a[tag=m1] §3The §cCrabSMP §4is going to the business down if you don't get §e10,000 Spongecoins quick!
say @a[tag=m1] §aBy Aug 15th at 3:00PM EST, §eYou can get Spongebob's Kit by completing the §aevent!
say @a[tag=m1] §cYour Items will be given to you automatic when hitting §e10,000 Spongecoins.
say @a[tag=m1] §aIf you need help anytime, you can do §c'~shelp' in chat!
say @a[tag=m1] §aIf you need to check how much SpongeCoins you have, do §c'~bal' in chat!
execute @a[tag=m1] ~ ~ ~ tag @a[tag=m1] add cm1
execute @a[tag=m1] ~ ~ ~ tag @a[tag=m1] remove m1

# When they hit 10k spongecoins then
execute @a[scores={SpongeCoins=10000}] ~ ~ ~ say @a @a[scores={SpongeCoins=10000}] has completed the spongebob event and has been rewarded.
execute @a[scores={SpongeCoins=10000},tag=!cc] ~ ~ ~ tag @a[scores={SpongeCoins=10000},tag=!cc] add cc
# boots
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:ama596
# leggings
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:spongebobleg19
# chestplate
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:nawsb719sponge7
# helmet
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:nawabsponge619
# sword
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:mspsword69152
# pickaxe
execute @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] ~ ~ ~ give @a[scores={SpongeCoins=10000},tag=!completedspongeevent,tag=cc] encryption:solutionsofspongw17
# add tag after giving items
execute @a[scores={SpongeCoins=10000}] ~ ~ ~ tag @a[scores={SpongeCoins=10000},tag=cc] add completedspongeevent

# check if they have spawn in the items
execute @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] encryption:solutionsofspongw17
execute @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] encryption:mspsword69152
execute @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] encryption:nawabsponge619
execute @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] encryption:nawsb719sponge7
execute @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] encryption:spongebobleg19
execute @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc,tag=!cm1] encryption:ama596
scoreboard players add @s[scores={SpongeCoins=!10000},hasitem={item=encryption:solutionsofspongw17},tag=!cc,tag=!cm1] badscore 1
scoreboard players add @s[scores={SpongeCoins=!10000},hasitem={item=encryption:mspsword69152},tag=!cc,tag=!cm1] badscore 1
scoreboard players add @s[scores={SpongeCoins=!10000},hasitem={item=encryption:nawabsponge619},tag=!cc,tag=!cm1] badscore 1
scoreboard players add @s[scores={SpongeCoins=!10000},hasitem={item=encryption:nawsb719sponge7},tag=!cc,tag=!cm1] badscore 1
scoreboard players add @s[scores={SpongeCoins=!10000},hasitem={item=encryption:spongebobleg19},tag=!cc,tag=!cm1] badscore 1
scoreboard players add @s[scores={SpongeCoins=!10000},hasitem={item=encryption:ama596},tag=!cc,tag=!cm1] badscore 1

# notify staff if they have notify tag
tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" §1has low score of §7(SpongeCoins) to get Spongebob's Armor §4LowScore/A §4(VL= "},{"score":{"name":"@s","objective":"badscore"}}]}

# if they have 10k SpongeCoins and Completed Event then
scoreboard players set @s[scores={SpongeCoins=10000},tag=cc,tag=completedspongeevent] SpongeCoins 9995
scoreboard players set @s[tag=cc,tag=completedspongeevent] badscore 0

# check if they have a spongecoin, then give it in scoreboard format then clear
execute @a[hasitem={item=nonlinear:spongecoinsasset}] ~ ~ ~ scoreboard players add @a[hasitem={item=nonlinear:spongecoinsasset}] SpongeCoins 1
execute @a[hasitem={item=nonlinear:spongecoinsasset}] ~ ~ ~ clear @a[hasitem={item=nonlinear:spongecoinsasset}] nonlinear:spongecoinsasset 0 1