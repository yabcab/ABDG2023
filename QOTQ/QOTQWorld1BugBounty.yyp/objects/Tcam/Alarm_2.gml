/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7A1101C6
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 1);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 548D00A8
/// @DnDArgument : "obj" "TitleKeep2"
var l548D00A8_0 = false;
l548D00A8_0 = instance_exists(TitleKeep2);
if(l548D00A8_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 022CBA45
	/// @DnDParent : 548D00A8
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "TitleTextSprTransition"
	sprite_index = TitleTextSprTransition;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 094753B1
/// @DnDArgument : "obj" "TitleKeep3"
var l094753B1_0 = false;
l094753B1_0 = instance_exists(TitleKeep3);
if(l094753B1_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5DDA432A
	/// @DnDParent : 094753B1
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "TitleSel1"
	sprite_index = TitleSel1;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 435735A5
/// @DnDArgument : "obj" "TitleKeep4"
var l435735A5_0 = false;
l435735A5_0 = instance_exists(TitleKeep4);
if(l435735A5_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3E4AB715
	/// @DnDParent : 435735A5
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "TitleSel2"
	sprite_index = TitleSel2;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 540ED2F5
/// @DnDArgument : "obj" "TitleKeep5"
var l540ED2F5_0 = false;
l540ED2F5_0 = instance_exists(TitleKeep5);
if(l540ED2F5_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0C1C6536
	/// @DnDParent : 540ED2F5
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "TitleSel3"
	sprite_index = TitleSel3;
	image_index += 0;
}