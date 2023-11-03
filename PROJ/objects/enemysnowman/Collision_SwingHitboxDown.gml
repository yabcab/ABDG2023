/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3B63C1AA
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4092E6BC
/// @DnDArgument : "soundid" "Hit1"
audio_play_sound(Hit1, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2900AD1F
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemySnowball1"
instance_create_layer(x + 0, y + 0, "Instances", EnemySnowball1);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 408EB961
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemySnowball2"
instance_create_layer(x + 0, y + 0, "Instances", EnemySnowball2);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2317376C
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemySnowball3"
instance_create_layer(x + 0, y + 0, "Instances", EnemySnowball3);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0336C31F
/// @DnDArgument : "xpos" "-10"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "5"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "YouWereHitDownSnowballs"
instance_create_layer(x + -10, y + 5, "Instances", YouWereHitDownSnowballs);