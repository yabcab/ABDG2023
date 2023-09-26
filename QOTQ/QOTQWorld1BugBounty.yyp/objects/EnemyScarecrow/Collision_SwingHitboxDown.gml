/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0B5A69A0
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4CA3A32E
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemyScarecrowNotLivingDown"
instance_create_layer(x + 0, y + 0, "Instances", EnemyScarecrowNotLivingDown);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4745381A
/// @DnDArgument : "soundid" "Hit1"
audio_play_sound(Hit1, 0, 0);