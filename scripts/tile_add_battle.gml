/// tile_add_battle(background, left, top, width, height, x, y, depth)

var XX = scrGetPlayerID() * 1280;
var YY = 800;

tile_add(argument[0], argument[1], argument[2], argument[3], argument[4], XX + argument[5], YY + argument[6], argument[7]);