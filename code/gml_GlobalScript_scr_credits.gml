function scr_credits() //gml_Script_scr_credits
{
    credits_text[credits_index] = argument[1]
    credits_size[credits_index] = argument[0]
    if (argument_count > 2)
        credits_color[credits_index] = argument[2]
    credits_index += 1
    return;
}

