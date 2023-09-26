/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 13398FE8
/// @DnDArgument : "soundid" "SurfingonaSineWave"
/// @DnDArgument : "not" "1"
var l13398FE8_0 = SurfingonaSineWave;
if (!audio_is_playing(l13398FE8_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 62713B81
	/// @DnDParent : 13398FE8
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoStill"
	sprite_index = CharacterAvoStill;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 1EFA7A69
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l1EFA7A69_0 = SurfingonaSineWave;
if (audio_is_playing(l1EFA7A69_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 328D44D3
	/// @DnDParent : 1EFA7A69
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoStillRS"
	sprite_index = CharacterAvoStillRS;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7EEC50AB
speed = 0;