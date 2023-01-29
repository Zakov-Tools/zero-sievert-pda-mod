var n_t = array_length_1d(t_x1)
for (var i = 0; i < n_t; i++)
{
    if (obj_player.x > t_x1[i] && obj_player.x < t_x2[i] && obj_player.y > t_y1[i] && obj_player.y < t_y2[i])
        state = i
}
