/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5ECC96FB
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 58B74BBD
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemyCircleNotLivingLeft"
instance_create_layer(x + 0, y + 0, "Instances", EnemyCircleNotLivingLeft);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7012855D
/// @DnDArgument : "soundid" "Hit1"
audio_play_sound(Hit1, 0, 0);