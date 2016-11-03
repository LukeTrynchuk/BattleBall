///MM_GAME_TYPE_DRAW()
draw_set_font(Main_Menu_Font);                                                      //Set the font
DRAW_BARS();

draw_set_font(Class_Font_New_Menu);                                                 //Set the font
var Class_NotChosenColor = make_colour_rgb(255,255,255);
var Class_ChosenColor = make_color_rgb(0,0,0);
draw_text_colour(20, 20, "CHOOSE GAME TYPE", c_white, c_white, c_white, c_white, 1);    //Draw the instructions


//Draw the classes on the side
var Box_Not_Chosen_col = make_colour_rgb(20,20,20);
var Box_Chosen_col = make_colour_rgb(252, 175, 65);

var Class_X_Start = 60;
var Class_Y_Start = 200;
var Class_Offset = 60;
var Chosen_Offset = 25;

//draw_sprite_ext(Current_Class_Selector, 0, Class_X_Start + 75, Class_Y_Start + Class_Offset * global.Current_Class + 10, 1,1,0,c_white, 0.6);

for(var CurrentType = 0; CurrentType < array_length_1d(MM_GAME_TYPES); CurrentType++)
{
    if(CurrentType != Current_Game_Type)
    {
        draw_line_width_colour(Class_X_Start - 10, Class_Y_Start + Class_Offset * CurrentType + 10, string_width(MM_GAME_TYPES[Current_Game_Type]) + Class_X_Start + 5, Class_Y_Start + Class_Offset * CurrentType + 10, 45, Box_Not_Chosen_col,Box_Not_Chosen_col);
        draw_text_colour(Class_X_Start, Class_Y_Start + Class_Offset * CurrentType, MM_GAME_TYPES[Current_Game_Type], Class_NotChosenColor, Class_NotChosenColor, Class_NotChosenColor, Class_NotChosenColor, 1);
    }
    else
    {
        draw_line_width_colour(Class_X_Start - 10 - Chosen_Offset, Class_Y_Start + Class_Offset * CurrentType + 10, string_width(MM_GAME_TYPES[Current_Game_Type]) + Class_X_Start + 5 - Chosen_Offset, Class_Y_Start + Class_Offset * CurrentType + 10, 45, Box_Chosen_col,Box_Chosen_col);
        draw_text_colour(Class_X_Start - Chosen_Offset, Class_Y_Start + Class_Offset * CurrentType, MM_GAME_TYPES[Current_Game_Type], Class_ChosenColor, Class_ChosenColor, Class_ChosenColor, Class_ChosenColor, 1);
    }
}

