///scrPX();
//returns player x, if player is nonexistent, returns a random place

if(instance_exists(objPlayer)) {
    var getPlayer = instance_nearest(scrGetPlayerID() * 1280 + battle_width/2, 800+battle_height/2, objPlayer);

    global.pX = getPlayer.x;
    return getPlayer.x;
} else {
    return global.pX;
}
