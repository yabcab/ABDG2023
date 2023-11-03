/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 1B706011
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l1B706011_0 = SurfingonaSineWave;
if (audio_is_playing(l1B706011_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4D61A2EA
	/// @DnDParent : 1B706011
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoWalkUpRS"
	sprite_index = CharacterAvoWalkUpRS;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 6DF4F9CA
/// @DnDArgument : "soundid" "SurfingonaSineWave"
/// @DnDArgument : "not" "1"
var l6DF4F9CA_0 = SurfingonaSineWave;
if (!audio_is_playing(l6DF4F9CA_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 14C08301
	/// @DnDParent : 6DF4F9CA
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoWalkUp"
	sprite_index = CharacterAvoWalkUp;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3B8B0891
/// @DnDArgument : "speed" "3"
speed = 3;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 12358501
/// @DnDArgument : "direction" "90"
direction = 90;