///CheckIfLedgeGrab()

var falling = phy_position_y - phy_position_yprevious > 0;                                                  //Are we falling?
var wasnt_wall = !position_meeting(phy_position_x+17 * image_xscale,phy_position_yprevious, Obj_Solid);     //Was there not a wall
var is_wall = position_meeting(phy_position_x + 17 * image_xscale, phy_position_y, Obj_Solid);              //Is there now a wall

if(falling && wasnt_wall && is_wall)                                                                        //If all three
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
    state = LedgeGrab;                                                                                      //Set to the ledge grab state
}

