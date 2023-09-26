/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 25033199
/// @DnDArgument : "soundid" "SurfingonaSineWave"
/// @DnDArgument : "not" "1"
var l25033199_0 = SurfingonaSineWave;
if (!audio_is_playing(l25033199_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2D3A1EA7
	/// @DnDParent : 25033199
	/// @DnDArgument : "spriteind" "CharacterAvoStill"
	sprite_index = CharacterAvoStill;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 1A63BBCE
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l1A63BBCE_0 = SurfingonaSineWave;
if (audio_is_playing(l1A63BBCE_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 40185A7B
	/// @DnDParent : 1A63BBCE
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoStillRS"
	sprite_index = CharacterAvoStillRS;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 19FF83A7
speed = 0;