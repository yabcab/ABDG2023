/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 7A4E69E1
/// @DnDArgument : "soundid" "FlowerguysPoolParty"
/// @DnDArgument : "not" "1"
var l7A4E69E1_0 = FlowerguysPoolParty;
if (!audio_is_playing(l7A4E69E1_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 42D2BD10
	/// @DnDParent : 7A4E69E1
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 36D4843E
	/// @DnDParent : 7A4E69E1
	/// @DnDArgument : "soundid" "FlowerguysPoolParty"
	/// @DnDArgument : "loop" "1"
	audio_play_sound(FlowerguysPoolParty, 0, 1);
}