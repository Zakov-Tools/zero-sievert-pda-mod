function scr_autotiling_road(argument0) //gml_Script_scr_autotiling_road
{
    var layer_tileset_road = argument0
    for (var yy = 0; yy < grid_strada_w; yy++)
    {
        for (var xx = 0; xx < grid_strada_h; xx++)
        {
            if (ds_grid_get(grid_strada, xx, yy) == 1)
            {
                ds_grid_set_region(grid_map, (xx * 3), (yy * 3), ((xx * 3) + 2), ((yy * 3) + 2), -1)
                ds_grid_set_region(grid_building, (xx * 6), (yy * 6), ((xx * 6) + 5), ((yy * 6) + 5), (2 << 0))
                var tile_sopra = ds_grid_get(grid_strada, xx, (yy - 1)) == 1
                var tile_sx = ds_grid_get(grid_strada, (xx - 1), yy) == 1
                var tile_dx = ds_grid_get(grid_strada, (xx + 1), yy) == 1
                var tile_sotto = ds_grid_get(grid_strada, xx, (yy + 1)) == 1
                if ((!tile_sopra) && (!tile_sotto) && tile_dx && tile_sx)
                {
                    var uu = 1
                    if scr_chance(20)
                        uu = 12
                    if scr_chance(20)
                        uu = 13
                    tilemap_set(layer_tileset_road, uu, xx, yy)
                }
                if (tile_sopra && tile_sotto && (!tile_dx) && (!tile_sx))
                {
                    uu = 5
                    if scr_chance(20)
                        uu = 14
                    if scr_chance(20)
                        uu = 15
                    tilemap_set(layer_tileset_road, uu, xx, yy)
                }
                if ((!tile_sopra) && tile_sotto && tile_dx && (!tile_sx))
                    tilemap_set(layer_tileset_road, 2, xx, yy)
                if ((!tile_sopra) && tile_sotto && (!tile_dx) && tile_sx)
                    tilemap_set(layer_tileset_road, 3, xx, yy)
                if (tile_sopra && (!tile_sotto) && tile_dx && (!tile_sx))
                    tilemap_set(layer_tileset_road, 6, xx, yy)
                if (tile_sopra && (!tile_sotto) && (!tile_dx) && tile_sx)
                    tilemap_set(layer_tileset_road, 7, xx, yy)
                if (tile_sopra && (!tile_sotto) && tile_dx && tile_sx)
                    tilemap_set(layer_tileset_road, 9, xx, yy)
                if ((!tile_sopra) && tile_sotto && tile_dx && tile_sx)
                    tilemap_set(layer_tileset_road, 10, xx, yy)
                if (tile_sopra && tile_sotto && tile_dx && (!tile_sx))
                    tilemap_set(layer_tileset_road, 8, xx, yy)
                if (tile_sopra && tile_sotto && (!tile_dx) && tile_sx)
                    tilemap_set(layer_tileset_road, 11, xx, yy)
                if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                    tilemap_set(layer_tileset_road, 4, xx, yy)
            }
        }
    }
    return;
}

