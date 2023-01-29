image_xscale = obj_player.image_xscale
x = obj_player.x
y = obj_player.y
depth = (obj_player.depth - 2)
if mouse_check_button_pressed(mb_left)
{
    obj_player.draw_weapon = 1
    obj_player.shoot_stop_ani = 1
    obj_player.state = gml_Script_scr_player_state_move
    obj_player.bleed = player_bleed
    var o = obj_controller
    if (o.item_categoria[item_id] == (3 << 0))
    {
        var _id = item_id
        with (obj_controller)
            scr_aggiungi_item_nel_file_inventario(_id, 1)
    }
    instance_destroy()
}
o = obj_controller
if (o.item_categoria[item_id] == (2 << 0))
{
    obj_player.hp += ((o.med_hp[item_id] / o.med_duration[item_id]) * global.sk_k[(29 << 0)])
    obj_player.radiation_accumulata += ((o.med_radiation[item_id] / o.med_duration[item_id]) * global.sk_k[(29 << 0)])
    obj_player.wound -= ((o.med_wound[item_id] / o.med_duration[item_id]) * global.sk_k[(29 << 0)])
}
if (sprite_index == s_arms_drink || sprite_index == s_arms_drink_juice || sprite_index == s_arms_drink_cola)
{
    if (image_index >= 14 && image_index < 16)
        image_speed = 0.1
    else
        image_speed = 0.5
}
if (sprite_index == s_arms_smoke)
{
    if (image_index > 7 && image_index < 12)
    {
        var a = (39 << 0)
        var ob = obj_particles_controller
        if (image_xscale == 1)
            part_type_direction(ob.particles_type[a], -10, 10, 0, 0)
        else
            part_type_direction(ob.particles_type[a], 170, 190, 0, 0)
        part_emitter_region(ob.particles_system[a], ob.partciles_emitter[a], (x + (2 * image_xscale)), (x + (2 * image_xscale)), (y + 2), (y + 2), 0, 1)
        part_emitter_burst(ob.particles_system[a], ob.partciles_emitter[a], ob.particles_type[a], 1)
    }
}
