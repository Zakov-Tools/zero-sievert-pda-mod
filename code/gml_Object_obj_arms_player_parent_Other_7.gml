counter++
var o = obj_controller
if (counter >= counter_max)
{
    if (o.item_categoria[item_id] != (2 << 0))
    {
        obj_player.draw_weapon = 1
        obj_player.state = gml_Script_scr_player_state_move
        obj_player.energy += r_energy
        obj_player.thirst += r_thirst
        obj_player.fatigue += r_fatigue
        obj_player.radiation_accumulata += r_radiation
        instance_destroy()
    }
}
if (sprite_index == s_arms_med1)
{
    image_index = 11
    image_speed = 0
}
if (sprite_index == s_arms_med_bandage)
    image_index = 5
if (sprite_index == s_arms_med_long || sprite_index == s_arms_med_wound_1)
    image_index = 10
