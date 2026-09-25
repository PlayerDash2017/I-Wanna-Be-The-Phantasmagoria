/// bossNue()

// Music
global.bossMusic[scrGetPlayerID()] = musBossNue;

// Objects
var a;

a = instance_create_battle(512, 224, objPlayerStart);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 0, objBlock);
a.image_xscale = 1;
a.image_yscale = 15;

a = instance_create_battle(32, 0, objBlock);
a.image_xscale = 18;
a.image_yscale = 1;

a = instance_create_battle(32, 448, objBlock);
a.image_xscale = 18;
a.image_yscale = 1;

a = instance_create_battle(608, 0, objBlock);
a.image_xscale = 1;
a.image_yscale = 15;

a = instance_create_battle(480, 256, objNueBlockStart);
a.image_xscale = 3;
a.image_yscale = 1;

a = instance_create_battle(96, 240, objNueBossMain);
a.image_xscale = 1;
a.image_yscale = 1;


// Tilesets

tile_add_battle(bBossColonel, 0, 0, 640, 480, 0, 0, 2000000);