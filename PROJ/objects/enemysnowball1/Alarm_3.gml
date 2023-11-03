/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 447064D8
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitUpSnowballs"
var l447064D8_0 = instance_place(x + 0, y + 0, YouWereHitUpSnowballs);
if ((l447064D8_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 73B87346
	/// @DnDParent : 447064D8
	/// @DnDArgument : "path" "SBpath7"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath7, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 518BBD04
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitDownSnowballs"
var l518BBD04_0 = instance_place(x + 0, y + 0, YouWereHitDownSnowballs);
if ((l518BBD04_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 5C7E5239
	/// @DnDParent : 518BBD04
	/// @DnDArgument : "path" "SBpath10"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath10, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 0F219916
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitLeftSnowballs"
var l0F219916_0 = instance_place(x + 0, y + 0, YouWereHitLeftSnowballs);
if ((l0F219916_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 3A474FE4
	/// @DnDParent : 0F219916
	/// @DnDArgument : "path" "SBpath4"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath4, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3B843330
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitRightSnowballs"
var l3B843330_0 = instance_place(x + 0, y + 0, YouWereHitRightSnowballs);
if ((l3B843330_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 193A9403
	/// @DnDParent : 3B843330
	/// @DnDArgument : "path" "SBpath1"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath1, 6, path_action_stop, false);
}