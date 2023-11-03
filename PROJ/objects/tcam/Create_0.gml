/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 49296228
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 1);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 534CD720
/// @DnDArgument : "soundid" "Influenza"
/// @DnDArgument : "not" "1"
var l534CD720_0 = Influenza;
if (!audio_is_playing(l534CD720_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 41415569
	/// @DnDParent : 534CD720
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4F9E4A0D
	/// @DnDParent : 534CD720
	/// @DnDArgument : "soundid" "Influenza"
	/// @DnDArgument : "loop" "1"
	audio_play_sound(Influenza, 0, 1);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 68647080
/// @DnDArgument : "steps" "1000"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1000);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 35602C58
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);