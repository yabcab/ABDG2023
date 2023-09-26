/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1A27C1F5
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 71001507
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemyWormNotLivingLeft"
instance_create_layer(x + 0, y + 0, "Instances", EnemyWormNotLivingLeft);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 41910C5D
/// @DnDArgument : "soundid" "Hit1"
audio_play_sound(Hit1, 0, 0);