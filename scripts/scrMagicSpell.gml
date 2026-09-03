/// scrMagicSpell(playerID)

var playerID = argument[0];
switch (global.charSelect[playerID]) {
    case 0: //Cherry
        var a = instance_create(x, y, objMagicCherry);
        a.vspeed = -2;
        a.gravity = 0.15;
    break;
    case 1: // Hatsune Miku
        var a = instance_create(x, y, objMagicMiku);
        a.hspeed = xScale * 1;
        a.friction = -0.2;
        a.image_xscale = 3 * xScale;
        a.image_yscale = a.image_xscale;
    break;
    case 2: // Colonel
        repeat(10){
            var a = instance_create(x, y, objMagicColonel);
            a.XX = scrGetPlayerID() * 1280 + irandom(battle_width);
            a.YY = 800 + irandom(battle_height);
        }
    break;
    case 3: // Big Kid
        var a = instance_create(x,y,objMagicBigKidController);
        a.followID = id;
    break;
}