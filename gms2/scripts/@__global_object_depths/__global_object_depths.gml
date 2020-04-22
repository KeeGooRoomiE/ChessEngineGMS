/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0AAFA0B2
/// @DnDArgument : "code" "// Initialise the global array that allows the lookup of the depth of a given object$(13_10)// GM2.0 does not have a depth on objects so on import from 1.x a global array is created$(13_10)// NOTE: MacroExpansion is used to insert the array initialisation at import time$(13_10)gml_pragma( "global", "__global_object_depths()");$(13_10)$(13_10)// insert the generated arrays here$(13_10)global.__objectDepths[0] = 0; // obj_daddy$(13_10)global.__objectDepths[1] = 0; // obj_almost_child$(13_10)$(13_10)$(13_10)global.__objectNames[0] = "obj_daddy";$(13_10)global.__objectNames[1] = "obj_almost_child";$(13_10)$(13_10)$(13_10)// create another array that has the correct entries$(13_10)var len = array_length_1d(global.__objectDepths);$(13_10)global.__objectID2Depth = [];$(13_10)for( var i=0; i<len; ++i ) {$(13_10)	var objID = asset_get_index( global.__objectNames[i] );$(13_10)	if (objID >= 0) {$(13_10)		global.__objectID2Depth[ objID ] = global.__objectDepths[i];$(13_10)	} // end if$(13_10)} // end for"
// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_daddy
global.__objectDepths[1] = 0; // obj_almost_child


global.__objectNames[0] = "obj_daddy";
global.__objectNames[1] = "obj_almost_child";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for