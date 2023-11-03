/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 47480E2D
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "TrapCount"
TrapCount += 1;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1517559C
speed = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1E98D506
/// @DnDArgument : "steps" "140"
alarm_set(0, 140);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31E530AC
/// @DnDArgument : "var" "TrapCount"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "5"
if(TrapCount < 5)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 764AA1F3
	/// @DnDParent : 31E530AC
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Trap"
	instance_create_layer(x + 0, y + 0, "Instances", Trap);
}