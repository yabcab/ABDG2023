/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 20166453
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7CFEFB15
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "CharacterAvoInv"
instance_create_layer(x + 0, y + 0, "Instances", CharacterAvoInv);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 1D8B2779
/// @DnDArgument : "soundid" "Hit2"
audio_play_sound(Hit2, 0, 0);