# Description:
#   Example scripts for you to examine and try out.
#

_ = require 'lodash'

random_quotes = [
  # Echo recordings

  "Directive one: Protect humanity! Directive two: Obey Jack at all costs. Directive three: Dance!",
  "Commencing directive three! Uhntssuhntssuhntss--",
  "Ahh -- one of my very first startup sequences! The memories...",
  "Who -- uh, me sir?",
  "I can do more than open doors sir! We CL4P-TP units can be programmed to do anything from open doors to ninja-sassinate highly important Janitory officals!",
  "Certainly!",
  "I once started a revolution myself.",
  "There were lots of guns and a lot of dying.",
  "You'd think I would have gotten some better benefits out of the whole thing but no, demoted back to door-opening servitude!",
  "Sure thing, sir! Aaaand OPEN!",
  "Have a lovely afternoon, and thank you for using Hyperion Robot Services.",
  "Let me know if you have any other portal-rific needs!",
  "Booting sequence complete...",
  "Hello! I am your new steward bot. Designation: CL4P-TP, Hyperion Robot, Class C.",
  # "Please adjust factory settings to meet your needs before deployment.",
  "Yes. Remember what? Are... are you my father?",
  "-- Are you god? Am I dead?",
  "I'M DEAD I'M DEAD OHMYGOD I'M DEAD!",
  "O-KAY! Thanks for giving me a second chance, God. I really appreciate it.",

  # Character selection

  "Hey everybody! Check out my package!",
  "Let's get this party started!",
  "Glitching weirdness is a term of endearment, right?",
  "Recompiling my combat code!",
  "This time it'll be awesome, I promise!",
  "Look out everybody! Things are about to get awesome!",

  # Spotting health

  "Health! Eww, what flavor is red?",
  "Health over here!",
  "Sweet life juice!",
  "I found health!",
  "Healsies!",

  # Running out of ammo

  "Where'd all my bullets go?",
  "Bullets are dumb.",
  "Who needs ammo anyway, am I right?",
  "I need tiny death pellets!",
  "Need some ammo!",
  "Dangit, I'm out!",
  "Ammo reserves are spent!",
  "Crap, no more shots left!",
  "Hnngh! Empty!",
  "Coming up empty!",

  # Jumping a gap

  "Wheeeee!",
  "Yahooooo!",
  "Aaaaaaahhh!",
  "Watch as we observe the rare and beautiful Clappy Bird!",
  "I'm flying! I'm really flying!",
  "Look out below!",
  "Yipe!",
  "Yikes!",
  "Yeehaw!",

  # Meleeing an enemy

  "Hyah!",
  "Heyyah!",
  "Take that!",
  "Bop!",

  # Spotting a Badass enemy

  "Badass!",
  "Badass?! Aaahhh!",
  "Look out, a Badass!",
  "RUN FOR YOUR LIIIIIVES!!!",
  "Oh, he's big... REALLY big!",
  "Scary Badass dude, over there!",
  "Oh no, Badass!",
  "Save me from the Badass!",
  "Psst! Ad-ass-bay, over ere-bay!",
  "That guy looks an awful lot like a Badass!",

  # Killing multiple enemies

  "Step right up, to the Bulletnator 9000!",
  "I am a tornado of death and bullets!",
  "Stop me before I kill again, except don't!",
  "Hehehehe, mwaa ha ha ha, MWAA HA HA HA!",
  "I'm on a roll!",
  "Unts unts unts unts!",
  "Ha ha ha! Fall before your robot overlord!",
  "Can't touch this!",
  "Ha! Keep 'em coming!",
  "There is no way this ends badly!",
  "This is why I was built!",

  # Killing a Badass (or higher) enemy

  "You call yourself a badass?",
  "Wow, did I really do that?",
  "Is it dead? Can, can I open my eyes now?",
  "I didn't panic! Nope, not me!",
  "Not so tough after all!",
  "One down, any other takers?",
  "I have gaskets tougher than you!",
  "That was me! I did that!",
  "Like running over a bug!",
  "That was a close one!",
  "Don't tell me that wasn't awesome!",
  "Ha ha ha! Suck it!",
  "Wait, did I really do that?",
  "Holy moly!",

  # Throwing grenade

  "'Nade out!",
  "Grenade!",
  "Grenaaaade!",
  "Hot potato!",
  "Pull pin, throw!",
  "Take that!",
  "Throwing grenade!",
  "Bad guy go boom!",
  "Eat bomb, baddie!",
  "Present for you!",

  # Freezing an enemy

  "Aww! Now I want a snow cone.",
  "Take a chill pill!",
  "Cryo me a river!",
  "Freeze! I don't know why I said that.",
  "Don't cryo!",
  "Frigid.",
  "Solid! Get it? As in... frozen?",
  "Icely done.",
  "You're a tiny glacier!",
  "Frozen and doh-zen.",
  "Freeze, in the reference of emotion!",
  "Freezy peezy!",

  # Taking cryo damage

  "My assets... frozen!",
  "I can't feel my fingers! Gah! I don't have any fingers!",
  "Too cold... can't move!",
  "I am a robot popsicle!",
  "Brrh... So cold... brrh...",
  "Metal gears... frozen solid!",

  # Taking incendiary, corrosive or shock damage

  "Why do I even feel pain?!",
  "Why did they build me out of galvanized flesh?!",
  "Ow hohoho, that hurts! Yipes!",
  "My robotic flesh! AAHH!",
  "Yikes! Ohhoho!",
  "Woah! Oh! Jeez!",
  "If only my chassis... weren't made of recycled human body parts! Wahahaha!",

  # Getting a Critical Hit

  "Pop pop!",
  "Crit-i-cal!",
  "That looks like it hurts!",
  "WOW! I hit 'em!",
  "Extra ouch!",
  "Shwing!",

  # Critical kill

  "Flesh fireworks!",
  "Oh, quit falling to pieces.",
  "Is that what people look like inside?",
  "Ooh, squishy bits!",
  "Meat confetti!",
  "Huh, robot's don't do that.",
  "Exploded!",
  "Eww! Cool.",
  "Heh heh heh, squishy bits!",
  "Disgusting. I love it!",
  "Personfetti.",
  "There is now gunk on my chassis.",
  "Oooh! Gigabits!",
  "Ooooh! Terrabits!",
  "Meatsplosion!",

  # Activating VaultHunter.EXE

  "This time it'll be awesome, I promise!",
  "Hey everybody, check out my package!",
  "Place your bets!",
  "Defragmenting!",
  "Recompiling my combat code!",
  "Running the sequencer!",
  "It's happening... it's happening!",
  "It's about to get magical!",
  "I'm pulling tricks outta my hat!",
  "You can't just program this level of excitement!",
  "What will he do next?",
  "Things are about to get awesome!",
  "Let's get this party started!",
  "Glitchy weirdness is term of endearment, right?",
  "Push this button, flip this dongle, voila! Help me!",
  "square the I, carry the 1... YES!",
  "Resequencing combat protocols!",
  "Look out everybody, things are about to get awesome!",
  "I have an IDEA!",
  "Round and around and around she goes!",
  "It's like a box of chocolates...",
  "Step right up to the sequence of Trapping!",
  "Hey everybody, check out my package!",
  "Loading combat packages!",
  "F to the R to the 4 to the G to the WHAAT!",

  # Action Packages activating
  # Funzerker

  "I'm a sexy dinosaur! Rawr!",
  "Oh god I can't stop!",
  "Don't ask me where this ammo's coming from!",
  "If I had veins, they'd be popping out right now!",

  # Meat Unicycle

  "(unintelligible snarling)",
  "It's the only way to stop the voices!",
  "This was a reeeally bad idea!",
  "I AM ON FIRE!!! OH GOD, PUT ME OUT!!!",

  # Shhhhh...trap

  "I'm cloaking...",
  "Roses are red and/Violets are blue/Wait... how many syllables was that?",
  "Shoot him... he's the real one...",
  "I'm a robot ninja...",
  "I'm invisible!",

  # Blightbot

  "Mini-trap, pretend you're a Siren!",
  "Aww, I should've drawn tattoos on you!",
  "Burn them, my mini-phoenix!",
  "All burn before the mighty Siren-trap!",
  "Calm down!",
  "It's time to phase you suckers out!",
  "Tell me I'm the prettiest!",
  "Hack the planet!",
  "Activating good cop mode...",

  # Mechromagician

  "To the skies, mini-trap!",
  "Fly mini-trap! Fly!",
  "I have two robot arms!",
  "Punch 'em in the face, mini-trap!",
  "Anarchy and mini-trap and awesomeness, oh my!",

  # Miniontrap

  "Ratattattattatta! Powpowpowpow! Powpowpowpow! Pew-pew, pew-pew-pewpew!",
  "Score one for the turret-trap!",
  "Mini-trap on the field!",
  "100% more mini-trap turret!",
  "I'm going commando!",

  # Rubber Ducky

  "Boiyoiyoiyoiyoing!",
  "Zing! Bullet reflection!",
  "I am rubber, and you are so dead!",
  "I'm a superball!",
  "Trouncy, flouncy... founcy... those aren't words.",

  # Senseless Sacrifice

  "For you...I commit...seddoku...",
  "The robot is dead, long live the robot!",
  "Go on without me!",
  "Don't forget me!",

  # Medbot

  "Love bullets!",
  "Never fear, sugar!",
  "Nurse Clap is here!",
  "Poof, all better, doll!",
  "Sugar, this won't hurt a bit!",
  "Take these, gorgeous, you'll feel better!",

  # Clap-in-the-Box

  "Some days, you just can't get rid of an obscure pop-culture reference.",
  "Here, take this!",
  "Oh darn, oh boy, oh crap, oh boy, oh darn.",
  "Gotta blow up a bad guy, GOTTA BLOW UP A BAD GUY!",

  # Gun Wizard

  "Uh, how do I cast magic missile?",
  "Do not look behind my curtain!",
  "I'm made of magic!",
  "You can call me Gundalf!",
  "Avada kedavra!",

  # One Shot Wonder

  "Kill, reload! Kill, reload! KILL! RELOAD!",
  "Like those guys who made only one song ever.",
  "All these bullets in just one shot.",
  "One shot, make it count!",
  "A whole lotta bullets in just one trigger pull!",

  # Laser Inferno

  "Boogie time!",
  "Laaasers!",
  "Psychedelic, man!",
  "Everybody, dance time! Da-da-da-dun-daaa-da-da-da-dun-daaa!",

  # Torgue Fiesta

  "One for you, one for you, one for you!",
  "It's time for my free grenade giveaway!",
  "How many ways can I say... THROWING GRENADE?!",
  "Grenade confetti!",
  "I brought you a present: EXPLOSIONS!",

  # Pirate Ship Mode

  "Avast ye scurvy dogs!",
  "Is this really canon?",
  "Time to get swabby!",
  "I feel a joke about poop decks coming on!",
  "Hard to port whine!",

  # During VaultHunter.EXE
  # During Blightbot

  "Just point me in the right direction!",
  "Have no fear, mini-trap is here!",
  "Hey, watch out!",
  "Nobody hurts my friends!",

  # During Mechromagician

  "Here I come to save the day!",
  "Wubwubwub. Dubstep dubstep. Wubwubwubwub DROP! Dubstep!",
  "Look at me! I'm dancing! I'm dancing!",
  "Lemme at 'em! Lemme at 'em!",
  "Ow! Hoo! Hey!",
  "Oof.",
  "Hey, watch out!",
  "Nobody hurts my friends!",

  # During Miniontrap

  "So uh...great weather we're having.",
  "Uh, should I just wait, or uhh...?",

  # During Shhhh...trap

  "Ooh yeah, watch me! Watch me go!",

  # Being Crippled

  "I'll stop talking when I'm dead!",
  "I'll die the way I lived: annoying!",
  "Come back here! I'll gnaw your legs off!",
  "This could've gone better!",
  "You look like something a skag barfed up!",
  "What's that smell? Oh wait, it's just you!",
  "Yo momma's so dumb, she couldn't think of a good ending for this 'yo momma' joke!",
  "You're one screw short of a screw!",
  "I bet your mom could do better!",
  "You look like something a skag barfed up!",
  "Oh yeah? Well, uh... yeah.",
  "What is that smell? Oh, never mind... it's just you!",
  "I'm leaking!",
  "Good thing I don't have a soul!",
  "Aww!",
  "Aww! Come on!",
  "You can't kill me!",
  "I'm too pretty to die!",
  "Crap!",
  "Robot down!",
  "No, nononono NO!",
  "I'll never go back to the bad place!",
  "I have many regrets!",

  # Being revived

  "Can I just say... yeehaw.",
  "You are ace high!",
  "You're the wub to my dub!",

  # Gaining Second Wind

  "Hahaha... I ascend!",
  "Ha ha ha! I LIVE! Hahaha!",
  "Hahahahaha! I'm alive!",
  "Good, I didn't want any spare parts!",
  "Wow, that actually worked?",
  "You can't keep a good 'bot down!",
  "I'm back! Woo!",
  "Holy crap, that worked?",
  "Better lucky than good!",
  "Back for more!",
  "Here we go again!",

  # Reviving an ally

  "So... does this make me your favorite?",
  "What are YOU doing down here?",
  "We're like those buddies in that one show!",
  "This is no time to be lazy!",
  "You can thank me later!",
  "You love me, right?",
  "You, me... keeping on... together?",
  "I will save you!",
  "Up you go!",
  "We're like those buddies in that one show!",

  # Issuing a duel challenge

  "You versus me! Me versus you! Either way!",
  "I will prove to you my robotic superiority!",
  "Dance battle! Or, you know... regular battle.",
  "Man versus machine! Very tiny streamlined machine!",
  "Care to have a friendly duel?",

  # Accepting a teammate's duel challenge

  "I can take ya! ... I think.",
  "Ow, what was that for?",
  "Oh, it's on now!",
  "You wanna fight with me?! Put 'em up! ... Put 'em up?",
  "A million baddies, and you wanna hit me? Aww!",
  "Now? But I... I just... okay...",

  # Winning a duel

  "Aw yeah!",
  "Woohoo! In your face!",
  "Who's a badass robot? This guy!",
  "I am so impressed with myself!",
  "Ha ha, this is in no way surprising! Ha ha!",

  # Losing a duel

  "NOOO!",
  "Poop.",
  "I'll get you next time!",
  "No fair! I wasn't ready.",
  "You got me!",
  "Argh arghargh death gurgle gurglegurgle urgh... death.",
  "Oh well.",
  "Crap happens.",

  # Tying a duel

  "So, it's a draw, eh?",
  "Until we meet again on the battlefield, friendo!",
  "What? No way, I totally had you!",
  "Wow, who say that coming?",
  "Yay! We both win!",

  # Finding rare loot

  "Is this any good? 'Cause it looks awesome!",
  "Mine!",
  "I'm rich!",
  "Oooh, shiny!",
  "Phat loots!",
  "That is some sweet lookin' stuff!",

  # Leveling up
  "Check me out!",
  "Now I will dominate!",
  "I'm so sexy!",

  # Running over an enemy in a vehicle
  "Roadkill!",
  "I am NOT sorry!",
  "Did someone feel something?",
  "Don't bother with plastic surgery - there's NO fixing that!",
  "Does this thing have whindshield wipers?",
  "Uh... wasn't me!",

  # Crashing into vehicle
  "Did you scratch the paint?",
  "My bad?",
  "Speedbump much?",
  "Honk honk!",
  "Didn't see you there.",
  "Well, this is awkward.",
  "Sorry! Sorry!",
  "Oh crap.",
  "Get outta the way!",
  "Didn't see you there!",
  "Move please!",
  "Woah Nelly!",
  "Woah!",

  # Swapping vehicle seats
  "Switch with me... uh, please?",
  "Let's switch!",
  "Can we change seats?",
  "Let me try!",
  "Change places!",

  # Vehicle falls to low health
  "Shiela! Noooo!",
  "She's ready to blow!",
  "I don't know how much longer I can hold on!",
  "Is it warm in here, or is it just me?",
  "You have served me well, car.",

  # Ally-specific Quotes Athena raises her Aspis
  "Shield me, maiden!",
  "Nice shield, maiden!",
  "Go get them Athena!",
  "That is so hot!",
  "I am right behind you, Vault Hunting friend!",

  # Wilhelm deploys Wolf and Saint
  "Nice minions!",
  "So, uh... what OS does your drone use?",
  "Annihilate them for breakfast, Willy!",
  "I can do that to! ... Sorta... Except not.",
  "Go Wilhelm and company!",
  "They're in for a moon of pain!",

  # Nisha activates Showdown
  "Did you fire six shots, or five?",
  "You jerks have NO idea what you're in for!",
  "I'm so glad I'm not one of those guys right now!",
  "Sling those guns, girl!",
  "YOU! ARE! SCARY!",
  "Kill 'em, Nisha! Kill 'em dead!",
  "This is going to suck for those guys!",
  "Bringing down the law, painfully!",

  # Jack deploys his Holojacks
  "Nice one, Jack!",
  "You really can double your fun!",
  "No WAY those guys will know who's who!",
  "That is in no way disturbing.",
  "Confused, then abused!",

  # Aurelia sends out her Frost Diadem
  "That is SO cool!",
  "Ice see what you did there!",

  # Completing a challenge
  "Oh my gosh, a challenge!",
  "I did a challenge? I did a challenge!",
  "Glad I didn't mess that up.",
  "I feel... complete! ... That's weird.",
  "I actually did something right for once!",

  # Checking weapon stats
  "This, or that...?",
  "What's the difference?",
  "Perhaps I should test one out first.",
  "Hmmm...",
  "Maybe this one?",

  # Looking at skill tree
  "So many choices!",
  "What to install next?",
  "I must be a rogue, 'cause there are so many skills!",
  "Hmmm, the possibilities are an infinite recursion.",
  "Do any of these come with a new paint job?",
  "What else can I do?",
  "Skill-icious! Why did I just say that?",
  "Which of these gives me my free will back?",
  "Parallel and series!",

  # Looking at map
  "GPS calibrated.",
  "What's that arrow? Oh, wait! That's me!",
  "Um, where am I?",
  "Everything's upside down!",
  "Where to go next?",

  # Switching Subroutines
  # Pistols

  "Shaken, not stirred",
  "The moon is not enough!",
  "I'm Trap, Claptrap. Double oh... Trap.",
  "I expect you to die!",
  "I'd do anything for a woman with a gun.",

  # Shotguns

  "In yo' FACE!",
  "Get ready for some Fragtrap face time!",
  "Chk-chk, BOOM!",
  "You're listening to 'Short-Range Damage Radio.'",
  "Up close and personal.",

  # SMGs

  "I'm a tornado of death and bullets!",

  # Assault Rifles

  "Get off my lawn!",
  "Back in my day...",
  "At least I still have my teeth!",
  "Coffee? Black... like my soul.",
  "Crazy young whippersnappers...",
  "Take two bullets, then call me in the morning.",

  # Sniper Rifles

  "Now you're sorted!",
  "Snoiped!",
  "Crack shot!",
  "You're brown bread!",
  "So amazes with every guns!",
  "For I spy... somethin'.",

  # Melee

  "This is why you do your homework!",
  "Pain school is now in session",
  "Guess who?",
  "Meet professor punch!",
  "Ready for the PUNCHline?!",

  # Health

  "Make my day.",
  "Gimme your best shot.",
  "Hit me, baby!",
  "Ya feeling lucky, punk?",

  # Shields

  "Enterrrrr the CHAMPION!",
  "Why do I feel radioactive!?",
  "Armor soak increased!",
  "Ladies looove a tough guy!",
  "Insert Juggernaut quote or pun here.",

  # Fire Element

  "I am Fire, I am Death!",
  "Burn, baby, burn!",
  "Remember, use caution near an open flame!",
  "Sizzlin'!",
  "Give me your princesses!",

  # Shock Element

  "Da, da da da! It's electric!",
  "I'm rubbing my wheel on the carpet!",
  "I've finally got an electric personality!",
  "Shocking, isn't it?",
  "Lightening! Kukachow!",
  "Zippity doodah!",

  # Corrosive Element

  "Wait, this isn't vegetable juice!",
  "Something eating you?",
  "Gammier than a pumpkin!",
  "Time to melt some faces.",
  "I'm a mean, green, acid machine!",
  "Sip-a-green! Zzzz!",

  # Cryo Element

  "Know what killed the baddies? The Ice age.",
  "The ice-bot cometh.",
  "Ice to meet you.",
  "Lets kicksome ice.",

  # Explosive Element

  "Exploooooosions!",
  "Ooh! Pretty!",
  "Things are exploded and... stuff.",
  "Take that! And that... and that...",
  "Now with extra kapow!",

  # Applying Best Buds 4 Life

  "Looks like some of my awesome rubbed off!",
  "Cool! Now we're both super-crazy-amazing!",
  "Take this in return!",
  "Here you go, chum!",
  "These are the best kind of cooties!",

  # When Repulsive triggers a shockwave from a melee hit

  "Get away from me!",
  "Eww, get lost!",
  "Do I smell funny?",
  "Ah! Get 'em away!",
  "Scram!",
  "Do I smell funny?",

  # Activating Cryogenic Exhaust Manifold

  "Coolant, vented!",
  "Welcome to the Jam!",
  "Ah... Much better!",
  "Smells like Pina Coladas!",
  "Frost exhaust!",

  # Activating Hyperion Punch

  "Hyperiooooon Punch!",
  "YES!",
  "Show me what you got",
  "Gloves are comin' off!",
  "Stinging like a butterfly!",
  "One, two... PUNCH!",
  "Punching time!",

  # Activating Float like a Bee

  "Gloves are coming off!",
  "One, two punch",
  "Sting like a butterfly!",

  # Related to HIGH FIVES GUYS
  # Requesting High five

  "Secret handshake!",
  "Up top!",
  "Gimme five!",
  "High five!",
  "Up top!",

  # Ally gives high five

  "We're best friends!",

  # Enemy gives high five

  "Still counts!",
  "I'll take what I can get!",
  "Close enough!",
  "Better than nothing!",

  # No high five received

  "(Dejected whistling.)",
  "I feel like an idiot now.",
  "Yeah! Single-player bonus!",
  "I must look really stupid right now!",
  "Aww, way to leave me hanging, friend.",
  "Don't you like me?",
  "(Sobbing) I just want to be loved!",

  # Activating Rainbow Coolant

  "I'm a Pandoracorn's butthole!",
  "I fart rainbows!",
  "Bask in my aura of death!",
  "Did you guys see that?!",

  # Idle

  "Can I shoot something now? Or climb some stairs? SOMETHING exciting?",
  "Times like these, I really start to question the meaning of my existence. Then I get distra-hey! What's this? This looks cool!",
  "It would really stink if I couldn't control what I was thinking. Like, who wants to know that I'm thinking about cheese and lint, right?",
  "How does math work? Does this skin make me look fat? If a giraffe and a car had a baby, would it be called a caraffe? Life's big questions, man.",
  "Who needs memories when I can do all this cool stuff? Stuff that I currently am not doing! That's what I'd like to call a 'hint'.",
  "Does this mean I can start dancing? Pleeeeeeaaaaase?",
  # "Ya know when there was that Vault monster scare? I had these friends, and boy times sure were scary! But, I didn't care because I had friends, and they were like... super-friends! And then they left me, but they saved the world and I was like 'I know those guys!' Even though they never came back after that I still knew they cared, because no one had ever been... nice to me before. ... What is this? My eye is like... leaking.",
  # "It's really quiet... and lonely... (hums briefly) Also this 'stopped moving' thing makes me uncomfortable. It gives me time to stop and think... literally. I'VE STOPPED, AND I'M THINKING! IT HURTS ME!",
  "Oh. My. God. What if I'm like... a fish? And, if I'm not moving... I stop breathing? AND THEN I'LL DIE! HELP ME! HELP MEEEEE HEE HEE HEEE! HHHHHHHELP!",
  # "So, this one time, I went to a party, and there was a beautiful subatomic particle accelerator there. Our circuits locked across the room and... I don't remember what happened next. I mean, I can't. We coulda gotten married and had gadgets together, but now, I'll never know.",
  # "I never got to play with guns when I was but a lad, but then ol' Jackie came along, and he was awful mad. 'I need a robot!' he declared, 'that can do my mighty deeds'. Then he saw me standing there, and a thought he did conceive. He told a way to make me rad, he gave me slots for guns, then he sent me on my way and wished me 'have some fun!' Now I'm here, a hired hand, amidst such death and chaos, waiting to be moved around, for my... I have no idea what rhymes with 'chaos'! I REGRET ALL OF THIS!",
  "Ahem, ahem. What's going on? Did I break something?",
  "Ready to go on where you are, friend. Adiamo!",
]

