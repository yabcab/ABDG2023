/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B266B45
/// @DnDArgument : "var" "DeathKeep"
/// @DnDArgument : "value" "1"
if(DeathKeep == 1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 248AEAFE
	/// @DnDParent : 4B266B45
	/// @DnDArgument : "soundid" "Hit1"
	audio_play_sound(Hit1, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 45BC0DE4
	/// @DnDParent : 4B266B45
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 64849341
	/// @DnDParent : 4B266B45
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "EnemySquareNotLivingLeft"
	instance_create_layer(x + 0, y + 0, "Instances", EnemySquareNotLivingLeft);
}