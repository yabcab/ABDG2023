/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 00A61631
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 270BF46F
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemyAppleNotLivingRight"
instance_create_layer(x + 0, y + 0, "Instances", EnemyAppleNotLivingRight);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 27B0E052
/// @DnDArgument : "soundid" "Hit1"
audio_play_sound(Hit1, 0, 0);