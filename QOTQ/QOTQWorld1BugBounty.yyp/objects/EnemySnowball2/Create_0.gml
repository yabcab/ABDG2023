/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 09D011BE
/// @DnDArgument : "steps" "5"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 5);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 53F302D1
/// @DnDArgument : "steps" "35"
alarm_set(0, 35);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 613371AA
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "SwingHitboxRight"
var l613371AA_0 = instance_place(x + 0, y + 0, SwingHitboxRight);
if ((l613371AA_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 6768E285
	/// @DnDParent : 613371AA
	/// @DnDArgument : "path" "SBpath2"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath2, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2B7D126F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "SwingHitboxLeft"
var l2B7D126F_0 = instance_place(x + 0, y + 0, SwingHitboxLeft);
if ((l2B7D126F_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 7A727D29
	/// @DnDParent : 2B7D126F
	/// @DnDArgument : "path" "SBpath5"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath5, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 0F4DDE62
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitUpSnowballs"
var l0F4DDE62_0 = instance_place(x + 0, y + 0, YouWereHitUpSnowballs);
if ((l0F4DDE62_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 3BFFB8C0
	/// @DnDParent : 0F4DDE62
	/// @DnDArgument : "path" "SBpath8"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath8, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 729EDF56
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitDownSnowballs"
var l729EDF56_0 = instance_place(x + 0, y + 0, YouWereHitDownSnowballs);
if ((l729EDF56_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 2629EC3F
	/// @DnDParent : 729EDF56
	/// @DnDArgument : "path" "SBpath11"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath11, 6, path_action_stop, false);
}