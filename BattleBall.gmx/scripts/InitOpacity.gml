///InitOpacity(TotalNumberOfItems, DefaultValue, SelectedIndex)
var TotalItems = argument0;                                 //What is the number of items?
var DefaultValue = argument1;                               //What is the default value?
var SelectedIndex = argument2;                              //what is the selected index?
var returnArray;

for (TotalItems--; TotalItems > -1; TotalItems--)           //Loop the appropriate number of times
{
    returnArray[TotalItems] = DefaultValue;                 //Set the default value
}

if(SelectedIndex >= 0) returnArray[SelectedIndex] = 1.0;    //set the selected index to 1

return returnArray;                                         //Return the array
