/// bossBigKid()

// Music
global.bossMusic[scrGetPlayerID()] = musBossBigKid;

// Objects
var a;

/*a = instance_create_battle(64, 384, objPlayerStart);
a.image_xscale = 1;
a.image_yscale = 1;*/

a = instance_create_battle(416, 312, objBigKidBody);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(392, 168, objBigKidBossMain);
a.image_xscale = 1;
a.image_yscale = 1;

a = instance_create_battle(0, 0, objBlock);
a.image_xscale = 20;
a.image_yscale = 2;

a = instance_create_battle(0, 416, objBlock);
a.image_xscale = 20;
a.image_yscale = 2;

a = instance_create_battle(608, 64, objBlock);
a.image_xscale = 1;
a.image_yscale = 11;

a = instance_create_battle(0, 64, objBlock);
a.image_xscale = 1;
a.image_yscale = 11;


// Tilesets

tile_add_battle(bAllTiles, 32, 96, 32, 32, 0, 32, 1000000);
tile_add_battle(bAllTiles, 32, 96, 32, 32, 608, 32, 1000000);
tile_add_battle(bAllTiles, 32, 96, 32, 32, 608, 416, 1000000);
tile_add_battle(bAllTiles, 32, 96, 32, 32, 0, 416, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 0, 64, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 0, 96, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 0, 128, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 0, 160, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 0, 192, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 0, 224, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 0, 256, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 0, 288, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 0, 320, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 0, 352, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 0, 384, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 608, 64, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 608, 96, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 608, 128, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 608, 160, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 608, 192, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 608, 224, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 608, 256, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 608, 288, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 608, 320, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 608, 352, 1000000);
tile_add_battle(bAllTiles, 32, 64, 32, 32, 608, 384, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 32, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 64, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 96, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 128, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 160, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 192, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 224, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 256, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 288, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 320, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 352, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 384, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 416, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 448, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 480, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 512, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 544, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 576, 32, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 32, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 64, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 96, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 128, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 160, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 192, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 224, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 256, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 288, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 320, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 352, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 384, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 416, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 448, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 480, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 512, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 544, 416, 1000000);
tile_add_battle(bAllTiles, 0, 96, 32, 32, 576, 416, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 0, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 32, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 64, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 96, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 128, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 160, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 192, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 224, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 256, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 288, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 320, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 352, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 384, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 416, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 448, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 480, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 512, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 544, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 576, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 608, 0, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 0, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 32, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 64, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 96, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 128, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 160, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 192, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 224, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 256, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 288, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 320, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 352, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 384, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 416, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 448, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 480, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 512, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 544, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 576, 448, 1000000);
tile_add_battle(bColorTiles, 0, 224, 32, 32, 608, 448, 1000000);
tile_add_battle(bBossBigKid, 0, 0, 640, 480, 0, 0, 2000000);