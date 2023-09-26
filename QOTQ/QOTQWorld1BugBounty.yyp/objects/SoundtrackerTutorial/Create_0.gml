/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 313B313C
/// @DnDArgument : "soundid" "FlameRepellant"
var l313B313C_0 = FlameRepellant;
if (audio_is_playing(l313B313C_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 57B7CB40
	/// @DnDParent : 313B313C
	/// @DnDArgument : "soundid" "FlameRepellant"
	audio_stop_sound(FlameRepellant);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 60C8089A
	/// @DnDParent : 313B313C
	/// @DnDArgument : "steps" "1"
	alarm_set(0, 1);
}