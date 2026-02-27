/// @desc establish some key variables

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 7;
jumpsp = 10;
maxjumps = 2;
currjumps = 0;

layer_id = layer_get_id("Tiles_1");
tile_map = layer_tilemap_get_id(layer_id);