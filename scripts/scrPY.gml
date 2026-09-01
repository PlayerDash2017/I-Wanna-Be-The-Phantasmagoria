///scrPY();
//returns player y, if player is nonexistent, returns a random place

if(instance_exists(objPlayer)) {
    var getPlayer = instance_nearest(scrGetPlayerID() * 1280 + battle_width/2, 800+battle_height/2, objPlayer);

    global.pY = getPlayer.y;
    return getPlayer.y;
} else {
    return global.pY;
}
