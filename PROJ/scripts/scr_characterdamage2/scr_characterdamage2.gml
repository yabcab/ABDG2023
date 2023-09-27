/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1F9BC7F7
/// @DnDArgument : "funcName" "Scr_CharacterDamage2"
function Scr_CharacterDamage2() 
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0804A18C
	/// @DnDParent : 1F9BC7F7
	/// @DnDArgument : "objectid" "InvSwapper"
	instance_create_layer(0, 0, "Instances", InvSwapper);
}