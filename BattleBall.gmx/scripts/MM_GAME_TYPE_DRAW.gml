///MM_GAME_TYPE_DRAW()
///MM_MAIN_DRAW()
draw_set_font(Main_Menu_Font);
DRAW_BARS();


draw_line_colour(300,300,400, 300, c_white, c_white);

var Game_X_Start = 60;
var Game_Y_Start = 200;
var Game_Offset = 60;
var Chosen_Offset = 25;

var Box_NotChosenColor = make_colour_rgb(20,20,20);
var Box_ChosenColor = make_colour_rgb(252, 175, 65);

var Class_NotChosenColor = make_colour_rgb(255,255,255);
var Class_ChosenColor = make_color_rgb(0,0,0);

for(var CurrentChooseClass = 0; CurrentChooseClass < array_length_1d(Game_Type_Options); CurrentChooseClass++)
{
    if(CurrentChooseClass != Current_Class_Option)
    {
        draw_line_width_colour(Game_X_Start - 10, Game_Y_Start + Game_Offset * CurrentChooseClass + 10, string_width(Game_Type_Options[Current_Option]) + Game_X_Start + 5, Game_Y_Start + Game_Offset * CurrentChooseClass + 10, 45, Box_NotChosenColor, Box_NotChosenColor);
        draw_text_colour(Game_X_Start, Game_Y_Start + Game_Offset * CurrentChooseClass, Game_Type_Options[Current_Option], Class_NotChosenColor, Class_NotChosenColor, Class_NotChosenColor, Class_NotChosenColor, 1);
    }
    else
    {
        draw_line_width_colour(Game_X_Start - 10 - Chosen_Offset, Game_Y_Start + Game_Offset * CurrentChooseClass + 10, string_width(Game_Type_Options[Current_Option]) + Game_X_Start + 5 - Chosen_Offset, Game_Y_Start + Game_Offset * CurrentChooseClass + 10, 45, Box_ChosenColor,Box_ChosenColor);
        draw_text_colour(Game_X_Start - Chosen_Offset, Game_Y_Start + Game_Offset * CurrentChooseClass, Game_Type_Options[Current_Option], Class_ChosenColor, Class_ChosenColor, Class_ChosenColor, Class_ChosenColor, 1);
    }
}


