/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 34A0A37F
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 56322912
/// @DnDArgument : "soundid" "FlameRepellant"
audio_stop_sound(FlameRepellant);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 3C2BEC62
/// @DnDArgument : "soundid" "TherellAlwaysBeNextYear"
/// @DnDArgument : "not" "1"
var l3C2BEC62_0 = TherellAlwaysBeNextYear;
if (!audio_is_playing(l3C2BEC62_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0402CEA0
	/// @DnDParent : 3C2BEC62
	/// @DnDArgument : "soundid" "TherellAlwaysBeNextYear"
	audio_play_sound(TherellAlwaysBeNextYear, 0, 0);
}