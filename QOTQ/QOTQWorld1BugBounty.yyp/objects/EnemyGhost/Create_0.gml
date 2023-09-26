/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 609AD49B
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l609AD49B_0 = SurfingonaSineWave;
if (audio_is_playing(l609AD49B_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 372FAD74
	/// @DnDParent : 609AD49B
	/// @DnDArgument : "spriteind" "EnemyGhostIdleRainbow"
	sprite_index = EnemyGhostIdleRainbow;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0270F74E
alarm_set(0, 30);