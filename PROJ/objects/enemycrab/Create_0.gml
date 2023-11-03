/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 77EB08D7
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l77EB08D7_0 = SurfingonaSineWave;
if (audio_is_playing(l77EB08D7_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7A9927BB
	/// @DnDParent : 77EB08D7
	/// @DnDArgument : "spriteind" "CrabIdleRainbow"
	sprite_index = CrabIdleRainbow;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5DC22CAC
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);