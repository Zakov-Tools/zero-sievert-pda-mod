if (rotation == 0)
{
    caselle_x = (sprite_get_width(sprite_index) div 16)
    caselle_y = (sprite_get_height(sprite_index) div 16)
    offset_x = 0
    offset_y = 0
}
else if (rotation == 90)
{
    caselle_x = (sprite_get_height(sprite_index) div 16)
    caselle_y = (sprite_get_width(sprite_index) div 16)
    offset_x = 0
    offset_y = 0
}
durability = clamp(durability, 0, 100)
if (room != r_menu)
{
    if instance_exists(obj_player)
    {
        if (obj_player.state != gml_Script_scr_player_state_mod)
        {
            if (obj_mouse.dragging == 1)
            {
                if instance_place(x, y, obj_item)
                {
                    var other_item = instance_place(x, y, obj_item)
                    if (id != other_item && id != obj_mouse.item_id_dragged)
                    {
                        collision_with_item = 1
                        if (item_stack_max[my_id] != 1)
                        {
                            if (my_id == other_item.my_id)
                                collision_with_same_item = 1
                            else
                                collision_with_same_item = 0
                        }
                    }
                }
                else
                    collision_with_item = 0
            }
            if (qnt <= 0)
                instance_destroy()
        }
    }
}
