/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 0A8F7143
/// @DnDArgument : "soundid" "DashStart"
/// @DnDArgument : "not" "1"
var l0A8F7143_0 = DashStart;
if (!audio_is_playing(l0A8F7143_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 11E4CBB5
	/// @DnDParent : 0A8F7143
	/// @DnDArgument : "soundid" "DashStart"
	audio_play_sound(DashStart, 0, 0);
}