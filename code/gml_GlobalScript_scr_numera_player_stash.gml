function scr_numera_player_stash(argument0, argument1, argument2) //gml_Script_scr_numera_player_stash
{
    var xx = argument0
    var yy = argument1
    var num = argument2
    var toll = 2
    if (x >= (xx - toll) && x <= (xx + toll) && y >= (yy - toll) && y <= (yy + toll))
        my_id = num
    return;
}

