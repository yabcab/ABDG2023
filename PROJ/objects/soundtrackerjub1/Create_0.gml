/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 2ABC5784
/// @DnDArgument : "soundid" "ZoningResidential"
/// @DnDArgument : "not" "1"
var l2ABC5784_0 = ZoningResidential;
if (!audio_is_playing(l2ABC5784_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 73642AD9
	/// @DnDParent : 2ABC5784
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7E5E299C
	/// @DnDParent : 2ABC5784
	/// @DnDArgument : "soundid" "ZoningResidential"
	/// @DnDArgument : "loop" "1"
	audio_play_sound(ZoningResidential, 0, 1);
}