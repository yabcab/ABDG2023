/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7452E112
/// @DnDArgument : "var" "DeathKeep"
/// @DnDArgument : "value" "1"
if(DeathKeep == 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 58B74BBD
	/// @DnDParent : 7452E112
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "EnemySquareNotLivingLeft"
	instance_create_layer(x + 0, y + 0, "Instances", EnemySquareNotLivingLeft);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7012855D
	/// @DnDParent : 7452E112
	/// @DnDArgument : "soundid" "Hit1"
	audio_play_sound(Hit1, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E1FEE2B
	/// @DnDParent : 7452E112
	instance_destroy();
}