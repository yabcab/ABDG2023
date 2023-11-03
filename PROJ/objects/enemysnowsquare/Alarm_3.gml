/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4D237232
speed = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 090B2BB1
/// @DnDArgument : "xpos" "-20"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemySwingHitboxLeft"
instance_create_layer(x + -20, y + 0, "Instances", EnemySwingHitboxLeft);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3F9DCFBA
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "alarm" "4"
alarm_set(4, 60);