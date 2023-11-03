/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 10BD4E8B
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l10BD4E8B_0 = SurfingonaSineWave;
if (audio_is_playing(l10BD4E8B_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 011BF7E7
	/// @DnDParent : 10BD4E8B
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoWalkLeftRS"
	sprite_index = CharacterAvoWalkLeftRS;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 10E45668
/// @DnDArgument : "soundid" "SurfingonaSineWave"
/// @DnDArgument : "not" "1"
var l10E45668_0 = SurfingonaSineWave;
if (!audio_is_playing(l10E45668_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7E5B15A4
	/// @DnDParent : 10E45668
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoWalkLeft"
	sprite_index = CharacterAvoWalkLeft;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 328D2436
/// @DnDArgument : "direction" "180"
direction = 180;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 11DFBA4B
/// @DnDArgument : "speed" "3"
speed = 3;