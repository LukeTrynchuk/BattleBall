///MM_GAME_TYPE_CONFIRM()
if(gamepad_is_connected(0))
{
    var Num = gamepad_get_device_count();
    if(Num_Controllers_Connected() == 2)
    {
        Playhit(snd_fight, audio_em);
        myMenuMode = MM_LEVEL_SELECT;
        myDrawMode = MM_LEVEL_SELECT_DRAW;
    }
    else
    {
        instance_create(room_width / 2, room_height / 2, Obj_Error_Controller);
    }
}
else
{
    instance_create(room_width / 2, room_height / 2, Obj_Error_Controller);
}
