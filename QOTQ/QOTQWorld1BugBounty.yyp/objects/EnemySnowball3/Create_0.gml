/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7FA5C56D
/// @DnDArgument : "steps" "5"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 5);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 53F302D1
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 580EE71D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "SwingHitboxRight"
var l580EE71D_0 = instance_place(x + 0, y + 0, SwingHitboxRight);
if ((l580EE71D_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 348BC54B
	/// @DnDParent : 580EE71D
	/// @DnDArgument : "path" "SBpath3"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath3, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2329FEF6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "SwingHitboxLeft"
var l2329FEF6_0 = instance_place(x + 0, y + 0, SwingHitboxLeft);
if ((l2329FEF6_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 4A89CC9E
	/// @DnDParent : 2329FEF6
	/// @DnDArgument : "path" "SBpath6"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath6, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 606EBB70
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitUpSnowballs"
var l606EBB70_0 = instance_place(x + 0, y + 0, YouWereHitUpSnowballs);
if ((l606EBB70_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 3238B31D
	/// @DnDParent : 606EBB70
	/// @DnDArgument : "path" "SBpath9"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath9, 6, path_action_stop, false);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1DB94F65
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "YouWereHitDownSnowballs"
var l1DB94F65_0 = instance_place(x + 0, y + 0, YouWereHitDownSnowballs);
if ((l1DB94F65_0 > 0))
{
	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 016B13B4
	/// @DnDParent : 1DB94F65
	/// @DnDArgument : "path" "SBpath12"
	/// @DnDArgument : "speed" "6"
	path_start(SBpath12, 6, path_action_stop, false);
}