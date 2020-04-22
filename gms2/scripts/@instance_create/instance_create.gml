/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4826E6F1
/// @DnDArgument : "code" "/// @description Creates an instance of a given object at a given position.$(13_10)/// @param x The x position the object will be created at.$(13_10)/// @param y The y position the object will be created at.$(13_10)/// @param obj The object to create an instance of.$(13_10)var myDepth = object_get_depth( argument2 );$(13_10)return instance_create_depth( argument0, argument1, myDepth, argument2 );$(13_10)"
/// @description Creates an instance of a given object at a given position.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
/// @param obj The object to create an instance of.
var myDepth = object_get_depth( argument2 );
return instance_create_depth( argument0, argument1, myDepth, argument2 );