/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0D04A220
/// @DnDArgument : "funcName" "Scr_CharacterDamage2P2"
function Scr_CharacterDamage2P2() 
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0804A18C
	/// @DnDParent : 0D04A220
	/// @DnDArgument : "objectid" "InvSwapperP2"
	instance_create_layer(0, 0, "Instances", InvSwapperP2);
}