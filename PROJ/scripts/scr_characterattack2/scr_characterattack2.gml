/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 66932645
/// @DnDArgument : "funcName" "scr_characterAttack2"
function scr_characterAttack2() 
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 16CC01CC
	/// @DnDParent : 66932645
	speed = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5CD1A817
	/// @DnDParent : 66932645
	/// @DnDArgument : "key" "vk_left"
	var l5CD1A817_0;
	l5CD1A817_0 = keyboard_check(vk_left);
	if (l5CD1A817_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 389CF38B
		/// @DnDParent : 5CD1A817
		/// @DnDArgument : "obj" "InvSwapper"
		/// @DnDArgument : "not" "1"
		var l389CF38B_0 = false;
		l389CF38B_0 = instance_exists(InvSwapper);
		if(!l389CF38B_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 746A8EFA
			/// @DnDParent : 389CF38B
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterThrowKnifeLeft"
			sprite_index = CharacterThrowKnifeLeft;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 09B09A2D
		/// @DnDParent : 5CD1A817
		/// @DnDArgument : "obj" "InvSwapper"
		var l09B09A2D_0 = false;
		l09B09A2D_0 = instance_exists(InvSwapper);
		if(l09B09A2D_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 22AB9B3B
			/// @DnDParent : 09B09A2D
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterSwingLeftinv"
			sprite_index = CharacterSwingLeftinv;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 587C7284
		/// @DnDParent : 5CD1A817
		/// @DnDArgument : "obj" "TKnifeHitboxLeft"
		/// @DnDArgument : "not" "1"
		var l587C7284_0 = false;
		l587C7284_0 = instance_exists(TKnifeHitboxLeft);
		if(!l587C7284_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1FAA0F23
			/// @DnDParent : 587C7284
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "TKnifeHitboxLeft"
			instance_create_layer(x + 0, y + 0, "Instances", TKnifeHitboxLeft);
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0B88D5C8
	/// @DnDParent : 66932645
	/// @DnDArgument : "key" "vk_right"
	var l0B88D5C8_0;
	l0B88D5C8_0 = keyboard_check(vk_right);
	if (l0B88D5C8_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 3FED65D5
		/// @DnDParent : 0B88D5C8
		/// @DnDArgument : "obj" "InvSwapper"
		/// @DnDArgument : "not" "1"
		var l3FED65D5_0 = false;
		l3FED65D5_0 = instance_exists(InvSwapper);
		if(!l3FED65D5_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 6B9C3A02
			/// @DnDParent : 3FED65D5
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterThrowKnifeRight"
			sprite_index = CharacterThrowKnifeRight;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 75090E7F
		/// @DnDParent : 0B88D5C8
		/// @DnDArgument : "obj" "InvSwapper"
		var l75090E7F_0 = false;
		l75090E7F_0 = instance_exists(InvSwapper);
		if(l75090E7F_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 283C3A99
			/// @DnDParent : 75090E7F
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterThrowKnifeRightInv"
			sprite_index = CharacterThrowKnifeRightInv;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 4D5FBC55
		/// @DnDParent : 0B88D5C8
		/// @DnDArgument : "obj" "TKnifeHitboxRight"
		/// @DnDArgument : "not" "1"
		var l4D5FBC55_0 = false;
		l4D5FBC55_0 = instance_exists(TKnifeHitboxRight);
		if(!l4D5FBC55_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 19B2BA30
			/// @DnDParent : 4D5FBC55
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "TKnifeHitboxRight"
			instance_create_layer(x + 0, y + 0, "Instances", TKnifeHitboxRight);
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1DF692B8
	/// @DnDParent : 66932645
	/// @DnDArgument : "key" "vk_up"
	var l1DF692B8_0;
	l1DF692B8_0 = keyboard_check(vk_up);
	if (l1DF692B8_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 3D2184C5
		/// @DnDParent : 1DF692B8
		/// @DnDArgument : "obj" "InvSwapper"
		/// @DnDArgument : "not" "1"
		var l3D2184C5_0 = false;
		l3D2184C5_0 = instance_exists(InvSwapper);
		if(!l3D2184C5_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 6E793764
			/// @DnDParent : 3D2184C5
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterThrowKnifeUp"
			sprite_index = CharacterThrowKnifeUp;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 2C1BA347
		/// @DnDParent : 1DF692B8
		/// @DnDArgument : "obj" "InvSwapper"
		var l2C1BA347_0 = false;
		l2C1BA347_0 = instance_exists(InvSwapper);
		if(l2C1BA347_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 0D4D4491
			/// @DnDParent : 2C1BA347
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterThrowKnifeUpInv"
			sprite_index = CharacterThrowKnifeUpInv;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 406755BF
		/// @DnDParent : 1DF692B8
		/// @DnDArgument : "obj" "TKnifeHitboxUp"
		/// @DnDArgument : "not" "1"
		var l406755BF_0 = false;
		l406755BF_0 = instance_exists(TKnifeHitboxUp);
		if(!l406755BF_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7527F63E
			/// @DnDParent : 406755BF
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "TKnifeHitboxUp"
			instance_create_layer(x + 0, y + 0, "Instances", TKnifeHitboxUp);
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 77436749
	/// @DnDParent : 66932645
	/// @DnDArgument : "key" "vk_down"
	var l77436749_0;
	l77436749_0 = keyboard_check(vk_down);
	if (l77436749_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 5F261291
		/// @DnDParent : 77436749
		/// @DnDArgument : "obj" "InvSwapper"
		/// @DnDArgument : "not" "1"
		var l5F261291_0 = false;
		l5F261291_0 = instance_exists(InvSwapper);
		if(!l5F261291_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 706B27FB
			/// @DnDParent : 5F261291
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterThrowKnifeDown"
			sprite_index = CharacterThrowKnifeDown;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 3ECE9D18
		/// @DnDParent : 77436749
		/// @DnDArgument : "obj" "InvSwapper"
		var l3ECE9D18_0 = false;
		l3ECE9D18_0 = instance_exists(InvSwapper);
		if(l3ECE9D18_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 458467C4
			/// @DnDParent : 3ECE9D18
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterThrowKnifeDownInv"
			sprite_index = CharacterThrowKnifeDownInv;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 348CFB1C
		/// @DnDParent : 77436749
		/// @DnDArgument : "obj" "TKnifeHitboxDown"
		/// @DnDArgument : "not" "1"
		var l348CFB1C_0 = false;
		l348CFB1C_0 = instance_exists(TKnifeHitboxDown);
		if(!l348CFB1C_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4D4E39B0
			/// @DnDParent : 348CFB1C
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "TKnifeHitboxDown"
			instance_create_layer(x + 0, y + 0, "Instances", TKnifeHitboxDown);
		}
	}
}