///GetClassInput()

up = keyboard_check(vk_space);
down = keyboard_check(vk_down);
left =  keyboard_check(vk_left);
right = keyboard_check(vk_right);
confirm = keyboard_check(vk_enter);
back = keyboard_check(vk_shift);

var thresh = 0.5;

if(gamepad_is_connected(gp_id))
{
    up = gamepad_axis_value(gp_id, gp_axislv) < -thresh;   
    down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
    left =  gamepad_axis_value(gp_id, gp_axislh) < -thresh;
    right = gamepad_axis_value(gp_id, gp_axislh) > thresh; 
    btn_Y = gamepad_button_check_pressed(gp_id, gp_face4); 
    
    confirm = gamepad_button_check_pressed(gp_id,gp_face1);
    back = gamepad_button_check_pressed(gp_id,gp_face2);
    start = gamepad_button_check_pressed(gp_id, gp_start);
}
