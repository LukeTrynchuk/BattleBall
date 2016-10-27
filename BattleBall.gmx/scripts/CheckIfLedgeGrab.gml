///CheckIfLedgeGrab()

var falling = phy_position_y - phy_position_yprevious > 0;
var wasnt_wall = !position_meeting(phy_position_x+17 * image_xscale,phy_position_yprevious, Obj_Solid);
var is_wall = position_meeting(phy_position_x + 17 * image_xscale, phy_position_y, Obj_Solid);

if(falling && wasnt_wall && is_wall)
{   
/*
    while(!place_meeting(phy_position_x + image_xscale,phy_position_y, Obj_Solid))
    {
        phy_position_x += image_xscale;
    }
    
    while(position_meeting(phy_position_x + 17 * image_xscale, phy_position_y - 1, Obj_Solid))
    {
        phy_position_y -=1;
    } 
*/    
    state = LedgeGrab;
}

