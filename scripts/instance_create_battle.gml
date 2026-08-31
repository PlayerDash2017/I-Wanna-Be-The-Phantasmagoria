/// instance_create_battle(x, y, object)

var XX = scrGetPlayerID() * 1280;
var YY = 800;

return instance_create(XX + argument[0], YY + argument[1], argument[2]);