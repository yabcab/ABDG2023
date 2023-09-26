/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6DBE15D7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitUpSnowballs"
var l6DBE15D7_0 = instance_place(x + 0, y + 0, YouWereHitUpSnowballs);
if ((l6DBE15D7_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 5A527D7F
	/// @DnDParent : 6DBE15D7
	/// @DnDArgument : "path" "SBpath9"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath9, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7E3FA8F0
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitDownSnowballs"
var l7E3FA8F0_0 = instance_place(x + 0, y + 0, YouWereHitDownSnowballs);
if ((l7E3FA8F0_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 7D9A2A87
	/// @DnDParent : 7E3FA8F0
	/// @DnDArgument : "path" "SBpath12"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath12, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 559206C8
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitLeftSnowballs"
var l559206C8_0 = instance_place(x + 0, y + 0, YouWereHitLeftSnowballs);
if ((l559206C8_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 549482B9
	/// @DnDParent : 559206C8
	/// @DnDArgument : "path" "SBpath6"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath6, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 25F0574A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitRightSnowballs"
var l25F0574A_0 = instance_place(x + 0, y + 0, YouWereHitRightSnowballs);
if ((l25F0574A_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 70DD3E6C
	/// @DnDParent : 25F0574A
	/// @DnDArgument : "path" "SBpath3"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath3, 6, path_action_stop, false);
}