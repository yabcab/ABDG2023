/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 7A1BE377
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l7A1BE377_0 = SurfingonaSineWave;
if (audio_is_playing(l7A1BE377_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 700A562A
	/// @DnDParent : 7A1BE377
	/// @DnDArgument : "spriteind" "EnemyTriangleTrap2"
	sprite_index = EnemyTriangleTrap2;
	image_index = 0;
}