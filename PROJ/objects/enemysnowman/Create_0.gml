/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 53F302D1
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 57DF43EF
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l57DF43EF_0 = SurfingonaSineWave;
if (audio_is_playing(l57DF43EF_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1AA54FEB
	/// @DnDParent : 57DF43EF
	/// @DnDArgument : "spriteind" "EnemySquareIdleRainbow"
	sprite_index = EnemySquareIdleRainbow;
	image_index = 0;
}