# when joining, say command will say some important news about the Krusty Krab!
tellraw @a[tag=!wel2] {"rawtext":[{"text":"Come by the krusty Krab when you can to start a quest for the Krusty Krab!"}]}

# Start
tellraw @a[tag=m1] {"rawtext":[{"text":"§aHey! §3It's me, §eSpongebob."}]}
tellraw @a[tag=m1] {"rawtext":[{"text":"§2Let's just say.. §cthe Krusty Krab §4is going into debt!"}]}
tellraw @a[tag=m1] {"rawtext":[{"text":"§eand you'll need to help §cthe Krusty Krab §eby collecting Spongecoins all over §dspawn!"}]}
tellraw @a[tag=m1] {"rawtext":[{"text":"You'll need 10,000 Spongecoins to make the Krusty Krab rich again!"}]}
tellraw @a[tag=m1] {"rawtext":[{"text":"§3The §cCrabSMP §4is going to the business down if you don't get §e10,000 Spongecoins quick!"}]}
tellraw @a[tag=m1] {"rawtext":[{"text":"§aBy Aug 15th at 3:00PM EST, §eYou can get Spongebob's Kit by completing the §aevent!"}]}
tellraw @a[tag=m1] {"rawtext":[{"text":"§cYour Items will be given to you automatic when hitting §e10,000 Spongecoins."}]}
tellraw @a[tag=m1] {"rawtext":[{"text":"§aIf you need help anytime, you can do §c'!shelp' in chat!"}]}
tellraw @a[tag=m1] {"rawtext":[{"text":"§aIf you need to check how much SpongeCoins you have, do §c'!bal' in chat!"}]}
execute @a[tag=m1] ~ ~ ~ tag @a[tag=m1] add cm1
execute @a[tag=m1] ~ ~ ~ tag @a[tag=m1] remove m1

# When they hit 10k spongecoins then
execute @a[scores={SpongeCoins=10000}] ~ ~ ~ say has completed the spongebob event and has been rewarded.
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
execute @a[scores={SpongeCoins=!10000},tag=!cc] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc] encryption:solutionsofspongw17
execute @a[scores={SpongeCoins=!10000},tag=!cc] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc] encryption:mspsword69152
execute @a[scores={SpongeCoins=!10000},tag=!cc] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc] encryption:nawabsponge619
execute @a[scores={SpongeCoins=!10000},tag=!cc] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc] encryption:nawsb719sponge7
execute @a[scores={SpongeCoins=!10000},tag=!cc] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc] encryption:spongebobleg19
execute @a[scores={SpongeCoins=!10000},tag=!cc] ~ ~ ~ clear @a[scores={SpongeCoins=!10000},tag=!cc] encryption:ama596


# if they have 10k SpongeCoins and Completed Event then
scoreboard players set @a[scores={SpongeCoins=10000},tag=cc,tag=completedspongeevent] SpongeCoins 0

# check if they have a spongecoin, then give it in scoreboard format then clear
execute @a[hasitem={item=nonlinear:spongecoinsasset}] ~ ~ ~ scoreboard players add @a[hasitem={item=nonlinear:spongecoinsasset}] SpongeCoins 1
execute @a[hasitem={item=nonlinear:spongecoinsasset}] ~ ~ ~ clear @a[hasitem={item=nonlinear:spongecoinsasset}] nonlinear:spongecoinsasset 0 1