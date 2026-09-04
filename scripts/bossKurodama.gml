/// bossKurodama()

// Music
global.bossMusic[scrGetPlayerID()] = musBossKurodama;

// Objects
var a;

/*a = instance_create_battle(64, 384, objPlayerStart);
a.image_xscale = 1;
a.image_yscale = 1;*/

a = instance_create_battle(0, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 32, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 64, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 96, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 128, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 160, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 192, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 224, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 256, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 288, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 320, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 352, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 384, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 416, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(32, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(64, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(96, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(128, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(160, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(192, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(224, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(256, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(288, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(320, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(352, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(384, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(416, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(448, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(480, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(512, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(544, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(576, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 448, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 416, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 384, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 352, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 320, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 288, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 256, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 224, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 192, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 160, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 128, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 96, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 64, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 32, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(608, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(576, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(544, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(512, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(480, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(448, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(416, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(384, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(352, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(320, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(288, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(224, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(192, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(160, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(128, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(96, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(64, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(32, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(256, 16, objKurodamaBossMain);
a.image_xscale = 0.8;
a.image_yscale = 0.8;

a = instance_create_battle(256, 0, objKurodamaBlock);
a.image_xscale = 1;
a.image_yscale = 1;


// Tilesets

tile_add_battle(bBossKurodama, 0, 0, 640, 480, 0, 0, 2000000);