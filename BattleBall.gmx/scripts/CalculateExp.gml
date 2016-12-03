///CalculateExp(lvl)

/*Algorithm for calculating required exp for a level:
    required exp = 800 + ((lvl - 1) * 1600)
    lvl 1 = 800exp
    lvl2 = 2400exp
    lvl3 = 4000 exp
    lvl5 = 5600 exp
    ...
*/
var lvl = argument[0];              //The current level is the first argument
return 800 + ((lvl - 1) * 1600);    //Algorithm for claculating the required amount of exp
