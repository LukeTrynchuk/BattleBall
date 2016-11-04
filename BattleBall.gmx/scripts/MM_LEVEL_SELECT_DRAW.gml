///MM_LEVEL_SELECT_DRAW()
switch(Selected_Level)
{
    case 0:
        draw_sprite_ext(Clinton_St, 0,room_width / 2 + 27, room_height / 2, 1.3,1.3,0,c_white, 0.2);
        break;
    case 1:
        draw_sprite_ext(Old_Brick_Building, 0,room_width / 2 + 27, room_height / 2, 1.3,1.3,0,c_white, 0.2);
        break;
    case 2:
        draw_sprite_ext(Rundown_School, 0,room_width / 2 + 27, room_height / 2, 1.3,1.3,0,c_white, 0.2);
        break;
}


draw_set_font(Main_Menu_Font);                                                      //Set the font
DRAW_BARS();

draw_set_font(Class_Font_New_Menu);                                                 //Set the font
draw_text_colour(20, 20, "CHOOSE LEVEL", c_white, c_white, c_white, c_white, 1);    //Draw the instructions

var Option_X = room_width / 7;
var Option_Y = room_width  /5;
var Option_Offset = 60;
var Chosen_Offset = 25;
var Scale = 0.5;

for(var _Current_Level = 0; _Current_Level < array_length_1d(Current_Levels); _Current_Level++)
{
    if(_Current_Level != Selected_Level)
    {
        draw_sprite_ext(Option_Spr[_Current_Level * 2], 0, Option_X - 70, Option_Y + Option_Offset * _Current_Level, Scale, Scale, 0, c_white, 1);                    //Lan 1v1
    }
    else
    {
        draw_sprite_ext(Option_Spr[_Current_Level * 2 + 1], 0, Option_X - 70 - Chosen_Offset, Option_Y + Option_Offset * _Current_Level, Scale, Scale, 0, c_white, 1);                    //Lan 1v1
    }
}
        

draw_sprite_ext(Item_Selector, 0, Option_X  - Chosen_Offset - 210, Option_Y + Selected_Level * Option_Offset, Scale,Scale,0, c_white, 1);    //Selector

//Seperator
var Seperator_Col = make_colour_rgb(83,83,83);
draw_line_width_colour(Option_X + Option_Offset, Option_Y - 15, Option_X + Option_Offset, Option_Y + 400, 2, Seperator_Col, Seperator_Col);  //Draw the seperator between the options and the items

draw_set_font(Game_Descriptions);
draw_set_colour_write_enable(255,255,255,1);

