function outline_start() //gml_Script_outline_start
{
    if (argument_count <= 2)
        var _spr = sprite_index
    else
        _spr = argument[2]
    shader_set(shd_outline)
    var _tex = sprite_get_texture(_spr, image_index)
    var _w = texture_get_texel_width(_tex)
    var _h = texture_get_texel_height(_tex)
    shader_set_uniform_f(uni_size, _w, _h)
    shader_set_uniform_f(uni_thick, argument[0])
    shader_set_uniform_f(uni_color, (color_get_red(argument[1]) / 255), (color_get_green(argument[1]) / 255), (color_get_blue(argument[1]) / 255))
    if (argument_count <= 3)
        var acc = 16
    else
        acc = argument[3]
    shader_set_uniform_f(uni_acc, acc)
    if (argument_count <= 4)
        var tol = 0
    else
        tol = argument[4]
    shader_set_uniform_f(uni_tol, tol)
    var uvs = sprite_get_uvs(_spr, image_index)
    shader_set_uniform_f(uni_uvs, uvs[0], uvs[1], uvs[2], uvs[3])
    return;
}

