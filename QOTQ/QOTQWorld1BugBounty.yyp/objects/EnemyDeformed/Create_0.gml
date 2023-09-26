/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 5B7056C8
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l5B7056C8_0 = SurfingonaSineWave;
if (audio_is_playing(l5B7056C8_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 38FF4E73
	/// @DnDParent : 5B7056C8
	/// @DnDArgument : "spriteind" "DeformedIdleRainbow"
	sprite_index = DeformedIdleRainbow;
	image_index = 0;
}