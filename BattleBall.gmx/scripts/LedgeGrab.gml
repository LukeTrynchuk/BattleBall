///LedgeGrab()
SpriteState = "LedgeGrab";
phy_active = false;
phy_position_x = phy_position_xprevious;
phy_position_y = phy_position_yprevious;

if(keyboard_check(ord("A")) || keyboard_check(ord("D")) || keyboard_check(vk_space))
{
    state = Move;
    phy_active = true;
    Player_Movement();
}
