/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 0B39B54B
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l0B39B54B_0 = SurfingonaSineWave;
if (audio_is_playing(l0B39B54B_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 724126AA
	/// @DnDParent : 0B39B54B
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoStillRS"
	sprite_index = CharacterAvoStillRS;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 2D4B9E29
/// @DnDArgument : "soundid" "SurfingonaSineWave"
/// @DnDArgument : "not" "1"
var l2D4B9E29_0 = SurfingonaSineWave;
if (!audio_is_playing(l2D4B9E29_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 57877BF5
	/// @DnDParent : 2D4B9E29
	/// @DnDArgument : "spriteind" "CharacterAvoStill"
	sprite_index = CharacterAvoStill;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 432141AC
speed = 0;