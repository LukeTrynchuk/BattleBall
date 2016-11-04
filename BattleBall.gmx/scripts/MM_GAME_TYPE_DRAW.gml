///MM_GAME_TYPE_DRAW()
draw_set_font(Main_Menu_Font);                                                      //Set the font
DRAW_BARS();

draw_set_font(Class_Font_New_Menu);                                                 //Set the font
draw_text_colour(20, 20, "CHOOSE GAME TYPE", c_white, c_white, c_white, c_white, 1);    //Draw the instructions

var Option_X = room_width / 7;
var Option_Y = room_width  /5;
var Option_Offset = 60;
var Chosen_Offset = 25;
var Scale = 0.5;

switch(Current_Game_Type)
{
    case 0:
        draw_sprite_ext(LAN_1v1_Choose, 0, Option_X - 70 - Chosen_Offset, Option_Y, Scale, Scale, 0, c_white, 1);                    //Lan 1v1
        break;
}

draw_sprite_ext(Item_Selector, 0, Option_X  - Chosen_Offset - 200, Option_Y + Current_Game_Type * Option_Offset, Scale,Scale,0, c_white, 1);    //Selector

//Seperator
var Seperator_Col = make_colour_rgb(83,83,83);
draw_line_width_colour(Option_X + Option_Offset, Option_Y - 15, Option_X + Option_Offset, Option_Y + 400, 2, Seperator_Col, Seperator_Col);  //Draw the seperator between the options and the items

draw_set_font(Game_Descriptions);
draw_set_colour_write_enable(255,255,255,1);

draw_text_colour(room_width / 4 * 1.5,room_height / 2,  MM_GAME_TYPE_DESCRIPTIONS[Current_Game_Type], c_white, c_white, c_white, c_white, 1);

draw_sprite_ext(LAN1v1_Pic, 0, room_width / 2, room_height / 3, 1,1,0, c_white, 1);
