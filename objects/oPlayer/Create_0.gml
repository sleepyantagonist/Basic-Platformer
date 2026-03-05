/// @desc establish some key variables

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 7;
global.jumpsp = 8;
global.maxjumps = 2;
global.currjumps = 0;
layer_id = layer_get_id("Tiles_1");
tile_map = layer_tilemap_get_id(layer_id);