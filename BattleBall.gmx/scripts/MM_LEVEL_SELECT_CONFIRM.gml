///MM_LEVEL_SELECT_CONFIRM()
switch(Selected_Level)
{
    case 0:
        instance_destroy();
        room_goto(BattleRoom0);
        break;
    case 1:
        instance_destroy();
        room_goto(BattleRoom1);
        break;
    case 2:
        instance_destroy();
        room_goto(BattleRoom2);
        break;
}
