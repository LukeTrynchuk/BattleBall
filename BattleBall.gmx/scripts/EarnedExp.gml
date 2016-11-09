///EarnedExp(numShots, numGoals)
//Calculate the earned exp during a game
/*
    Exp = numShots + (numGoals * 100)
*/
var numShots = argument[0];
var numGoals = argument[1];

return numShots + (numGoals * 100);
