/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 61EA8D1E
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l61EA8D1E_0 = SurfingonaSineWave;
if (audio_is_playing(l61EA8D1E_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 06F08CE1
	/// @DnDParent : 61EA8D1E
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoStillRS"
	sprite_index = CharacterAvoStillRS;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 5C60A8B4
/// @DnDArgument : "health" "20"

__dnd_health = real(20);