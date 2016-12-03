///GetInput()

up = keyboard_check(vk_space);                                  //The up key
down = keyboard_check(vk_down);                                 //The down key
left =  keyboard_check(vk_left);                                //The left key
right = keyboard_check(vk_right);                               //The right key
up_release = keyboard_check_released(vk_up);                    //The up release key
right_trigger = keyboard_check(ord("I"));                       //The right trigger
dash = keyboard_check(vk_enter);                                //Dash button    

//Override control for game pad
var thresh = 0.5;                                               //The thresh hold

if(gamepad_is_connected(gp_id))                                 //If a controller is hooked in
{
    up = gamepad_button_check_pressed(gp_id,gp_face1);          //The up button
    down = gamepad_axis_value(gp_id, gp_axislv) > thresh;       //The down axis
    left =  gamepad_axis_value(gp_id, gp_axislh) < -thresh;     //The left axis
    right = gamepad_axis_value(gp_id, gp_axislh) > thresh;      //The right axis
    
    axis_left = gamepad_axis_value(gp_id, gp_axislh) < -thresh; //left analog stick
    axis_right = gamepad_axis_value(gp_id, gp_axislh) > thresh; //..
    axis_down = gamepad_axis_value(gp_id, gp_axislv) > thresh;  //..
    axis_up = gamepad_axis_value(gp_id, gp_axislv) < -thresh;   //..
    haxis = gamepad_axis_value(gp_id, gp_axislh);               //The horizontal axis
    vaxis = gamepad_axis_value(gp_id, gp_axislv);               //THe vertical axis
    axis_lh = axis_left + axis_right;                           //Axis left horizontal
    axis_lv = axis_up + axis_down;                              //Axis left vertical
    
    left_bumper = gamepad_button_check_pressed(gp_id,gp_shoulderl);     //Left bumper
    up_release = gamepad_button_check_released(gp_id, gp_face1);        //Up release
    right_trigger = gamepad_button_check(gp_id, gp_shoulderrb);         //Right trigger
    left_trigger = gamepad_button_check(gp_id, gp_shoulderlb) > 0.97;   //Left trigger
    dash = gamepad_button_check_pressed(gp_id,gp_shoulderr);            //Dash button
}
