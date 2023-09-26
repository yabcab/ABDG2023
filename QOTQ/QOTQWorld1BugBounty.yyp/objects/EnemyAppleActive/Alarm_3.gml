/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 21829C48
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "EnemyAppleWalkSpr"
sprite_index = EnemyAppleWalkSpr;
image_index += 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2EDCB27B
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "alarm" "4"
alarm_set(4, 60);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 52E091DE
/// @DnDArgument : "speed" "2"
speed = 2;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 46735321
/// @DnDArgument : "direction" "90,180,0,270"
direction = choose(90,180,0,270);