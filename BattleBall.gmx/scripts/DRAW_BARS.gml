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

//Draw the current amount of money
var Cur_X = room_width * 0.82 - string_width(string(global.Money));
var Cur_Y = 35;
draw_sprite_ext(TEMP_Currency, 0, Cur_X, Cur_Y, 0.3, 0.3, 0, c_white, 1);
draw_text(Cur_X + 45, Cur_Y - 10, string(global.Money) + "  Upgrade Points");
draw_rectangle_colour(Cur_X - 25, Cur_Y - 20, Cur_X + 60 + string_width(string(global.Money) + "  Upgrade Points"), Cur_Y + 20, noone, noone,noone,noone, true);


