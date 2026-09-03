/// scrPlayerMagic()

if (global.playerCharge[PlayerID] != 0)
{
    if (global.playerCharge[PlayerID] == 100)//Level 3
    {
        with(objBossParent){
            if (other.PlayerID != scrGetPlayerID())
                { event_user(2); event_user(3); }
        }

        scrMagicSpell(PlayerID);
        global.playerMagic[PlayerID] = 0;
        iframes += 100;
    }
    else if (global.playerCharge[PlayerID] >= 75)//Level 2
    {
        with(objBossParent){
            if (other.PlayerID != scrGetPlayerID())
                { event_user(2); }
        }

        scrMagicSpell(PlayerID);
        global.playerMagic[PlayerID] -= 50;
        iframes += 50;
    }
    else if (global.playerCharge[PlayerID] >= 50)//Level 1
    {
        scrMagicSpell(PlayerID);
        global.playerMagic[PlayerID] -= 25;
        iframes += 25;
    }
}

global.playerCharge[PlayerID] = 0;