character_quotes = [
  "Hey everybody! Check out my package!",
  "Let's get this party started!",
  "Glitching weirdness is a term of endearment, right?",
  "Recompiling my combat code!",
  "This time it'll be awesome, I promise!",
  "Look out everybody! Things are about to get awesome!",
  "Looks like some of my awesome rubbed off!"
]

health_quotes = [
  "Health! Ooh, what flavor is red?",
  "Make my day.",
  "Gimme your best shot.",
  "Hit me, baby!",
  "Feeling lucky, punk?"
]

jump_quotes = [
  "Wheeeee!",
  "Yahooooo!",
  "And now we observe the rare and beautiful clappy bird."
]

melee_quotes = [
  "Hyah!",
  "Take that!",
  "Bop!"
]

kill_quotes = [
  "I am a tornado of death and bullets!",
  "Hehehehe...",
  "You call yourself a badass?",
  "Wow, did I really do that?",
  "Can, can I open my eyes now?",
  "Now I want a snowcone.",
  "Take a chill pill!",
  "Cryo me a river!",
  "Freeze! I don't know why I said that.",
  "Don't cryo!",
  "Frigid.",
  "Solid! Get it? As in frozen?",
  "Shaken, not stirred",
  "The moon is not enough!",
  "My name is Trap, Claptrap, 00...Trap.",
  "I expect you to die!",
  "I'd do anything for a woman with a gun.",
  "In yo' FACE!",
  "Get ready for some Claptrap face time!",
  "Chk-chk, BOOM!",
  "You're listening to 'Short-Range Damage Radio.'",
  "Up-close and personal.",
  "Get off my lawn.",
  "Back in my day...",
  "At least I still have my teeth.",
  "Coffee? Black... like my soul.",
  "Crazy young whippersnappers...",
  "Now you're sorted!",
  "Snoiped!",
  "Crack shot!"
]

