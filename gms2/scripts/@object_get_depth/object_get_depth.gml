/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 14729ABB
/// @DnDArgument : "code" "/// @description Returns the depth of the specified object.$(13_10)/// @param {Number} obj The index of the object to check$(13_10)/// @return {Number} depth of the object$(13_10)$(13_10)var objID = argument0;$(13_10)var ret = 0;$(13_10)if (objID >= 0) && (objID < array_length_1d(global.__objectID2Depth)) {$(13_10)	ret = global.__objectID2Depth[objID];$(13_10)} // end if$(13_10)return ret;"
/// @description Returns the depth of the specified object.
/// @param {Number} obj The index of the object to check
/// @return {Number} depth of the object

var objID = argument0;
var ret = 0;
if (objID >= 0) && (objID < array_length_1d(global.__objectID2Depth)) {
	ret = global.__objectID2Depth[objID];
} // end if
return ret;