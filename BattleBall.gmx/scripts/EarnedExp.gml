///EarnedExp(numShots, numGoals)
//Calculate the earned exp during a game
/*
    Exp = numShots + (numGoals * 100)
*/
var numShots = argument[0];         //Take in the number of shots
var numGoals = argument[1];         //Take in the number of goals

return numShots + (numGoals * 100); //Return the amount of earned exp
