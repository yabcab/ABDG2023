/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 20DC9ACA
/// @DnDArgument : "soundid" "Hit1"
audio_play_sound(Hit1, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 56052979
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2F8DA3F8
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemyCrabNotLivingLeft"
instance_create_layer(x + 0, y + 0, "Instances", EnemyCrabNotLivingLeft);