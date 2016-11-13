///MM_MARKET_PLACE_DRAW()

draw_sprite_ext(back_panel, 0, 200,200, room_width / 3 * 2 - 100, room_height - 400, 0, c_white, 0.56); //Draw the back panel

draw_set_font(Main_Menu_Font);                                                      //Set the font
DRAW_BARS();

draw_set_font(Class_Font_New_Menu);                                                 //Set the font
draw_text_colour(20, 20, "MARKET PLACE", c_white, c_white, c_white, c_white, 1);    //Draw the instructions

var Option_X = room_width / 5 + 75;
var Option_Y = room_width  /5;
var Option_Offset = 60;
var Chosen_Offset = 25;
var Scale = 0.5;

//Draw the crate options sprites
for(var C_Opt = 0; C_Opt < array_length_1d(Crate_Sprite); C_Opt++)
{
    if(C_Opt == Current_Crate_Option)
    {
        draw_sprite_ext(Crate_Option_Chosen_Sprites[C_Opt], 0, Option_X - (70 + Chosen_Offset), Option_Y + (C_Opt * Option_Offset), Scale,Scale,0,c_white, 1);
    }
    else
    {
        draw_sprite_ext(Crate_Option_Sprites[C_Opt], 0, Option_X - 70, Option_Y + (C_Opt * Option_Offset), Scale,Scale,0,c_white, 1);
    }
    
}

//draw the crate
draw_sprite_ext(Crate_Sprite[Current_Crate_Option], 0, room_width / 2, room_height / 2, Scale, Scale, 0, c_white, 1);

draw_sprite_ext(Item_Selector, 0, Option_X  - Chosen_Offset - 200, Option_Y + Current_Crate_Option * Option_Offset, Scale,Scale,0, c_white, 1);    //Selector

//Seperator
var Seperator_Col = make_colour_rgb(83,83,83);
draw_line_width_colour(Option_X + Option_Offset, Option_Y - 15, Option_X + Option_Offset, Option_Y + 400, 2, Seperator_Col, Seperator_Col);  //Draw the seperator between the options and the items

draw_set_font(Game_Descriptions);
draw_set_colour_write_enable(255,255,255,1);

draw_text_colour(room_width / 4 * 1.5,room_height / 2 + 200,  Crate_Desc[Current_Crate_Option], c_white, c_white, c_white, c_white, 1);

draw_sprite_ext(TEMP_Currency, 0, room_width / 2, room_height / 2 + 150, 0.3,0.3,0, c_white, 1);
draw_text_colour(room_width / 2 + 45, room_height / 2 + 140, string(Crate_Prices[Current_Crate_Option]), c_white, c_white, c_white, c_white, 1);

