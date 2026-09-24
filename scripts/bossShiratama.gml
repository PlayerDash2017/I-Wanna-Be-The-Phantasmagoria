/// bossShiratama()

// Music
global.bossMusic[scrGetPlayerID()] = musBossShiratama;

// Objects
var a;

/*a = instance_create_battle(64, 384, objPlayerStart);
a.image_xscale = 1;
a.image_yscale = 1;*/

a = instance_create_battle(0, 0, objShiratamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 0, objShiratamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 448, objShiratamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 448, objShiratamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 32, objShiratamaBlock);
a.image_xscale = 1;
a.image_yscale = 13;

a = instance_create_battle(32, 448, objShiratamaBlock);
a.image_xscale = 18;
a.image_yscale = 1;

a = instance_create_battle(608, 32, objShiratamaBlock);
a.image_xscale = 1;
a.image_yscale = 13;

a = instance_create_battle(32, 0, objShiratamaBlock);
a.image_xscale = 18;
a.image_yscale = 1;

a = instance_create_battle(32, 32, objShiratamaBackground);
a.image_xscale = 18;
a.image_yscale = 13;

a = instance_create_battle(324, 194, objShiratamaBossMain);
a.image_xscale = 1;
a.image_yscale = 1;


// Tilesets

