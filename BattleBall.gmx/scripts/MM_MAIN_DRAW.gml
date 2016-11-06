///MM_MAIN_DRAW()
draw_set_font(Main_Menu_Font);
DRAW_BARS();

//Drawing variable interfaces
var OptionOffset = 50;                                                                                            //The amount of offset for each option
var X_Start = room_width / 7;                                                                                     //The starting x position
var Y_Start = room_width / 5;                                                                                     //The starting y position
var Scale = 0.5;
var Choose_XOffset = 10;
var SelectorOffset = 225;

//Draw the different options on the main menu
switch(Current_Selected_Option)
{
    case 0:                                                                                                       //Play game
        draw_sprite_ext(PlayGame_Selected, 0, X_Start - 70 - Choose_XOffset, Y_Start, Scale,Scale,0, c_white, 1);
        draw_sprite_ext(Choose_Class, 0, X_Start - 50, Y_Start + OptionOffset * 1, Scale,Scale,0, c_white, 1);
        draw_sprite_ext(Quit, 0, X_Start - 100, Y_Start + OptionOffset * 2, Scale,Scale,0, c_white, 1);
        draw_sprite_ext(Item_Selector, 0, X_Start - SelectorOffset, Y_Start, Scale,Scale,0, c_white, 1);
        break;
    case 1:                                                                                                       //Choose class
        draw_sprite_ext(PlayGame, 0, X_Start - 70, Y_Start, Scale,Scale,0, c_white, 1);
        draw_sprite_ext(Choose_Class_Selected, 0, X_Start - 50 - Choose_XOffset, Y_Start + OptionOffset * 1, Scale,Scale,0, c_white, 1);
        draw_sprite_ext(Quit, 0, X_Start - 100, Y_Start + OptionOffset * 2, Scale,Scale,0, c_white, 1);
        draw_sprite_ext(Item_Selector, 0, X_Start - SelectorOffset, Y_Start + OptionOffset * 1, Scale,Scale,0, c_white, 1);
        break;
    case 2:                                                                                                         //Quit
        draw_sprite_ext(PlayGame, 0, X_Start - 70, Y_Start, Scale,Scale,0, c_white, 1);
        draw_sprite_ext(Choose_Class, 0, X_Start - 50, Y_Start + OptionOffset * 1, Scale,Scale,0, c_white, 1);
        draw_sprite_ext(Quit_Selected, 0, X_Start - 75 - Choose_XOffset, Y_Start + OptionOffset * 2, Scale,Scale,0, c_white, 1);
        draw_sprite_ext(Item_Selector, 0, X_Start - SelectorOffset, Y_Start + OptionOffset * 2, Scale,Scale,0, c_white, 1);
        break;
}

draw_sprite_ext(Battle_Ball_Logo, 0, X_Start - 60, Y_Start - OptionOffset * 1.5 - 10, 0.18,0.18,0,c_white, 1);                   //Draw the game title

//Draw the boxes for player info
var Box_col = make_colour_rgb(45,45,45);
draw_line_width_colour(room_width - 400,200, room_width - 100, 200, 30,  Box_col, Box_col);

var Name_col = make_colour_rgb(246, 216, 53);
draw_text_colour(room_width - 390,193, PlayerName, Name_col, Name_col, Name_col, Name_col, 1);                      //Draw the player name
draw_text_colour(room_width - 140,193, "lvl 5", Name_col, Name_col, Name_col, Name_col, 1);                         //Just to tease leveling up


//Draw the class info stuff
var ClassInfoX = room_width - 300;
var ClassInfoY = 250;

draw_line_width_colour(room_width - 300,250, room_width - 100, 250, 30,  Box_col, Box_col);
switch(global.Current_Class)
{
    case 0:
        draw_text_colour(ClassInfoX + 10, ClassInfoY - 7, "Pistol : " + string(PistolExp) + "xp", c_white, c_white, c_white, c_white, 1);
        break;
    case 1:
        draw_text_colour(ClassInfoX + 10, ClassInfoY - 7, "Machine Gun : " + string(MachinegunExp) + "xp", c_white, c_white, c_white, c_white, 1);
        break;
    case 2:
        draw_text_colour(ClassInfoX + 10, ClassInfoY - 7, "Minigun : " + string(MinigunExp) + "xp", c_white, c_white, c_white, c_white, 1);
        break;
    case 3:
        draw_text_colour(ClassInfoX + 10, ClassInfoY - 7, "Sniper : " + string(SniperExp) + "xp", c_white, c_white, c_white, c_white, 1);
        break;
}

