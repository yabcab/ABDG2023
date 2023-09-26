/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 675C3ADB
/// @DnDArgument : "funcName" "scr_characterAttack1"
function scr_characterAttack1() 
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 16CC01CC
	/// @DnDParent : 675C3ADB
	speed = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5CD1A817
	/// @DnDParent : 675C3ADB
	/// @DnDArgument : "key" "vk_left"
	var l5CD1A817_0;
	l5CD1A817_0 = keyboard_check(vk_left);
	if (l5CD1A817_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 11616FED
		/// @DnDParent : 5CD1A817
		/// @DnDArgument : "obj" "RainbowSpaceTracker"
		/// @DnDArgument : "not" "1"
		var l11616FED_0 = false;
		l11616FED_0 = instance_exists(RainbowSpaceTracker);
		if(!l11616FED_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 389CF38B
			/// @DnDParent : 11616FED
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
				/// @DnDArgument : "spriteind" "CharacterSwingLeft"
				sprite_index = CharacterSwingLeft;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 09B09A2D
			/// @DnDParent : 11616FED
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
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 20FCB106
		/// @DnDParent : 5CD1A817
		/// @DnDArgument : "obj" "RainbowSpaceTracker"
		var l20FCB106_0 = false;
		l20FCB106_0 = instance_exists(RainbowSpaceTracker);
		if(l20FCB106_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 3121D14F
			/// @DnDParent : 20FCB106
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l3121D14F_0 = false;
			l3121D14F_0 = instance_exists(InvSwapper);
			if(!l3121D14F_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 04F7A5E3
				/// @DnDParent : 3121D14F
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSwingLeftRS"
				sprite_index = CharacterSwingLeftRS;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 0C132259
			/// @DnDParent : 20FCB106
			/// @DnDArgument : "obj" "InvSwapper"
			var l0C132259_0 = false;
			l0C132259_0 = instance_exists(InvSwapper);
			if(l0C132259_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 0B7943BC
				/// @DnDParent : 0C132259
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSwingLeftinvRS"
				sprite_index = CharacterSwingLeftinvRS;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1FAA0F23
		/// @DnDParent : 5CD1A817
		/// @DnDArgument : "xpos" "-45"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-30"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "SwingHitboxLeft"
		instance_create_layer(x + -45, y + -30, "Instances", SwingHitboxLeft);
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0B88D5C8
	/// @DnDParent : 675C3ADB
	/// @DnDArgument : "key" "vk_right"
	var l0B88D5C8_0;
	l0B88D5C8_0 = keyboard_check(vk_right);
	if (l0B88D5C8_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 15B4B807
		/// @DnDParent : 0B88D5C8
		/// @DnDArgument : "obj" "RainbowSpaceTracker"
		/// @DnDArgument : "not" "1"
		var l15B4B807_0 = false;
		l15B4B807_0 = instance_exists(RainbowSpaceTracker);
		if(!l15B4B807_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 3FED65D5
			/// @DnDParent : 15B4B807
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
				/// @DnDArgument : "spriteind" "CharacterSwingRight"
				sprite_index = CharacterSwingRight;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 75090E7F
			/// @DnDParent : 15B4B807
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
				/// @DnDArgument : "spriteind" "CharacterSwingRightInv"
				sprite_index = CharacterSwingRightInv;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 738A9C46
		/// @DnDParent : 0B88D5C8
		/// @DnDArgument : "obj" "RainbowSpaceTracker"
		var l738A9C46_0 = false;
		l738A9C46_0 = instance_exists(RainbowSpaceTracker);
		if(l738A9C46_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 007D6EEE
			/// @DnDParent : 738A9C46
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l007D6EEE_0 = false;
			l007D6EEE_0 = instance_exists(InvSwapper);
			if(!l007D6EEE_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 5BE3B2DD
				/// @DnDParent : 007D6EEE
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSwingRightRS"
				sprite_index = CharacterSwingRightRS;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 775445FB
			/// @DnDParent : 738A9C46
			/// @DnDArgument : "obj" "InvSwapper"
			var l775445FB_0 = false;
			l775445FB_0 = instance_exists(InvSwapper);
			if(l775445FB_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 51CF9BE1
				/// @DnDParent : 775445FB
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSwingRightInvRS"
				sprite_index = CharacterSwingRightInvRS;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 19B2BA30
		/// @DnDParent : 0B88D5C8
		/// @DnDArgument : "xpos" "10"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-30"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "SwingHitboxRight"
		instance_create_layer(x + 10, y + -30, "Instances", SwingHitboxRight);
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1DF692B8
	/// @DnDParent : 675C3ADB
	/// @DnDArgument : "key" "vk_up"
	var l1DF692B8_0;
	l1DF692B8_0 = keyboard_check(vk_up);
	if (l1DF692B8_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 67BE5F0E
		/// @DnDParent : 1DF692B8
		/// @DnDArgument : "obj" "RainbowSpaceTracker"
		var l67BE5F0E_0 = false;
		l67BE5F0E_0 = instance_exists(RainbowSpaceTracker);
		if(l67BE5F0E_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 3D2184C5
			/// @DnDParent : 67BE5F0E
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
				/// @DnDArgument : "spriteind" "CharacterSwingUpRS"
				sprite_index = CharacterSwingUpRS;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 2C1BA347
			/// @DnDParent : 67BE5F0E
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
				/// @DnDArgument : "spriteind" "CharacterSwingUpInvRS"
				sprite_index = CharacterSwingUpInvRS;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 0CC47700
		/// @DnDParent : 1DF692B8
		/// @DnDArgument : "obj" "RainbowSpaceTracker"
		/// @DnDArgument : "not" "1"
		var l0CC47700_0 = false;
		l0CC47700_0 = instance_exists(RainbowSpaceTracker);
		if(!l0CC47700_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 16DBD2CE
			/// @DnDParent : 0CC47700
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l16DBD2CE_0 = false;
			l16DBD2CE_0 = instance_exists(InvSwapper);
			if(!l16DBD2CE_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 14041A4C
				/// @DnDParent : 16DBD2CE
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSwingUp"
				sprite_index = CharacterSwingUp;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 3A16F638
			/// @DnDParent : 0CC47700
			/// @DnDArgument : "obj" "InvSwapper"
			var l3A16F638_0 = false;
			l3A16F638_0 = instance_exists(InvSwapper);
			if(l3A16F638_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 42376C58
				/// @DnDParent : 3A16F638
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSwingUpInv"
				sprite_index = CharacterSwingUpInv;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1C8682DF
		/// @DnDParent : 1DF692B8
		/// @DnDArgument : "xpos" "-30"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-50"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "SwingHitboxUp"
		instance_create_layer(x + -30, y + -50, "Instances", SwingHitboxUp);
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 77436749
	/// @DnDParent : 675C3ADB
	/// @DnDArgument : "key" "vk_down"
	var l77436749_0;
	l77436749_0 = keyboard_check(vk_down);
	if (l77436749_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6EBB3DE3
		/// @DnDParent : 77436749
		/// @DnDArgument : "obj" "RainbowSpaceTracker"
		var l6EBB3DE3_0 = false;
		l6EBB3DE3_0 = instance_exists(RainbowSpaceTracker);
		if(l6EBB3DE3_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 5F261291
			/// @DnDParent : 6EBB3DE3
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
				/// @DnDArgument : "spriteind" "CharacterSwingDownRS"
				sprite_index = CharacterSwingDownRS;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 3ECE9D18
			/// @DnDParent : 6EBB3DE3
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
				/// @DnDArgument : "spriteind" "CharacterSwingDownInvRS"
				sprite_index = CharacterSwingDownInvRS;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 528DC77D
		/// @DnDParent : 77436749
		/// @DnDArgument : "obj" "RainbowSpaceTracker"
		/// @DnDArgument : "not" "1"
		var l528DC77D_0 = false;
		l528DC77D_0 = instance_exists(RainbowSpaceTracker);
		if(!l528DC77D_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 34F975E8
			/// @DnDParent : 528DC77D
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l34F975E8_0 = false;
			l34F975E8_0 = instance_exists(InvSwapper);
			if(!l34F975E8_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 74B2584F
				/// @DnDParent : 34F975E8
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSwingDown"
				sprite_index = CharacterSwingDown;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 7E4C3BDE
			/// @DnDParent : 528DC77D
			/// @DnDArgument : "obj" "InvSwapper"
			var l7E4C3BDE_0 = false;
			l7E4C3BDE_0 = instance_exists(InvSwapper);
			if(l7E4C3BDE_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 7A3EFC16
				/// @DnDParent : 7E4C3BDE
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSwingDownInv"
				sprite_index = CharacterSwingDownInv;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7F8EABFD
		/// @DnDParent : 77436749
		/// @DnDArgument : "xpos" "-30"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "25"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "SwingHitboxDown"
		instance_create_layer(x + -30, y + 25, "Instances", SwingHitboxDown);
	}
}