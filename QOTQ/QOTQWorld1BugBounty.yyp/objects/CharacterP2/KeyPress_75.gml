/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 09F9A219
/// @DnDArgument : "obj" "CharVarKeep1"
var l09F9A219_0 = false;
l09F9A219_0 = instance_exists(CharVarKeep1);
if(l09F9A219_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 72B4E3DD
	/// @DnDParent : 09F9A219
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoStill"
	sprite_index = CharacterAvoStill;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 494B0579
/// @DnDArgument : "obj" "CharVarKeep2"
var l494B0579_0 = false;
l494B0579_0 = instance_exists(CharVarKeep2);
if(l494B0579_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2758AE6C
	/// @DnDParent : 494B0579
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterSpingeTopdown"
	sprite_index = CharacterSpingeTopdown;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5186A7C3
/// @DnDArgument : "obj" "CharVarKeep3"
var l5186A7C3_0 = false;
l5186A7C3_0 = instance_exists(CharVarKeep3);
if(l5186A7C3_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 396861C0
	/// @DnDParent : 5186A7C3
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterTopdown"
	sprite_index = CharacterTopdown;
	image_index += 0;
}