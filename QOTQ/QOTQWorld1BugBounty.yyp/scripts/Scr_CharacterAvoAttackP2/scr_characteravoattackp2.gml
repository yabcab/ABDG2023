/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7ACDC80A
/// @DnDArgument : "funcName" "Scr_CharacterAvoAttackP2"
function Scr_CharacterAvoAttackP2() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0C3DAD32
	/// @DnDParent : 7ACDC80A
	/// @DnDArgument : "obj" "CharVarKeep2P2"
	var l0C3DAD32_0 = false;
	l0C3DAD32_0 = instance_exists(CharVarKeep2P2);
	if(l0C3DAD32_0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 25DF5FDC
		/// @DnDParent : 0C3DAD32
		/// @DnDArgument : "key" "ord("A")"
		var l25DF5FDC_0;
		l25DF5FDC_0 = keyboard_check(ord("A"));
		if (l25DF5FDC_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 337C8773
			/// @DnDParent : 25DF5FDC
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "BulletHitBoxLeft"
			instance_create_layer(x + 0, y + 0, "Instances", BulletHitBoxLeft);
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 03C6B700
		/// @DnDParent : 0C3DAD32
		/// @DnDArgument : "key" "ord("D")"
		var l03C6B700_0;
		l03C6B700_0 = keyboard_check(ord("D"));
		if (l03C6B700_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 625D3508
			/// @DnDParent : 03C6B700
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "BulletHitBoxRight"
			instance_create_layer(x + 0, y + 0, "Instances", BulletHitBoxRight);
		}
	}
}