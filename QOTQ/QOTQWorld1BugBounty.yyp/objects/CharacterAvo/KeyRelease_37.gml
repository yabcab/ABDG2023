/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 5656E6AF
/// @DnDArgument : "soundid" "SurfingonaSineWave"
/// @DnDArgument : "not" "1"
var l5656E6AF_0 = SurfingonaSineWave;
if (!audio_is_playing(l5656E6AF_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0D8666B7
	/// @DnDParent : 5656E6AF
	/// @DnDArgument : "spriteind" "CharacterAvoStill"
	sprite_index = CharacterAvoStill;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 4B5AD98A
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l4B5AD98A_0 = SurfingonaSineWave;
if (audio_is_playing(l4B5AD98A_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 70C93258
	/// @DnDParent : 4B5AD98A
	/// @DnDArgument : "spriteind" "CharacterAvoStillRS"
	sprite_index = CharacterAvoStillRS;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0562377F
speed = 0;