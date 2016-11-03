///DRAW_BARS()
///Draw the bars
draw_line_width_colour(-1,0,room_width, 0, room_height / 8, c_black, c_black);                               //Draw the top bar
draw_line_width_colour(-1,room_height, room_width, room_height, room_height / 8, c_black, c_black);          //Drop the bottom bar

var version_col = make_color_rgb(80, 80, 80);
draw_text_colour(room_width - 100, 25, Version, version_col, version_col, version_col, version_col, 1);     //Draw the version

draw_sprite_ext(B_Button_One, 0, 50, room_height - 33, 0.75, 0.75,0,c_white, 1);                                   //Draw the back command
draw_text_colour(80, room_height - 38, "Back", version_col, version_col, version_col, version_col, 1);

draw_sprite_ext(A_Button_One, 0, room_width - 110, room_height - 33, 0.75, 0.75,0,c_white, 1);                                   //Draw the back command

if(myMenuMode == MM_CHOOSE_CLASS)
{
    draw_text_colour(room_width - 80, room_height - 38, "Edit", version_col, version_col, version_col, version_col, 1);
    draw_sprite_ext(Y_Button_One, 0, room_width - 300, room_height - 33, 0.75, 0.75, 0, c_white, 1);
    draw_text_colour(room_width - 270, room_height - 38, "Set Active", version_col, version_col, version_col, version_col, 1);
}
else
{
    draw_text_colour(room_width - 80, room_height - 38, "Confirm", version_col, version_col, version_col, version_col, 1);
}

