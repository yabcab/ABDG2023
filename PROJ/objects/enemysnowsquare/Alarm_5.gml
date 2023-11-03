/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0D626A84
speed = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6115FA7F
/// @DnDArgument : "xpos" "40"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemySwingHitboxRight"
instance_create_layer(x + 40, y + 0, "Instances", EnemySwingHitboxRight);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 478D6F7D
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);