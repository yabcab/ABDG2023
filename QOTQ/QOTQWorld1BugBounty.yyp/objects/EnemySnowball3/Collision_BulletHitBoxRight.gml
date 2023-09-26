/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 178387BC
/// @DnDArgument : "var" "DeathKeep"
/// @DnDArgument : "value" "1"
if(DeathKeep == 1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 248AEAFE
	/// @DnDParent : 178387BC
	/// @DnDArgument : "soundid" "Hit1"
	audio_play_sound(Hit1, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 35EECBC9
	/// @DnDParent : 178387BC
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5A533D59
	/// @DnDParent : 178387BC
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "EnemySquareNotLivingRight"
	instance_create_layer(x + 0, y + 0, "Instances", EnemySquareNotLivingRight);
}