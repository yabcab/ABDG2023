/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7BCF5B97
/// @DnDArgument : "key" "vk_down"
var l7BCF5B97_0;
l7BCF5B97_0 = keyboard_check(vk_down);
if (l7BCF5B97_0)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 36497F5F
	/// @DnDParent : 7BCF5B97
	/// @DnDArgument : "soundid" "DashStart"
	/// @DnDArgument : "not" "1"
	var l36497F5F_0 = DashStart;
	if (!audio_is_playing(l36497F5F_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 42591F8D
		/// @DnDParent : 36497F5F
		/// @DnDArgument : "soundid" "DashStart"
		audio_play_sound(DashStart, 0, 0);
	}
}