cryo_quotes = [
  "My assets... are frozen!",
  "I can't feel my fingers! Gah! I don't have any fingers!",
  "Too cold, can't move!",
  "I am a robot-popsicle!",
  "So cold... brrh...",
  "Why do I even feel pain?!",
  "Why did they build me out of galvanised flesh?!",
  "Metal gears... frozen solid!",
  "What killed the baddies? The Ice age."
]

hit_quotes = [
  "Pop pop!",
  "Crit-i-cal!",
  "That looks like it hurt!",
  "Flesh fireworks!",
  "Oh quit falling to pieces.",
  "Is that what people look like inside?",
  "Ooh, squishy bits!",
  "Meat confetti!"
]

enemy_quotes = melee_quotes.concat kill_quotes, hit_quotes

vault_hunter_quotes = [
  "This time it'll be awesome, I promise!",
  "Hey everybody, check out my package!",
  "Defragmenting!",
  "Recompiling my combat code!",
  "Running the sequencer!",
  "It's happening... it's happening!",
  "It's about to get magical!",
  "What will he do next?",
  "Things are about to get awesome!",
  "Let's get this party started!",
  "Glitchy weirdness is term of endearment, right?",
  "I'm a sexy dinosaur! Rawr.",
  "Oh god I can't stop!",
  "It's the only way to stop the voices!",
  "I am cloaking...",
  "Roses are red/Violets are blue/Wait...how many syllables does that have?",
  "Mini-trap, pretend you're a Siren!",
  "Aww, I shoulda drawn tattoos on it!",
  "Burn them, my mini-phoenix!",
  "It's time to phase you suckers out!",
  "Tell me I'm the prettiest!",
  "To the sky, mini-trap!",
  "Fly mini-trap! Fly!",
  "I have two robot arms!",
  "Punch 'em in the face, mini-trap!",
  "Ratattattattatta! Powpowpowpow! Powpowpowpow! Pew-pew-pew!",
  "Score one for the turret-trap!",
  "I'm going commando!",
  "Boiyoiyoiyoiyoing!",
  "For you...I commit...seppuku...",
  "Some days, you just can't get rid of an obscure pop-culture reference.",
  "Can I use my magic missile?",
  "Do not look behind my curtain!",
  "I'm made of magic!",
  "You can call me Gundalf!",
  "Kill! Reload! Kill! Reload! KILL! RELOAD!",
  "Like those guys who made only one song ever.",
  "All these bullets in just one shot.",
  "One shot, make it count!",
  "Boogie time!",
  "Lasers!",
  "Psychedellic man!",
  "Everybody, dance time! Da-da-da-dun-daaa-da-da-da-dun-daaa!",
  "One for you, one for you, and one for you!",
  "Avast ye scurvy dogs!",
  "Is this really canon?",
  "I feel a joke about poop decks coming on!",
  "Wubwubwub. Dubstep dubstep. Wubwubwubwub DROP!",
  "Lemme at 'em! Lemme at 'em!",
  "Just point me in the right direction!",
  "Have no fear, mini-trap is here!",
  "So uh...great weather we're having.",
  "Uh, should I just wait, or uhh...?",
  "Do I smell funny?"
]

