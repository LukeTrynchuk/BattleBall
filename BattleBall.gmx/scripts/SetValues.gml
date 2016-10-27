///SetValues(array, value)
var myArray = argument0;
var value = argument1;

for(var CurrentItem = 0; CurrentItem < array_length_1d(myArray); CurrentItem++)
{
    myArray[CurrentItem] = value;
}
return myArray;
