function scr_gauss(argument0, argument1) //gml_Script_scr_gauss
{
    do
    {
        var x1 = (random(2) - 1)
        var x2 = (random(2) - 1)
        var w = ((x1 * x1) + (x2 * x2))
    } until (0 < w && w < 1);
    w = sqrt(((-2 * ln(w)) / w))
    return (argument0 + ((argument1 * x1) * w));
}

