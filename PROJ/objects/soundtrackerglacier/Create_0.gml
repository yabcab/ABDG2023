/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 584E1ADC
/// @DnDArgument : "soundid" "SnowBurn"
/// @DnDArgument : "not" "1"
var l584E1ADC_0 = SnowBurn;
if (!audio_is_playing(l584E1ADC_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0D5495D4
	/// @DnDParent : 584E1ADC
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1D993B62
	/// @DnDParent : 584E1ADC
	/// @DnDArgument : "soundid" "SnowBurn"
	/// @DnDArgument : "loop" "1"
	audio_play_sound(SnowBurn, 0, 1);
}