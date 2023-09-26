/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7557FFEA
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 60C552CB
/// @DnDArgument : "direction" "135,45,225,315"
direction = choose(135,45,225,315);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 48845E7B
/// @DnDArgument : "spriteind" "EnemyWormIdle"
sprite_index = EnemyWormIdle;
image_index = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 2A503764
/// @DnDArgument : "speed" "2"
speed = 2;