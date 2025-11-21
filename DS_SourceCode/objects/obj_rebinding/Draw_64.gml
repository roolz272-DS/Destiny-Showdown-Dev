var _string = "";
_string += "press [escape] to exit.\n"


    _string += "\n";
    _string += "\n";
   
    if (!input_binding_scan_in_progress())
    {
        _string += "Please select a control:\n";
        _string += "\n";
        
		for(var i=0; i<array_length(verbs_using); i++)
		{
			if(menu_selection == i) _string+= "--> ";
			_string += input_verb_get_icon(verbs_using[i]) + " = " + verbs_names[i] + "\n";
		}
		_string += "\n";

    } 
    else
    {

        _string += "Rebinding \"" + rebinding_verb + "\" (time remaining = " + string(input_binding_scan_time_remaining()) + "ms)\n";
        _string += "Press [escape] to cancel rebind\n";
		
    }
if(menu_selection == 10) _string += "-->";
_string += "Export \n";
if(menu_selection == 11) _string += "-->";
_string += "Import";
draw_text(10, 10, _string);