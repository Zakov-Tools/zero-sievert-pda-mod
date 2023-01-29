if (state != gml_Script_scr_state_enemy_watcher_disappearing && state != gml_Script_scr_state_enemy_watcher_appearing && state != gml_Script_scr_state_enemy_watcher_attack1)
    event_inherited()
if (state == gml_Script_scr_state_enemy_watcher_disappearing)
{
    sprite_index = sprite_disappear
    image_speed = ims_disappear
}
if (state == gml_Script_scr_state_enemy_watcher_appearing)
{
    sprite_index = sprite_disappear
    image_speed = (-ims_disappear)
}
if (state == gml_Script_scr_state_enemy_watcher_attack1)
{
    sprite_index = sprite_attack_1
    image_speed = ims_attack1
    if (image_index >= (sprite_get_number(sprite_attack_1) - 1))
        image_speed = 0
}
