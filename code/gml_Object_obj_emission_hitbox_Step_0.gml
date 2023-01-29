x += hspd
if place_meeting(x, y, obj_player)
{
    if (player_hitted == 0)
    {
        if instance_exists(obj_player)
        {
            if (obj_player.emission_riparato == 0)
            {
                player_hitted = 1
                obj_player.hp -= 20
            }
        }
    }
}
