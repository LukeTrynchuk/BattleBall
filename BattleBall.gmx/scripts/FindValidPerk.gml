///FindValidPerk()
var Perks = global.ChosenPerks;
if(myPlayer_Choosing == PlayerChoosing.PLAYER_2) Perks = global.ChosenPerksP2;

if(Perks[CurrentPerk] && PerksLeft <= array_length_1d(Perks))       //If the current perk has been chosen && there are perks to choose
{
    do{
        CurrentPerk++;                                                          //Increment the current perk
        if(CurrentPerk >= array_length_1d(Perks)) CurrentPerk = 0;        //Set to 0 if over bounds
    }until(!Perks[CurrentPerk]);                                          //Loop this until we have found a valid perk
}


