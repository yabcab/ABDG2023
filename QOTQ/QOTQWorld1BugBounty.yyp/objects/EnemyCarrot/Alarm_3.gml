/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 785240DE
/// @DnDArgument : "direction" "1"
/// @DnDArgument : "direction_relative" "1"
direction += 1;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 48A6D7D6
/// @DnDArgument : "angle" "1"
/// @DnDArgument : "angle_relative" "1"
image_angle += 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4F988CEB
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 1);