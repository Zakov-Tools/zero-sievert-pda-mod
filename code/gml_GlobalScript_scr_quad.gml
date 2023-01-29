function scr_quad(argument0, argument1, argument2, argument3, argument4) //gml_Script_scr_quad
{
    var _vb = argument0
    var _x1 = argument1
    var _y1 = argument2
    var _x2 = argument3
    var _y2 = argument4
    vertex_position_3d(_vb, _x1, _y1, 0)
    vertex_position_3d(_vb, _x1, _y1, 1)
    vertex_position_3d(_vb, _x2, _y2, 0)
    vertex_position_3d(_vb, _x1, _y1, 1)
    vertex_position_3d(_vb, _x2, _y2, 0)
    vertex_position_3d(_vb, _x2, _y2, 1)
    return;
}

