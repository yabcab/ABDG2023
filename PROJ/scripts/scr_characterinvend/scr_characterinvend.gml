/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4002FFF4
/// @DnDArgument : "funcName" "Scr_CharacterInvEnd"
function Scr_CharacterInvEnd() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 23000FFE
	/// @DnDParent : 4002FFF4
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "WaterHitbox"
	/// @DnDArgument : "not" "1"
	var l23000FFE_0 = instance_place(x + 0, y + 0, WaterHitbox);
	if (!(l23000FFE_0 > 0))
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6DE0D7E6
		/// @DnDParent : 23000FFE
		/// @DnDArgument : "obj" "CharVarKeep1"
		var l6DE0D7E6_0 = false;
		l6DE0D7E6_0 = instance_exists(CharVarKeep1);
		if(l6DE0D7E6_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 26B0DFBA
			/// @DnDParent : 6DE0D7E6
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l26B0DFBA_0 = false;
			l26B0DFBA_0 = instance_exists(RainbowSpaceTracker);
			if(l26B0DFBA_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 60E9BF39
				/// @DnDParent : 26B0DFBA
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterTopdownRS"
				sprite_index = CharacterTopdownRS;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 0E8CBF4D
			/// @DnDParent : 6DE0D7E6
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l0E8CBF4D_0 = false;
			l0E8CBF4D_0 = instance_exists(RainbowSpaceTracker);
			if(!l0E8CBF4D_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 5778F11B
				/// @DnDParent : 0E8CBF4D
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterTopdown"
				sprite_index = CharacterTopdown;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 4E2F0182
		/// @DnDParent : 23000FFE
		/// @DnDArgument : "obj" "CharVarKeep2"
		var l4E2F0182_0 = false;
		l4E2F0182_0 = instance_exists(CharVarKeep2);
		if(l4E2F0182_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 453C0746
			/// @DnDParent : 4E2F0182
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l453C0746_0 = false;
			l453C0746_0 = instance_exists(RainbowSpaceTracker);
			if(l453C0746_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 0DD99AE7
				/// @DnDParent : 453C0746
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoStillRS"
				sprite_index = CharacterAvoStillRS;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 431A57F9
			/// @DnDParent : 4E2F0182
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l431A57F9_0 = false;
			l431A57F9_0 = instance_exists(RainbowSpaceTracker);
			if(!l431A57F9_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 10884236
				/// @DnDParent : 431A57F9
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoStill"
				sprite_index = CharacterAvoStill;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 264E3709
		/// @DnDParent : 23000FFE
		/// @DnDArgument : "obj" "CharVarKeep3"
		var l264E3709_0 = false;
		l264E3709_0 = instance_exists(CharVarKeep3);
		if(l264E3709_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 36C46BAF
			/// @DnDParent : 264E3709
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l36C46BAF_0 = false;
			l36C46BAF_0 = instance_exists(RainbowSpaceTracker);
			if(l36C46BAF_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 3AC259CF
				/// @DnDParent : 36C46BAF
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeTopdownRS"
				sprite_index = CharacterSpingeTopdownRS;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 4C915E54
			/// @DnDParent : 264E3709
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l4C915E54_0 = false;
			l4C915E54_0 = instance_exists(RainbowSpaceTracker);
			if(!l4C915E54_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 60593C56
				/// @DnDParent : 4C915E54
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeTopdown"
				sprite_index = CharacterSpingeTopdown;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 43598C57
	/// @DnDParent : 4002FFF4
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "WaterHitbox"
	var l43598C57_0 = instance_place(x + 0, y + 0, WaterHitbox);
	if ((l43598C57_0 > 0))
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6E7C1602
		/// @DnDParent : 43598C57
		/// @DnDArgument : "obj" "CharVarKeep1"
		var l6E7C1602_0 = false;
		l6E7C1602_0 = instance_exists(CharVarKeep1);
		if(l6E7C1602_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 6D652CDF
			/// @DnDParent : 6E7C1602
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l6D652CDF_0 = false;
			l6D652CDF_0 = instance_exists(RainbowSpaceTracker);
			if(l6D652CDF_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 03047741
				/// @DnDParent : 6D652CDF
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterTopdownRS"
				sprite_index = CharacterTopdownRS;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 715547F5
			/// @DnDParent : 6E7C1602
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l715547F5_0 = false;
			l715547F5_0 = instance_exists(RainbowSpaceTracker);
			if(!l715547F5_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 46E285AA
				/// @DnDParent : 715547F5
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterTopdownWT"
				sprite_index = CharacterTopdownWT;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 5AAA92C2
		/// @DnDParent : 43598C57
		/// @DnDArgument : "obj" "CharVarKeep2"
		var l5AAA92C2_0 = false;
		l5AAA92C2_0 = instance_exists(CharVarKeep2);
		if(l5AAA92C2_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 38C62FBE
			/// @DnDParent : 5AAA92C2
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l38C62FBE_0 = false;
			l38C62FBE_0 = instance_exists(RainbowSpaceTracker);
			if(l38C62FBE_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 77C568CB
				/// @DnDParent : 38C62FBE
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoStillRS"
				sprite_index = CharacterAvoStillRS;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 29D57FC4
			/// @DnDParent : 5AAA92C2
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l29D57FC4_0 = false;
			l29D57FC4_0 = instance_exists(RainbowSpaceTracker);
			if(!l29D57FC4_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 2BAE9569
				/// @DnDParent : 29D57FC4
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoStillWT"
				sprite_index = CharacterAvoStillWT;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 790C288D
		/// @DnDParent : 43598C57
		/// @DnDArgument : "obj" "CharVarKeep3"
		var l790C288D_0 = false;
		l790C288D_0 = instance_exists(CharVarKeep3);
		if(l790C288D_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 09ADB983
			/// @DnDParent : 790C288D
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l09ADB983_0 = false;
			l09ADB983_0 = instance_exists(RainbowSpaceTracker);
			if(l09ADB983_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 79BE3276
				/// @DnDParent : 09ADB983
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeTopdownRS"
				sprite_index = CharacterSpingeTopdownRS;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 79EDDB9E
			/// @DnDParent : 790C288D
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l79EDDB9E_0 = false;
			l79EDDB9E_0 = instance_exists(RainbowSpaceTracker);
			if(!l79EDDB9E_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 417DE812
				/// @DnDParent : 79EDDB9E
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeTopdownWT"
				sprite_index = CharacterSpingeTopdownWT;
				image_index += 0;
			}
		}
	}
}