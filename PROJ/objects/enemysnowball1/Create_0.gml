/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 45B88163
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
/// @DnDHash : 1B7E001C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "SwingHitboxRight"
var l1B7E001C_0 = instance_place(x + 0, y + 0, SwingHitboxRight);
if ((l1B7E001C_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 6A03EFB8
	/// @DnDParent : 1B7E001C
	/// @DnDArgument : "path" "SBpath1"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath1, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 57A59C6A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "SwingHitboxLeft"
var l57A59C6A_0 = instance_place(x + 0, y + 0, SwingHitboxLeft);
if ((l57A59C6A_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 7B4518BF
	/// @DnDParent : 57A59C6A
	/// @DnDArgument : "path" "SBpath4"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath4, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 57AFABC7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitUpSnowballs"
var l57AFABC7_0 = instance_place(x + 0, y + 0, YouWereHitUpSnowballs);
if ((l57AFABC7_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 601FFDD4
	/// @DnDParent : 57AFABC7
	/// @DnDArgument : "path" "SBpath7"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath7, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 259FE665
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitDownSnowballs"
var l259FE665_0 = instance_place(x + 0, y + 0, YouWereHitDownSnowballs);
if ((l259FE665_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 0E03ADE7
	/// @DnDParent : 259FE665
	/// @DnDArgument : "path" "SBpath10"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath10, 6, path_action_stop, false);
}