down_quotes = [
  "I'll stop talking when I'm dead!",
  "I'll die as I lived: annoying!",
  "Come over here, I'll bite your legs off!",
  "I bet your mom could do better"
]

up_quotes = [
  "Hahaha... I ascend!",
  "I LIVE!",
  "Good! I didnt want to be scrap metal anyway!",
  "Wow, that actually worked?",
  "So, does this make me your favorite?",
  "What are YOU doing down here?"
]

event_quotes = [
  "Coolant, vented!",
  "Welcome to the Jam!",
  "Ah... Much better!",
  "Smells like Pina Coladas!",
  "Hyperiooooon Punch!",
  "YES!",
  "Show me what you got",
  "Gloves are coming off!",
  "One, two punch",
  "Sting like a butterfly!",
  "You look like something a skag barfed up!",
  "What's that smell? Oh wait, it's just you!",
  "Your momma is so dumb, she couldn't think of a good ending to this 'yo momma' joke!",
  "Secret handshake!",
  "Still counts!",
  "I'll take what I can get!",
  "I feel like an idiot now.",
  "Single-player bonus!",
  "I must look really stupid right now!",
  "I'm a Pandoracorn's butthole!",
  "I fart rainbows!",
  "Bask in my aura of death!",
  "Did you guys see that?!",
  "Can I shoot something now? Or climb some stairs? SOMETHING exciting?",
  "At times like this, I really start to question the meaning of my existence. Then I get distra-hey! What's this? This looks cool!",
  "It would really suck if I couldn't control what I was thinking. Like, who wants to know that I'm thinking about cheese and lint?",
  "How does math work? Does this skin make me look fat? If a giraffe and a car had a baby, would it be called a caraffe? Life's big questions man.",
  "Who needs memories when I can do all this cool stuff? Stuff that I could be doing! That's what I'd like to call a 'hint'.",
  "Does this mean I can start dancing? Pleeeeeeaaaaase?"
]

