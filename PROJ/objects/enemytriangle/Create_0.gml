/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6B7BE657
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 70AB4C7B
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l70AB4C7B_0 = SurfingonaSineWave;
if (audio_is_playing(l70AB4C7B_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 49AE7F95
	/// @DnDParent : 70AB4C7B
	/// @DnDArgument : "spriteind" "EnemyTriangleIdleRainbow"
	sprite_index = EnemyTriangleIdleRainbow;
	image_index = 0;
}