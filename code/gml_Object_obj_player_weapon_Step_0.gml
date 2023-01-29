if instance_exists(follow_id)
{
    if instance_exists(obj_player)
    {
        if instance_exists(obj_camera)
        {
            if (obj_camera.follow != (5 << 0))
            {
                if (obj_player.item_categoria[obj_player.arma_now] == (0 << 0))
                {
                    sprite_index = follow_id.item_sprite_ingame[follow_id.arma_now]
                    my_id = follow_id.arma_now
                    image_yscale = 0.4
                    off_k = (5 / follow_id.arma_rate_of_fire[follow_id.arma_now])
                    off_k = clamp(off_k, 1, 10)
                    off_angle -= off_k
                    off_angle = clamp(off_angle, 0.5, 5)
                    if (x > mouse_x)
                    {
                        var rot = (follow_id.weapon_pointing_direction + 180)
                        image_xscale = -0.4
                        image_angle = ((rot - off_angle) - off_angle_switching)
                        depth = (follow_id.depth + 3)
                    }
                    else
                    {
                        rot = follow_id.weapon_pointing_direction
                        image_xscale = 0.4
                        image_angle = ((rot + off_angle) + off_angle_switching)
                        depth = (follow_id.depth - 3)
                    }
                    off_k = (2 / follow_id.arma_rate_of_fire[follow_id.arma_now])
                    off_k = clamp(off_k, 0.25, 10)
                    off_amount -= off_k
                    off_amount = clamp(off_amount, 0, 3)
                    x = (follow_id.x - lengthdir_x(off_amount, off_dir))
                    y = ((follow_id.y + 5) + lengthdir_y(off_amount, off_dir))
                }
            }
            if (obj_camera.follow == (5 << 0))
            {
                depth = (follow_id.depth - 3)
                image_xscale = 0.4
                x = follow_id.x
                y = (follow_id.y + 5)
                if (obj_camera.wl_state == (0 << 0) || obj_camera.wl_state == (2 << 0))
                    image_angle = 0
                if (obj_camera.wl_state == (1 << 0))
                {
                    switch pl_weap_state
                    {
                        case (0 << 0):
                            wl_timer++
                            var _k = (wl_timer / wl_timer_max1)
                            var _angle = lerp(0, wl_angle_max, power(_k, (1 - _k)))
                            wl_off_x = lerp(0, wl_off_x_max, power(_k, (1 - _k)))
                            wl_off_y = lerp(0, wl_off_y_max, power(_k, (1 - _k)))
                            image_angle = _angle
                            x = (follow_id.x + wl_off_x)
                            y = ((follow_id.y + 5) - wl_off_y)
                            if (wl_timer >= wl_timer_max1)
                            {
                                wl_timer = 0
                                pl_weap_state = (1 << 0)
                            }
                            if (wl_timer >= (wl_timer_max1 * 0.15) && wl_timer < ((wl_timer_max1 * 0.15) + 2))
                            {
                                var _sound = obj_player.arma_sound_mag_out[my_id]
                                if (!audio_is_playing(_sound))
                                    audio_play_sound(_sound, 15, false)
                            }
                            break
                        case (1 << 0):
                            wl_timer++
                            x = (follow_id.x + wl_off_x)
                            y = ((follow_id.y + 5) - wl_off_y)
                            if (wl_timer >= wl_timer_max2)
                            {
                                wl_timer = 0
                                pl_weap_state = (2 << 0)
                            }
                            break
                        case (2 << 0):
                            wl_timer++
                            _k = (wl_timer / wl_timer_max3)
                            _angle = lerp(wl_angle_max, 0, power(_k, (1 - _k)))
                            wl_off_x = lerp(wl_off_x_max, 0, power(_k, (1 - _k)))
                            wl_off_y = lerp(wl_off_y_max, 0, power(_k, (1 - _k)))
                            image_angle = _angle
                            x = (follow_id.x + wl_off_x)
                            y = ((follow_id.y + 5) - wl_off_y)
                            if (wl_timer >= wl_timer_max3)
                            {
                                wl_timer = 0
                                pl_weap_state = (0 << 0)
                            }
                            if (wl_timer >= (wl_timer_max3 * 0.7) && wl_timer < ((wl_timer_max3 * 0.7) + 2))
                            {
                                _sound = obj_player.arma_sound_mag_in[my_id]
                                if (!audio_is_playing(_sound))
                                    audio_play_sound(_sound, 15, false)
                            }
                            break
                    }

                }
            }
        }
    }
}
else
    instance_destroy()
