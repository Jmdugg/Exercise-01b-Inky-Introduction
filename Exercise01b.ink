/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> Cave_Mouth

== Cave_Mouth ==
You are at the entrance of a cave. There are sharp, yellowish stalactites and stalagmites protruding from the ceiling and floor of the cave entrance behind you. {not Torch_Pickup:There is a torch on the floor.} The cave extends straight forward to a fork with two tunnels.
+[Take the Left tunnel] -> Left_Tunnel
+{Torch_Pickup} [Take the Right tunnel] -> Right_Tunnel
+{not Torch_Pickup} [Take the Right tunnel] -> Right_Tunnel3

*[Pick up the Torch] -> Torch_Pickup

=== Torch_Pickup ===
You now have a Torch. May it light the way.
+[Go Back] -> Cave_Mouth
-> END

== Left_Tunnel ==
You are in the Left Tunnel. The air becomes very humid and warm and it whooshes past you in and out with a slow pattern, almost like breathing. It is very dark, you can't see anything.
+ {Torch_Pickup} [Light Torch] -> Left_Tunnel_Lit
+[Go Back] -> Cave_Mouth
-> END
=== Left_Tunnel_Lit ===
The light of your Torch reflects off of the {not Sword_Pickup: hilt of a sword stuck in} the rock.The walls are moist, sweaty almost, and they have a deep greyish red color.  
*[Try pulling the sword out] -> Sword_Pickup
+[Go Back] -> Cave_Mouth
-> END

=== Sword_Pickup ===
After some tugging, the sword pulls away from the rock with a soft metallic scrape. You now have a sword.
+[Inspect Sword] -> Inspect_Sword
+[Go Back] -> Left_Tunnel_Lit
-> END
= Inspect_Sword
The sword's hilt is plain except for a carving. Upon closer inspection you note that it reads "Beast-Slayer 3000"
+[Go Back] -> Left_Tunnel_Lit
-> END

=== Right_Tunnel3 ===
You are in the Right Tunnel. A wave of stench hits you. It smells like sulfur, yuck. You can hear a faint bubbling sound in the distance, however, it's pitch black and you can't see anything. There is no way you're going in there without a light.
+[Go Back] -> Cave_Mouth
-> END


== Right_Tunnel ==
You are in the Right Tunnel. A wave of stench hits you. It smells like sulfur, yuck. You pinch your nose and press onward. Suddenly you walk into a great cavern with what looks to be a lake of bubbling acid. You peer closer and see that there are objects bobbing around in the bubbles. Coins, Gems, and an iron gauntlet. You think that you can use something{Sword_Pickup:, maybe the Beast-Slayer 3000,} and pick an item out of the acid. 
+{Sword_Pickup}[Collect the Coins] -> Coin_Collection
+{Sword_Pickup}[Collect the Gems] -> Ending_1
+{Sword_Pickup}[Collect the Iron Gauntlet] -> Gauntlet_Collection
+[Go Back] -> Cave_Mouth
-> END

=== Gauntlet_Collection ===
Well considering you have no idea what you'll meet in this cave, maybe the gauntlet is a good choice. You lean over the edge of the acid, readying the Beast-Slayer 3000. With a deft flick of your wrist the gauntlet flies up and over the edge of the lake, landing at your feet. It's actually pretty cool looking! But uh, it's waaaay too big to fit either of your hands properly. Oh well, you decide to keep it as a momento of your adventures. At the very least, maybe you can hit something with it. 
*[Go Back] -> Right_Tunnel2
-> END

== Coin_Collection ==
You lean forward towards the vat of acid and with a skillful flick of your wrist, and perfect timing ...success! The coin flies upwards and lands next to you. You pick it up and pocket it. Not a huge amount of loot, but a win is a win. This will get you a whole cow back home.
*[Go Back] -> Right_Tunnel2
-> END

== Right_Tunnel2 ==
You are in the Right Tunnel. You can still see that there are objects bobbing around in the bubbles. But, to be honest it was kinda scary getting that {Gauntlet_Collection: gauntlet} {Coin_Collection: coin} and you don't want to risk falling in. Better to just move on.
*[Go Back] -> Cave_Mouth2

=== Ending_1 ===
As you peer over the edge of the lake, and reach the Beast-Slayer 3000 out into the acid, you give one massive flick of the wrist and...totally fail. You lose your balance and tumble into the acid, flinging the Beast-Slayer 3000 into the wall, in almost the exact same way you found it. The only thing left to tell your story. Ending 1 of 7
-> END

