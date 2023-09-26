/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 40FD7640
/// @DnDArgument : "soundid" "FlameRepellant"
/// @DnDArgument : "not" "1"
var l40FD7640_0 = FlameRepellant;
if (!audio_is_playing(l40FD7640_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 018D29CB
	/// @DnDParent : 40FD7640
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5DD25F28
	/// @DnDParent : 40FD7640
	/// @DnDArgument : "soundid" "FlameRepellant"
	/// @DnDArgument : "loop" "1"
	audio_play_sound(FlameRepellant, 0, 1);
}