/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 17E421A4
/// @DnDArgument : "spriteind" "EnemyAppleShootLeftSpr"
sprite_index = EnemyAppleShootLeftSpr;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 67E6DEEC
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 60);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1927C708
speed = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 34D2975B
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "AppleSeedLeft"
instance_create_layer(x + 0, y + 0, "Instances", AppleSeedLeft);