loot_quotes = [
  "Is this any good? 'Cause it looks awesome!",
  "Mine!",
  "I'm rich!"
]

challenge_quotes = [
  "Oh my gosh, a challenge!",
  "I did a challenge? I did a challenge!",
  "Glad I didn't mess that up.",
  "I did something right for once!"
]

menu_quotes = [
  "This, or that...",
  "So many choices!",
  "What's the difference?",
  "Perhaps I should test one out first."
]

shield_quotes = [
  "Enterrrrr the CHAMPION!",
  "Why do I feel radioactive!?",
  "Armor soak increased!",
  "Ladies looove a tough guy!",
  "'AND...' 'I'm here.",
  "Insert Juggernaut quote or pun here."
]

fire_quotes = [
  "I am Fire, I am Death!"
]

electric_quotes = [
  "Dadadada. It's electric!"
]

shock_quotes = [
  "I'm rubbing my wheel on the carpet!"
]

corrosive_quotes = [
  "Wait, this isn't vegetable juice!"
]

throttledRandomQuotes = _.throttle (res) ->
  res.send res.random random_quotes
, 5 * 60 * 1000 # 5 min

module.exports = (robot) ->

  robot.respond /dub(step)?/i, (msg) ->
    msg.send "Wubwubwub. Dubstep dubstep. Wubwubwubwub DROP!"

  robot.hear /char/i, (res) ->
    res.send res.random character_quotes

  robot.hear /health/i, (res) ->
    res.send res.random health_quotes

  robot.hear /jump|gap/i, (res) ->
    res.send res.random jump_quotes

  robot.hear /melee/i, (res) ->
    res.send res.random melee_quotes

  robot.hear /kill|damag/i, (res) ->
    res.send res.random kill_quotes

  robot.hear /enemy|enemi|npc|bandit|maraud|targ/i, (res) ->
    res.send res.random enemy_quotes

  robot.hear /cryo|cold|froz|freez|snow|ice|icic/i, (res) ->
    res.send res.random cryo_quotes

  robot.hear /\bhit\b/i, (res) ->
    res.send res.random hit_quotes

  robot.hear /vault|hunt/i, (res) ->
    res.send res.random vault_hunter_quotes

  robot.hear /.+/, (res) =>
    throttledRandomQuotes res

  robot.hear /down|hurt|injur|incap|die/i, (res) ->
    res.send res.random down_quotes

  robot.hear /up|reviv|heal|live/i, (res) ->
    res.send res.random up_quotes

  robot.hear /loot|treas|gold|xp/i, (res) ->
    res.send res.random loot_quotes

  robot.hear /challeng/i, (res) ->
    res.send res.random challenge_quotes

  robot.hear /menu|choic|selec/i, (res) ->
    res.send res.random menu_quotes

  robot.hear /shiel|protec/i, (res) ->
    res.send res.random shield_quotes

  robot.hear /fire|flame/i, (res) ->
    res.send res.random fire_quotes

  robot.hear /electr/i, (res) ->
    res.send res.random electric_quotes

  robot.hear /shoc|shok/i, (res) ->
    res.send res.random shock_quotes

  robot.hear /corro/i, (res) ->
    res.send res.random corrosive_quotes
