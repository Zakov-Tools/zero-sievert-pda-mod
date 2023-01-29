function scr_collision_bullet() //gml_Script_scr_collision_bullet
{
    var create_sound_impact = 0
    var solid_id = obj_node_target_is_enemy
    var destroy = 0
    if place_meeting((x + hspd), y, obj_solid)
    {
        create_sound_impact = 1
        solid_id = instance_place((x + hspd), y, obj_solid)
        destroy = 1
    }
    x += hspd
    if place_meeting(x, (y + vspd), obj_solid)
    {
        create_sound_impact = 1
        solid_id = instance_place(x, (y + vspd), obj_solid)
        destroy = 1
    }
    y += vspd
    if (destroy == 1)
    {
        var dir = point_direction(x, y, (x + hspd), (y + vspd))
        var start_x = x
        var start_y = y
        var temp_x = start_x
        var temp_y = start_y
        var xp = start_x
        var yp = start_y
        var time = current_time
        var collision = place_meeting(temp_x, temp_y, obj_solid)
        while (!collision)
        {
            if (current_time > (time + 4))
                break
            else
            {
                xp = temp_x
                yp = temp_y
                temp_x += lengthdir_x(4, dir)
                temp_y += lengthdir_y(4, dir)
                collision = place_meeting(temp_x, temp_y, obj_solid)
                continue
            }
        }
        var _impact = instance_create_depth(temp_x, temp_y, ((-temp_y) - 64), obj_bullet_hit_wall)
        var _dir = point_direction(hspd, vspd, 0, 0)
        _impact.impact_direction = _dir
        var dec_id = solid_id.decor_id
        if (dec_id != -1)
        {
            if variable_instance_exists(22, "decor_material")
            {
                if (obj_controller.decor_material[dec_id] != (0 << 0))
                {
                    var mat = obj_controller.decor_material[dec_id]
                    var i_max = (array_length_2d(global.bullet_impact, obj_controller.decor_material[dec_id]) - 1)
                    var i = irandom(i_max)
                    i = clamp(i, 0, (i_max - 1))
                    var _suono = global.bullet_impact[mat][i]
                    _impact = instance_create_depth(x, y, 0, obj_bullet_impact)
                    _impact.sound_impact = _suono
                }
            }
        }
        instance_destroy()
    }
    return;
}

