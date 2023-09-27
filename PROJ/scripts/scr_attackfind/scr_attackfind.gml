/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0600470C
/// @DnDArgument : "funcName" "scr_attackfind"
function scr_attackfind() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 34B5E89C
	/// @DnDParent : 0600470C
	/// @DnDArgument : "obj" "AttackTracker1"
	var l34B5E89C_0 = false;
	l34B5E89C_0 = instance_exists(AttackTracker1);
	if(l34B5E89C_0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 105ABBC8
		/// @DnDParent : 34B5E89C
		/// @DnDArgument : "script" "scr_characterAttack1"
		script_execute(scr_characterAttack1);
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 5A68F7CE
	/// @DnDParent : 0600470C
	/// @DnDArgument : "obj" "AttackTracker2"
	var l5A68F7CE_0 = false;
	l5A68F7CE_0 = instance_exists(AttackTracker2);
	if(l5A68F7CE_0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7572F06B
		/// @DnDParent : 5A68F7CE
		/// @DnDArgument : "script" "scr_characterAttack2"
		script_execute(scr_characterAttack2);
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0A640C77
	/// @DnDParent : 0600470C
	/// @DnDArgument : "obj" "AttackTracker3"
	var l0A640C77_0 = false;
	l0A640C77_0 = instance_exists(AttackTracker3);
	if(l0A640C77_0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5E5B1548
		/// @DnDParent : 0A640C77
		/// @DnDArgument : "script" "scr_characterAttack3"
		script_execute(scr_characterAttack3);
	}
}