/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 2ABC5784
/// @DnDArgument : "soundid" "Influenza"
/// @DnDArgument : "not" "1"
var l2ABC5784_0 = Influenza;
if (!audio_is_playing(l2ABC5784_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 73642AD9
	/// @DnDParent : 2ABC5784
	audio_stop_all();

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 19294758
	/// @DnDParent : 2ABC5784
	/// @DnDArgument : "steps" "1"
	alarm_set(0, 1);
}