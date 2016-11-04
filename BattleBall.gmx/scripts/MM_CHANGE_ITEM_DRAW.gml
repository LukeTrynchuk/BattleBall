///MM_CHANGE_ITEM_DRAW()

draw_sprite_ext(back_panel, 0, 300,0, room_width / 3 * 2 - 500, room_height, 0, c_white, 0.56); //Draw the back panel

draw_set_font(Main_Menu_Font);                                                                  //Draw the bars and use font
DRAW_BARS();

//Top Instructions
draw_set_font(Class_Font_New_Menu);                                                 //Set the font
draw_text_colour(20, 20, "CHOOSE ITEM", c_white, c_white, c_white, c_white, 1);    //Draw the instructions

//Draw the items we're choosing from
switch(myEditingType)
{
    case EditingType.PERKS:
        for(var CurrentPerk = 0; CurrentPerk < array_length_1d(global.PerksSp); CurrentPerk++)
        {
            if(CurrentPerk == CurrentItem)
            {
                draw_set_font(Class_Font_New_Menu);                                                 //Set the font
                draw_sprite_ext(global.PerksSp[CurrentPerk], 0,room_width / 4, 200 + (CurrentPerk * 140), 1.3,1.3,0,c_white, 1);
                
                var Perk_Name_Col = make_colour_rgb(210,210,210);
                draw_text_colour(room_width / 3, 200 + (CurrentPerk * 140), global.Perk_Name[CurrentPerk],Perk_Name_Col, Perk_Name_Col,Perk_Name_Col,Perk_Name_Col, 1);
                draw_sprite_ext(global.PerksSp[CurrentPerk], 0,room_width / 4 * 3 + 75, room_height / 3, 3,3,0,c_white, 1);
                
                draw_set_font(Item_Description);
                var Perk_Col = make_colour_rgb(200,200,200);
                draw_text_colour(room_width / 4 * 3 - 250, room_height / 4 * 3, global.Perk_Desc[CurrentPerk], Perk_Col, Perk_Col, Perk_Col, Perk_Col,1);
            }
            else
            {
                draw_set_font(Class_Font_New_Menu);                                                 //Set the font
                draw_sprite_ext(global.PerksSp[CurrentPerk], 0,room_width / 4, 200 + (CurrentPerk * 140), 1,1,0,c_white, 0.7);
                draw_text_colour(room_width / 3, 200 + (CurrentPerk * 140), global.Perk_Name[CurrentPerk],c_black, c_black,c_black,c_black, 0.7);
            }
        }
        
        //Seperator
        var Seperator_Col = make_colour_rgb(125,125,125);
        draw_line_width_colour(room_width / 4 * 3 - 200, room_height / 2 + 50, room_width / 4 * 3 + 350, room_height / 2 + 50, 2, Seperator_Col, Seperator_Col);  //Draw the seperator between the classes and the items

        break;
}
