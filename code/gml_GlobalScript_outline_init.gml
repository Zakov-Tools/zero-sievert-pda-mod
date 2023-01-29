function outline_init() //gml_Script_outline_init
{
    uni_size = shader_get_uniform(shd_outline, "size")
    uni_thick = shader_get_uniform(shd_outline, "thick")
    uni_color = shader_get_uniform(shd_outline, "oColor")
    uni_acc = shader_get_uniform(shd_outline, "accuracy")
    uni_tol = shader_get_uniform(shd_outline, "tol")
    uni_uvs = shader_get_uniform(shd_outline, "uvs")
    return;
}

