/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1AED2369
/// @DnDArgument : "obj" "CharVarKeep1"
/// @DnDArgument : "not" "1"
var l1AED2369_0 = false;
l1AED2369_0 = instance_exists(CharVarKeep1);
if(!l1AED2369_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 43D4D7E3
	/// @DnDParent : 1AED2369
	/// @DnDArgument : "obj" "CharVarKeep2"
	/// @DnDArgument : "not" "1"
	var l43D4D7E3_0 = false;
	l43D4D7E3_0 = instance_exists(CharVarKeep2);
	if(!l43D4D7E3_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 77C2C2D4
		/// @DnDParent : 43D4D7E3
		/// @DnDArgument : "obj" "CharVarKeep3"
		/// @DnDArgument : "not" "1"
		var l77C2C2D4_0 = false;
		l77C2C2D4_0 = instance_exists(CharVarKeep3);
		if(!l77C2C2D4_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3F906CF9
			/// @DnDParent : 77C2C2D4
			/// @DnDArgument : "objectid" "CharVarKeep1"
			instance_create_layer(0, 0, "Instances", CharVarKeep1);
		}
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 79FA823D
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 1);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 208E68EB
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);