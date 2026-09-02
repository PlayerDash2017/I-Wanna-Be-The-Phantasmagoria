///scrPlayerSprite(animation)

var charName = "Player";
switch (global.charSelect[PlayerID])
{
    case 0:
        charName = "Cherry";
    break;
    case 1:
        charName = "Miku";
    break;
    default:
        charName = "Player";
}

return asset_get_index("spr"+string(charName)+string(argument[0]));
