/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 13FFBBDB
/// @DnDArgument : "direction" "90,180,0,270"
direction = choose(90,180,0,270);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 46C35217
/// @DnDArgument : "speed" "2"
speed = 2;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 044FCFC5
/// @DnDArgument : "steps" "140"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 140);