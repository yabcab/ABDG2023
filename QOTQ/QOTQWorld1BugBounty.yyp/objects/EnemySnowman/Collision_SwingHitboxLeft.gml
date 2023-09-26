/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 54D580C1
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7012855D
/// @DnDArgument : "soundid" "Hit1"
audio_play_sound(Hit1, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2CCBC5FC
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemySnowball1"
instance_create_layer(x + 0, y + 0, "Instances", EnemySnowball1);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E6E6183
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemySnowball2"
instance_create_layer(x + 0, y + 0, "Instances", EnemySnowball2);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 234BB09D
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemySnowball3"
instance_create_layer(x + 0, y + 0, "Instances", EnemySnowball3);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7075C284
/// @DnDArgument : "xpos" "-10"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "5"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "YouWereHitLeftSnowballs"
instance_create_layer(x + -10, y + 5, "Instances", YouWereHitLeftSnowballs);