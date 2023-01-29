function scr_check_fast_position(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) //gml_Script_scr_check_fast_position
{
    if (argument0 >= (argument3 - argument2) && (argument0 + argument7) <= ((argument3 + argument5) + argument2) && argument1 >= (argument4 - argument2) && (argument1 + argument8) <= ((argument4 + argument6) + argument2))
        return 1;
    else
        return 0;
}

