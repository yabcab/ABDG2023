/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 02A9C595
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitUpSnowballs"
var l02A9C595_0 = instance_place(x + 0, y + 0, YouWereHitUpSnowballs);
if ((l02A9C595_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 0DAE73C0
	/// @DnDParent : 02A9C595
	/// @DnDArgument : "path" "SBpath8"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath8, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3D92FD06
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitDownSnowballs"
var l3D92FD06_0 = instance_place(x + 0, y + 0, YouWereHitDownSnowballs);
if ((l3D92FD06_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 799E99E3
	/// @DnDParent : 3D92FD06
	/// @DnDArgument : "path" "SBpath11"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath11, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7B5110B8
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitLeftSnowballs"
var l7B5110B8_0 = instance_place(x + 0, y + 0, YouWereHitLeftSnowballs);
if ((l7B5110B8_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 21C2B4DF
	/// @DnDParent : 7B5110B8
	/// @DnDArgument : "path" "SBpath5"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath5, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3FFE3A3B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitRightSnowballs"
var l3FFE3A3B_0 = instance_place(x + 0, y + 0, YouWereHitRightSnowballs);
if ((l3FFE3A3B_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 37FFE355
	/// @DnDParent : 3FFE3A3B
	/// @DnDArgument : "path" "SBpath2"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath2, 6, path_action_stop, false);
}