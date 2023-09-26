/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7A04CDB5
/// @DnDArgument : "obj" "InvSwapper"
/// @DnDArgument : "not" "1"
var l7A04CDB5_0 = false;
l7A04CDB5_0 = instance_exists(InvSwapper);
if(!l7A04CDB5_0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7AA47AA5
	/// @DnDParent : 7A04CDB5
	/// @DnDArgument : "script" "Scr_CharacterDamageP2"
	script_execute(Scr_CharacterDamageP2);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2BF4CB24
	/// @DnDParent : 7A04CDB5
	/// @DnDArgument : "steps" "125"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 125);
}