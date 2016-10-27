///Create_Dash_Effect(color)
color = "none";
color = argument0;
var inst = instance_create(x,y,Obj_dash_effect);
    
with(inst)
{
    sprite_index = other.sprite_index;
    image_index = other.image_index;
    image_xscale = other.image_xscale;
}

if (color == "Red")
{
    with(inst)
    {
        image_blend = make_colour_rgb(220, 150,150);
    }
}

if (color == "Blue")
{
    with(inst)
    {
        image_blend = make_colour_rgb(56, 136, 218);
    }
}
