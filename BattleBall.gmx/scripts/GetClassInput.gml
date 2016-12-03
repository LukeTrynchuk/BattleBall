///GetClassInput()

up = keyboard_check(vk_space);                              //The up key
down = keyboard_check(vk_down);                             //The down key
left =  keyboard_check(vk_left);                            //The left key
right = keyboard_check(vk_right);                           //The right key
confirm = keyboard_check(vk_enter);                         //The confirm key
back = keyboard_check(vk_shift);                            //The back key

var thresh = 0.5;                                           //The thresh hold amount

if(gamepad_is_connected(gp_id))                             //If the current gamepad is connected
{
    up = gamepad_axis_value(gp_id, gp_axislv) < -thresh;    //The up axis
    down = gamepad_axis_value(gp_id, gp_axislv) > thresh;   //The down axis
    left =  gamepad_axis_value(gp_id, gp_axislh) < -thresh; //The left axis
    right = gamepad_axis_value(gp_id, gp_axislh) > thresh;  //The right axis
    btn_Y = gamepad_button_check_pressed(gp_id, gp_face4);  //The y button
    
    confirm = gamepad_button_check_pressed(gp_id,gp_face1); //The confirm button
    back = gamepad_button_check_pressed(gp_id,gp_face2);    //The back button
    start = gamepad_button_check_pressed(gp_id, gp_start);  //The start button
}
