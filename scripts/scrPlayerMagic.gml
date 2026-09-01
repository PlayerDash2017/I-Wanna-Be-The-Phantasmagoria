/// scrPlayerMagic()

if (global.playerCharge[PlayerID] != 0)
{
    if (global.playerCharge[PlayerID] == 100)//Level 3
    {
        with(objBossParent){
            if (other.PlayerID != scrGetPlayerID())
                { event_user(2); event_user(3); }
        }

        global.playerMagic[0] = 0;
    }
    else if (global.playerCharge[PlayerID] >= 75)//Level 2
    {
        with(objBossParent){
            if (other.PlayerID != scrGetPlayerID())
                { event_user(2); }
        }

        global.playerMagic[0] -= 50;
    }
    else if (global.playerCharge[PlayerID] >= 50)//Level 1
    {

    }
}

global.playerCharge[PlayerID] = 0;