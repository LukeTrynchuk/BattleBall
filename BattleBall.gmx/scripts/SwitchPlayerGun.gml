///SwitchPlayerGun()
switch(CurrentClass)
        {
            case 0:
                if(myPlayer_Choosing == PlayerChoosing.PLAYER_1)
                {
                    global.Player1Gun = "Pistol";
                }
                else
                {
                    global.Player2Gun = "Pistol";
                }
                break;
            case 1:
                if(myPlayer_Choosing == PlayerChoosing.PLAYER_1)
                {
                    global.Player1Gun = "MachineGun";
                }
                else
                {
                    global.Player2Gun = "MachineGun";
                }
                break;
            case 2:
                if(myPlayer_Choosing == PlayerChoosing.PLAYER_1)
                {
                    global.Player1Gun = "Minigun";
                }
                else
                {
                    global.Player2Gun = "Minigun";
                }
                break;
            case 3:
                if(myPlayer_Choosing == PlayerChoosing.PLAYER_1)
                {
                    global.Player1Gun = "Sniper";
                }
                else
                {
                    global.Player2Gun = "Sniper";
                }
                break;
        }
