///MM_CHOOSE_CLASS_DRAW()
draw_sprite_ext(back_panel, 0, 0,0, room_width / 3 * 2 - 200, room_height, 0, c_white, 0.56); //Draw the back panel

draw_set_font(Main_Menu_Font);                                                      //Set the font
DRAW_BARS();

var version_col = make_color_rgb(80, 80, 80);
draw_text_colour(240, room_height - 42, "Game", version_col, version_col, version_col, version_col, 1);
draw_sprite_ext(START_Button_360, 0, 200, room_height - 33, 0.7,0.7,0,c_white, 0.6);

//Top Instructions
draw_set_font(Class_Font_New_Menu);                                                 //Set the font
var Class_NotChosenColor = make_colour_rgb(255,255,255);
var Class_ChosenColor = make_color_rgb(0,0,0);
draw_text_colour(20, 20, "CHOOSE CLASS", c_white, c_white, c_white, c_white, 1);    //Draw the instructions


//Draw the classes on the side
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

//Seperator
var Seperator_Col = make_colour_rgb(83,83,83);
draw_line_width_colour(300, Class_Y_Start, 300, Class_Y_Start + 700, 2, Seperator_Col, Seperator_Col);  //Draw the seperator between the classes and the items

//Class name
draw_set_font(Class_Choose_Current_Font);                                                               //Draw the current class using appropriate font
draw_text_colour(600, 100, myClasses[Current_Class_Option], c_white, c_white, c_white, c_white, 1);     //Draw the text of the current class

//Draw the gun sprite based on the current hovered class
var Gun_X = 675;
var Gun_Y = 350;
//draw_sprite_ext(Item_Square_Red, 0,Gun_X, Gun_Y, 1.2,1.2,0,c_white, 1);                                             //Draw the gun item square
switch(global.Class_Gun[Current_Class_Option])                                                          //Draw the different appropriate gun sprites
{
    case "Pistol":
        draw_sprite_ext(Pistol, 0, Gun_X,Gun_Y,5,5,0, c_white, 1);
        break;
    case "MachineGun":
        draw_sprite_ext(Machinegun, 0,Gun_X,Gun_Y,5,5,0,c_white,1);
        break;
    case "Minigun":
        draw_sprite_ext(Minigun, 0,Gun_X,Gun_Y,5,5,0,c_white, 1);
        break;
    case "Sniper":
        draw_sprite_ext(Sniper, 0, Gun_X,Gun_Y,5,5,0,c_white,1);
        break;
}

//Drawing the perks
var Perk_X = 575;
var Perk_Y = 650;
var Perk_Offset = 200;

for(var NumPerks = 0; NumPerks < 2; NumPerks++)                                                         //Draw the perks
{
    switch(global.Class_Perk[Current_Class_Option * 2 + NumPerks])
    {
        case "TripleJumpPerk":
            draw_sprite_ext(TripleJumpPerk, 0, Perk_X + Perk_Offset * NumPerks,Perk_Y, 1,1,0,c_white, 1);
            break;
        case "RateOfFirePerk":
            draw_sprite_ext(RateOfFirePerk, 0, Perk_X + Perk_Offset * NumPerks,Perk_Y, 1,1,0,c_white, 1);
            break;
        case "ExtraExplosivePerk":
            draw_sprite_ext(ExtraExplosivePerk, 0, Perk_X + Perk_Offset * NumPerks,Perk_Y, 1,1,0,c_white, 1);
            break;
        case "DashCooldownPerk":
            draw_sprite_ext(DashCooldownPerk, 0, Perk_X + Perk_Offset * NumPerks,Perk_Y, 1,1,0,c_white, 1);
            break;
        case "SmashPerk":
            draw_sprite_ext(SmashPerk, 0, Perk_X + Perk_Offset * NumPerks,Perk_Y, 1,1,0,c_white, 1);
            break;
    }
}

//Drawing the stat labels
draw_set_font(Item_Description);
var m_col = make_colour_rgb(200,200,200);
draw_text_colour(room_width * 0.57, room_height / 3 * 2 + 130, "Movement", m_col, m_col, m_col, m_col, 1);
draw_text_colour(room_width * 0.57, room_height / 3 * 2 + 170, "Power", m_col, m_col, m_col, m_col, 1);
draw_text_colour(room_width * 0.57, room_height / 3 * 2 + 210, "Rate of Fire", m_col, m_col, m_col, m_col, 1);

//Drawing the gun name label
var Flag_Col = make_colour_rgb(245, 205, 66);
var N_x = 665 - (string_width(global.Gun_Name[Current_Class_Option]) * 0.5);
var N_y = 400;
draw_sprite_ext(Flag_End, 0, N_x + 20 + string_width(global.Gun_Name[Current_Class_Option]), N_y - 14, 1,1,0,c_white, 1);
draw_sprite_ext(Flag_End, 0, N_x + 1, N_y - 14, -1,1,0,c_white, 1);

draw_line_width_colour(N_x, N_y, N_x + 20 + string_width(global.Gun_Name[Current_Class_Option]), N_y, 30, Flag_Col, Flag_Col);
draw_text_colour(N_x + 10,N_y - 13, global.Gun_Name[Current_Class_Option], c_black, c_black, c_black, c_black, 1);

//Draw the gun stat
var Gun_Stat_x = 520;
var Gun_Stat_y = 460;
var Gun_Stat_Offset = 30;
draw_rectangle_colour(Gun_Stat_x - 20,Gun_Stat_y - 20,Gun_Stat_x + 340,Gun_Stat_y + 100,noone, noone,noone,noone,true);
draw_text_colour(Gun_Stat_x, Gun_Stat_y, "Power", m_col, m_col, m_col, m_col, 1);
draw_text_colour(Gun_Stat_x, Gun_Stat_y + Gun_Stat_Offset, "Kickback", m_col, m_col, m_col, m_col, 1);
draw_text_colour(Gun_Stat_x, Gun_Stat_y + Gun_Stat_Offset * 2, "Accuracy", m_col, m_col, m_col, m_col, 1);



