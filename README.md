# ACRandomizer
A tool to facilitate Randomizer runs of the Armored Core series of games. The idea is simple: generate a random, valid AC parts list (no overweight/not enough EN) before each mission - while this program cannot hook into the games and assemble the parts for you, it will at least clearly display a valid build for you to make yourself.

This tool does not account for what parts you own or how much money you have, it is most appropriate to use in NG+ or with cheats enabled to own all parts. However, each part category does have a "main" and "alt" selection to account for hidden/expansion game parts: in the case that a part is chosen that is not in the starting shop for the base game, a secondary compatible base shop part will be chosen in case the first one isn't available.

In addition, a random Veto is also generated with each build - Vetos are optional "free passes" that let you switch a part from a single category to one of your choosing, in case the random build is completely useless.

Current features
- AC2/AA support
- Options to have a percentage chance to leave weapons/insides/extensions unequipped to reduce weight

Planned features
- All PS1/PS2 games support
- PS3 games support (less likely to be added, just depends on if I get bored before accommodating for the new systems and mechanics from 4/A onwards)
- Option to guarantee radar functionality in the build
- Option to base leg selection on the weight of all other parts (otherwise leg selection is naturally skewed towards heavier options with higher weight limits since legs are chosen last)
