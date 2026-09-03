/// bossBigCherry()

// Music
global.bossMusic[scrGetPlayerID()] = musBossCherry;

// Objects
var a;

a = instance_create_battle(0, 0, objBlock);
a.image_xscale = 1;
a.image_yscale = 15;

a = instance_create_battle(32, 448, objBlock);
a.image_xscale = 18;
a.image_yscale = 1;

a = instance_create_battle(608, 0, objBlock);
a.image_xscale = 1;
a.image_yscale = 15;

a = instance_create_battle(32, 0, objBlock);
a.image_xscale = 18;
a.image_yscale = 1;

a = instance_create_battle(528, 368, objCherryBossMain);
a.image_xscale = 6;
a.image_yscale = 6;

// Tilesets

tile_add_battle(bAllTiles, 0, 0, 32, 32, 32, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 64, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 96, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 128, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 160, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 192, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 224, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 256, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 288, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 320, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 352, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 384, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 416, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 448, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 480, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 512, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 544, 448, 1000000);
tile_add_battle(bAllTiles, 0, 0, 32, 32, 576, 448, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 32, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 64, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 96, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 128, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 160, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 192, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 224, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 256, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 288, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 320, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 352, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 384, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 416, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 448, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 480, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 512, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 544, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 576, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 0, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 32, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 64, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 96, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 128, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 160, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 192, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 224, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 256, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 288, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 320, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 352, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 384, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 416, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 608, 448, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 32, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 64, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 96, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 128, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 160, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 192, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 224, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 256, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 288, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 320, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 352, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 384, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 416, 1000000);
tile_add_battle(bAllTiles, 32, 0, 32, 32, 0, 448, 1000000);
tile_add_battle(bBossBigCherry, 0, 0, battle_width, battle_height, 0, 0, 2000000);