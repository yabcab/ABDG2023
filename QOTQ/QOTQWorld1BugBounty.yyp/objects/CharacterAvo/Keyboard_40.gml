/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 372B6559
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l372B6559_0 = SurfingonaSineWave;
if (audio_is_playing(l372B6559_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3D155B3C
	/// @DnDParent : 372B6559
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoWalkDownRS"
	sprite_index = CharacterAvoWalkDownRS;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 69FA095F
/// @DnDArgument : "soundid" "SurfingonaSineWave"
/// @DnDArgument : "not" "1"
var l69FA095F_0 = SurfingonaSineWave;
if (!audio_is_playing(l69FA095F_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6CB51E43
	/// @DnDParent : 69FA095F
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoWalkDown"
	sprite_index = CharacterAvoWalkDown;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 446CB3AE
/// @DnDArgument : "speed" "3"
speed = 3;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 6EDAB2D6
/// @DnDArgument : "direction" "270"
direction = 270;