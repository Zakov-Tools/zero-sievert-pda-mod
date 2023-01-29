function scr_draw_text(argument0, argument1, argument2, argument3) //gml_Script_scr_draw_text
{
    var text_ = argument0
    if (text_counter < string_length(text_))
    {
        text_counter += 0.5
        if scr_chance(10)
            audio_play_sound(snd_voice1, 10, false)
    }
    var substring = string_copy(text_, 1, text_counter)
    draw_text_ext(argument1, argument2, substring, 11, argument3)
    return;
}

