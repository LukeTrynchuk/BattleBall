///MM_CHOOSE_CLASS_DRAW()
draw_sprite_ext(back_panel, 0, 0,0, room_width / 3 * 2 - 200, room_height, 0, c_white, 0.56); //Draw the back panel

draw_set_font(Main_Menu_Font);                                                      //Set the font
DRAW_BARS();

draw_set_font(Class_Font_New_Menu);                                                 //Set the font
var Class_NotChosenColor = make_colour_rgb(255,255,255);
var Class_ChosenColor = make_color_rgb(0,0,0);
draw_text_colour(20, 20, "CHOOSE CLASS", c_white, c_white, c_white, c_white, 1);    //Draw the instructions

var Box_Not_Chosen_col = make_colour_rgb(20,20,20);
var Box_Chosen_col = make_colour_rgb(252, 175, 65);

var Class_X_Start = 60;
var Class_Y_Start = 200;
var Class_Offset = 60;
var Chosen_Offset = 25;

draw_sprite_ext(Current_Class_Selector, 0, Class_X_Start + 75, Class_Y_Start + Class_Offset * global.Current_Class + 10, 1,1,0,c_white, 0.6);

for(var CurrentChooseClass = 0; CurrentChooseClass < array_length_1d(myClasses); CurrentChooseClass++)
{
    if(CurrentChooseClass != Current_Class_Option)
    {
        draw_line_width_colour(Class_X_Start - 10, Class_Y_Start + Class_Offset * CurrentChooseClass + 10, string_width(myClasses[CurrentChooseClass]) + Class_X_Start + 5, Class_Y_Start + Class_Offset * CurrentChooseClass + 10, 45, Box_Not_Chosen_col,Box_Not_Chosen_col);
        draw_text_colour(Class_X_Start, Class_Y_Start + Class_Offset * CurrentChooseClass, myClasses[CurrentChooseClass], Class_NotChosenColor, Class_NotChosenColor, Class_NotChosenColor, Class_NotChosenColor, 1);
    }
    else
    {
        draw_line_width_colour(Class_X_Start - 10 - Chosen_Offset, Class_Y_Start + Class_Offset * CurrentChooseClass + 10, string_width(myClasses[CurrentChooseClass]) + Class_X_Start + 5 - Chosen_Offset, Class_Y_Start + Class_Offset * CurrentChooseClass + 10, 45, Box_Chosen_col,Box_Chosen_col);
        draw_text_colour(Class_X_Start - Chosen_Offset, Class_Y_Start + Class_Offset * CurrentChooseClass, myClasses[CurrentChooseClass], Class_ChosenColor, Class_ChosenColor, Class_ChosenColor, Class_ChosenColor, 1);
    }
}

var Seperator_Col = make_colour_rgb(83,83,83);
draw_line_width_colour(300, Class_Y_Start, 300, Class_Y_Start + 700, 2, Seperator_Col, Seperator_Col);  //Draw the seperator between the classes and the items

draw_set_font(Class_Choose_Current_Font);                                                               //Draw the current class using appropriate font
draw_text_colour(600, 100, myClasses[Current_Class_Option], c_white, c_white, c_white, c_white, 1);     //Draw the text of the current class


var Gun_X = 675;
var Gun_Y = 350;
draw_sprite_ext(Item_Square_Red, 0,Gun_X, Gun_Y, 1.2,1.2,0,c_white, 1);                                             //Draw the gun item square
switch(global.Class_Gun[Current_Class_Option])                                                          //Draw the different appropriate gun sprites
{
    case "Ol' Rusty":
        draw_sprite_ext(Pistol, 0, Gun_X,Gun_Y,5,5,0, c_white, 1);
        break;
    case "Eh Kay 47":
        draw_sprite_ext(Machinegun, 0,Gun_X,Gun_Y,5,5,0,c_white,1);
        break;
    case "Spitter":
        draw_sprite_ext(Minigun, 0,Gun_X,Gun_Y,5,5,0,c_white, 1);
        break;
    case "Blind Eye":
        draw_sprite_ext(Sniper, 0, Gun_X,Gun_Y,5,5,0,c_white,1);
        break;
}

var Perk_X = 575;
var Perk_Y = 550;
var Perk_Offset = 200;

draw_sprite_ext(Item_Square, 0,Perk_X, Perk_Y, 1.2,1.2,0,c_white, 1);                                             //Draw the gun item square
draw_sprite_ext(Item_Square, 0,Perk_X + Perk_Offset, Perk_Y, 1.2,1.2,0,c_white, 1);                                             //Draw the gun item square

for(var NumPerks = 0; NumPerks < 2; NumPerks++)                                                         //Draw the perks
{
    switch(global.Class_Perk[Current_Class_Option * 2 + NumPerks])
    {
        case "Triple_Jump":
            draw_sprite_ext(TripleJumpPerk, 0, Perk_X + Perk_Offset * NumPerks,Perk_Y, 1,1,0,c_white, 1);
            break;
        case "Rate_of_fire":
            draw_sprite_ext(RateOfFirePerk, 0, Perk_X + Perk_Offset * NumPerks,Perk_Y, 1,1,0,c_white, 1);
            break;
        case "Explosive":
            draw_sprite_ext(ExtraExplosivePerk, 0, Perk_X + Perk_Offset * NumPerks,Perk_Y, 1,1,0,c_white, 1);
            break;
        case "Dash_Cooldown":
            draw_sprite_ext(DashCooldownPerk, 0, Perk_X + Perk_Offset * NumPerks,Perk_Y, 1,1,0,c_white, 1);
            break;
        case "Ground_Smash":
            draw_sprite_ext(SmashPerk, 0, Perk_X + Perk_Offset * NumPerks,Perk_Y, 1,1,0,c_white, 1);
            break;
    }
}
