/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 35102441
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l35102441_0 = SurfingonaSineWave;
if (audio_is_playing(l35102441_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 211323A9
	/// @DnDParent : 35102441
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoWalkRightRS"
	sprite_index = CharacterAvoWalkRightRS;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 1436EB1D
/// @DnDArgument : "soundid" "SurfingonaSineWave"
/// @DnDArgument : "not" "1"
var l1436EB1D_0 = SurfingonaSineWave;
if (!audio_is_playing(l1436EB1D_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6EAC3393
	/// @DnDParent : 1436EB1D
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoWalkRight"
	sprite_index = CharacterAvoWalkRight;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0A633D8F
/// @DnDArgument : "speed" "3"
speed = 3;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 6520C27E
/// @DnDArgument : "direction" "0"
direction = 0;