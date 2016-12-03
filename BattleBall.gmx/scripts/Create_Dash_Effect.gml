///Create_Dash_Effect(color)
color = "none";                                     //Set color to noone
color = argument0;                                  //Set color to first argument
var inst = instance_create(x,y,Obj_dash_effect);    //Create an instance of the dash effect
    
with(inst)                                          //With the dash effect instance
{
    sprite_index = other.sprite_index;              //Set the sprite index
    image_index = other.image_index;                //Set the image index
    image_xscale = other.image_xscale;              //Set the image xscale
}

if (color == "Red")                                 //If we are the color red
{
    with(inst)                                      //with inst
    {
        image_blend = make_colour_rgb(220, 150,150);    //Set the image blend mode
    }
}

if (color == "Blue")                                //If we are the color blue
{
    with(inst)                                      //With inst
    {
        image_blend = make_colour_rgb(56, 136, 218);    //Set the image blend mode
    }
}
