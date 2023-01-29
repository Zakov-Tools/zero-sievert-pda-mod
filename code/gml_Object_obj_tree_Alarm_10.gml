alarm[10] = (18 + irandom_range(-5, 5))
var _fade = 0
if (place_meeting(x, y, obj_npc_parent) || place_meeting(x, y, obj_player) || place_meeting(x, y, obj_chest_general))
    _fade = 1
if (obj_player.state == gml_Script_scr_player_state_move)
{
    if place_meeting(x, y, obj_mouse)
        _fade = 1
}
if (_fade == 1)
{
    if (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true)))
        image_alpha = 0.4
}
else
    image_alpha = 1
