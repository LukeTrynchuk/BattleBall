///GetInput()

up = keyboard_check(vk_space);
down = keyboard_check(vk_down);
left =  keyboard_check(vk_left);
right = keyboard_check(vk_right);
up_release = keyboard_check_released(vk_up);
right_trigger = keyboard_check(ord("I"));
dash = keyboard_check(vk_enter);

//Override control for game pad
var thresh = 0.5;

if(gamepad_is_connected(gp_id))
{
    up = gamepad_button_check_pressed(gp_id,gp_face1);
    down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
    left =  gamepad_axis_value(gp_id, gp_axislh) < -thresh;
    right = gamepad_axis_value(gp_id, gp_axislh) > thresh;
    
    axis_left = gamepad_axis_value(gp_id, gp_axislh) < -thresh; //left analog stick
    axis_right = gamepad_axis_value(gp_id, gp_axislh) > thresh; //..
    axis_down = gamepad_axis_value(gp_id, gp_axislv) > thresh;  //..
    axis_up = gamepad_axis_value(gp_id, gp_axislv) < -thresh;   //..
    haxis = gamepad_axis_value(gp_id, gp_axislh);
    vaxis = gamepad_axis_value(gp_id, gp_axislv);
    axis_lh = axis_left + axis_right;
    axis_lv = axis_up + axis_down;
    
    left_bumper = gamepad_button_check_pressed(gp_id,gp_shoulderl);
    up_release = gamepad_button_check_released(gp_id, gp_face1);
    right_trigger = gamepad_button_check(gp_id, gp_shoulderrb);
    left_trigger = gamepad_button_check(gp_id, gp_shoulderlb) > 0.97;
    dash = gamepad_button_check_pressed(gp_id,gp_shoulderr);
}