=== Cave_Mouth2 ===
You are back at the entrance of the Cave. All of a sudden, there is a rumbling and the ground begins to shake. You spin around, what is going on?! You run towards the entrance of the cave but it's closing! Wait, it's closing?! Your brain takes a minute to piece it together that you are literally in the belly of a beast. What do you do?!
+[Stab the Ceiling] -> Outside
+{Gauntlet_Collection} [Throw the Gauntlet] -> Where
+{Coin_Collection} [Throw the Coin] -> Where
+[Jump through the teeth] -> Ending_3
-> END

= Where
You whip your head around looking for a place to throw this thing. You could throw it down the Left Tunnel, which you have determined to be some lungs, or you could throw it down the Right Tunnel, which seemed to be a stomach. 
+[Stomach] -> Ending_4
+{Gauntlet_Collection}[Lungs] -> Ending_2
+{Coin_Collection}[Lungs] -> Ending_7
-> END
=== Ending_2 ===
That's it! If you got something stuck in your throat you'd probably cough a little, right? You throw the Iron Gauntlet with as much strength as you can into the Beast's lungs. With one great cough of the Beast you end up on the ground outside. You quickly get up, start running, and never look back. There is no way you want to meet the thing that killed whoever weilded the Beast-Slayer 3000 before you. Ending 2 of 7
-> END
=== Ending_3 ===
That's it! Your only chance of making it out of here alive is to make a dash for the exit now. With the misguided athletics of a not-so-olympic gymnast you leap through the gaps in the Beast's teeth and...get absolutely chomped. Your loot tumbles to the ground and you are swallowed down into the vat of acid that is the Beast's stomach. So much for that idea. Ending 3 of 7 
-> END

=== Ending_4 ===
That's it! What would make you regurgitate your food? Of course an upset tummy! You chuck the only loot you got from this stupid "cave" down into the tunnel that leads to the stomach and...nothing happens. What? Did you think that the loot you originally got from the stomach of the Beast would make it's tummy hurt? Maybe the next time you are facing imminent death you should take some time to think a little harder. You are chomped, chewed, and swallowed. Ending 4 of 7
-> END

=== Outside ===
That's it! What would make you open your mouth? Something pointy! You whip out the Beast-Slayer 3000 and stab upwards as if the beast were biting the corner of a pointy chip. The beast opens it's mouth and you make a run for it with your (somewhat dissapointing and not worth it) loot. Behind you is a Beast as big as a mountain, and probably as old as one too. Trees cover it's back and it appears to be napping. What to do...
+[Slay the Beast] -> Beast_Slayer_3000
+[Wait] -> Beast_Friends_Forever
-> END
= Beast_Slayer_3000
You can't believe you wasted so much time wandering around inside a freaking Beast's body and all you got was a stupid {Gauntlet_Collection: iron gauntlet!} {Coin_Collection: Coin!} (They should make a T-shirt out of this crud) You ready the Beast-Slayer 3000 and chaaaaaarge!...Your sword makes contact with the Beast's rock-like exterior and snaps like a twig. Why did you think you could defeat a beast that is literally as old as the mountains with a sword called "Beast-Slayer 3000". Tch, what hubris. You wander home feeling like an idiot. Ending 5 of 7
-> END

=== Beast_Friends_Forever ===
Dazed and confused you just stand there looking at the Beast. Suddenly, it snores so loud that it seems to have woken itself up! Startled...you continue to just stand there. Then, the Beast speaks: "Ahhh I feel like I havent breathed this clearly in ages, is this your doing?" After considering it, you did happen to remove the sword from the Beast's lungs, so you respond with a tentative "yes?" The Beast chuckles and says, "Very well, I'll spare you. But if you happen to stab me in the mouth like a hard tortilla chip again, I'll eat you alive." You and the Beast are now Beast Friends Forever and you hang out sometimes. Ending 6 of 7
-> END

=== Ending_7 ===
Considering the loot you collected, a sword and a coin, you think that the sword is a little bit cooler than the coin. If you had to lose one by throwing it into the lung of a Beast, you'd pick the coin. You hurl the coin into the lungs of the Beast and...nothing happens. Its too small to make any kind of impact large enough to make the Beast cough you out. The Beast's mouth closes and you are swallowed whole. Ending 7 of 7
-> END

