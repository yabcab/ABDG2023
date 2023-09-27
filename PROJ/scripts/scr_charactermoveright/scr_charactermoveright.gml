/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 468FE08A
/// @DnDArgument : "funcName" "Scr_CharacterMoveRight"
function Scr_CharacterMoveRight() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6DE0D7E6
	/// @DnDParent : 468FE08A
	/// @DnDArgument : "obj" "CharVarKeep1"
	var l6DE0D7E6_0 = false;
	l6DE0D7E6_0 = instance_exists(CharVarKeep1);
	if(l6DE0D7E6_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 330E6CB3
		/// @DnDParent : 6DE0D7E6
		/// @DnDArgument : "obj" "BoostTracker"
		/// @DnDArgument : "not" "1"
		var l330E6CB3_0 = false;
		l330E6CB3_0 = instance_exists(BoostTracker);
		if(!l330E6CB3_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 11068639
			/// @DnDParent : 330E6CB3
			/// @DnDArgument : "speed" "3"
			speed = 3;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 659C3E55
			/// @DnDParent : 330E6CB3
			/// @DnDArgument : "obj" "InvSwapper"
			var l659C3E55_0 = false;
			l659C3E55_0 = instance_exists(InvSwapper);
			if(l659C3E55_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 1843E621
				/// @DnDParent : 659C3E55
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l1843E621_0 = false;
				l1843E621_0 = instance_exists(RainbowSpaceTracker);
				if(!l1843E621_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 6953ED87
					/// @DnDParent : 1843E621
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterWalkRightInv"
					sprite_index = CharacterWalkRightInv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 68010860
				/// @DnDParent : 659C3E55
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l68010860_0 = false;
				l68010860_0 = instance_exists(RainbowSpaceTracker);
				if(l68010860_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 62B0394E
					/// @DnDParent : 68010860
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterWalkRightInvRS"
					sprite_index = CharacterWalkRightInvRS;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 3B606CA5
			/// @DnDParent : 330E6CB3
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l3B606CA5_0 = false;
			l3B606CA5_0 = instance_exists(InvSwapper);
			if(!l3B606CA5_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 0E8CBF4D
				/// @DnDParent : 3B606CA5
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
					/// @DnDArgument : "spriteind" "CharacterWalkRight"
					sprite_index = CharacterWalkRight;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 26B0DFBA
				/// @DnDParent : 3B606CA5
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
					/// @DnDArgument : "spriteind" "CharacterWalkRightRS"
					sprite_index = CharacterWalkRightRS;
					image_index += 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 0ACB96EB
		/// @DnDParent : 6DE0D7E6
		/// @DnDArgument : "obj" "BoostTracker"
		var l0ACB96EB_0 = false;
		l0ACB96EB_0 = instance_exists(BoostTracker);
		if(l0ACB96EB_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 6F63575D
			/// @DnDParent : 0ACB96EB
			/// @DnDArgument : "speed" "5"
			speed = 5;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 569F18C6
			/// @DnDParent : 0ACB96EB
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterWalkRightBoost"
			sprite_index = CharacterWalkRightBoost;
			image_index += 0;
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4E2F0182
	/// @DnDParent : 468FE08A
	/// @DnDArgument : "obj" "CharVarKeep2"
	var l4E2F0182_0 = false;
	l4E2F0182_0 = instance_exists(CharVarKeep2);
	if(l4E2F0182_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 00A76038
		/// @DnDParent : 4E2F0182
		/// @DnDArgument : "obj" "BoostTracker"
		/// @DnDArgument : "not" "1"
		var l00A76038_0 = false;
		l00A76038_0 = instance_exists(BoostTracker);
		if(!l00A76038_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 495675E6
			/// @DnDParent : 00A76038
			/// @DnDArgument : "speed" "3"
			speed = 3;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 1345CBCB
			/// @DnDParent : 00A76038
			/// @DnDArgument : "obj" "InvSwapper"
			var l1345CBCB_0 = false;
			l1345CBCB_0 = instance_exists(InvSwapper);
			if(l1345CBCB_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 718ADF7F
				/// @DnDParent : 1345CBCB
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l718ADF7F_0 = false;
				l718ADF7F_0 = instance_exists(RainbowSpaceTracker);
				if(!l718ADF7F_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 0CBC6994
					/// @DnDParent : 718ADF7F
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoWalkRightInv"
					sprite_index = CharacterAvoWalkRightInv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 3114FC19
				/// @DnDParent : 1345CBCB
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l3114FC19_0 = false;
				l3114FC19_0 = instance_exists(RainbowSpaceTracker);
				if(l3114FC19_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 2E8A5EF9
					/// @DnDParent : 3114FC19
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoWalkRightRSInv"
					sprite_index = CharacterAvoWalkRightRSInv;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 7B9AB818
			/// @DnDParent : 00A76038
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l7B9AB818_0 = false;
			l7B9AB818_0 = instance_exists(InvSwapper);
			if(!l7B9AB818_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 431A57F9
				/// @DnDParent : 7B9AB818
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
					/// @DnDArgument : "spriteind" "CharacterAvoWalkRight"
					sprite_index = CharacterAvoWalkRight;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 453C0746
				/// @DnDParent : 7B9AB818
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
					/// @DnDArgument : "spriteind" "CharacterAvoWalkRightRS"
					sprite_index = CharacterAvoWalkRightRS;
					image_index += 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 5ED274AD
		/// @DnDParent : 4E2F0182
		/// @DnDArgument : "obj" "BoostTracker"
		var l5ED274AD_0 = false;
		l5ED274AD_0 = instance_exists(BoostTracker);
		if(l5ED274AD_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 7B1B7DF2
			/// @DnDParent : 5ED274AD
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l7B1B7DF2_0 = false;
			l7B1B7DF2_0 = instance_exists(InvSwapper);
			if(!l7B1B7DF2_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 14302A01
				/// @DnDParent : 7B1B7DF2
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l14302A01_0 = false;
				l14302A01_0 = instance_exists(RainbowSpaceTracker);
				if(!l14302A01_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 2BD78910
					/// @DnDParent : 14302A01
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoWalkRightBoost"
					sprite_index = CharacterAvoWalkRightBoost;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 240237A6
			/// @DnDParent : 5ED274AD
			/// @DnDArgument : "speed" "5"
			speed = 5;
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 303291B5
	/// @DnDParent : 468FE08A
	/// @DnDArgument : "obj" "CharVarKeep3"
	var l303291B5_0 = false;
	l303291B5_0 = instance_exists(CharVarKeep3);
	if(l303291B5_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 29929254
		/// @DnDParent : 303291B5
		/// @DnDArgument : "obj" "BoostTracker"
		/// @DnDArgument : "not" "1"
		var l29929254_0 = false;
		l29929254_0 = instance_exists(BoostTracker);
		if(!l29929254_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 75EB3532
			/// @DnDParent : 29929254
			/// @DnDArgument : "obj" "InvSwapper"
			var l75EB3532_0 = false;
			l75EB3532_0 = instance_exists(InvSwapper);
			if(l75EB3532_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 15B4E220
				/// @DnDParent : 75EB3532
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l15B4E220_0 = false;
				l15B4E220_0 = instance_exists(RainbowSpaceTracker);
				if(!l15B4E220_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 5E1C4A71
					/// @DnDParent : 15B4E220
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkRightInv"
					sprite_index = CharacterSpingeWalkRightInv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 2AC42FBB
				/// @DnDParent : 75EB3532
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l2AC42FBB_0 = false;
				l2AC42FBB_0 = instance_exists(RainbowSpaceTracker);
				if(l2AC42FBB_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 728E200A
					/// @DnDParent : 2AC42FBB
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoWalkRightRSInv"
					sprite_index = CharacterAvoWalkRightRSInv;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 2350579C
			/// @DnDParent : 29929254
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l2350579C_0 = false;
			l2350579C_0 = instance_exists(InvSwapper);
			if(!l2350579C_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 09E03EB9
				/// @DnDParent : 2350579C
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l09E03EB9_0 = false;
				l09E03EB9_0 = instance_exists(RainbowSpaceTracker);
				if(!l09E03EB9_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 1D89AC2C
					/// @DnDParent : 09E03EB9
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkRight"
					sprite_index = CharacterSpingeWalkRight;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 4250CED4
				/// @DnDParent : 2350579C
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l4250CED4_0 = false;
				l4250CED4_0 = instance_exists(RainbowSpaceTracker);
				if(l4250CED4_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 35195BA4
					/// @DnDParent : 4250CED4
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkRightRS"
					sprite_index = CharacterSpingeWalkRightRS;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 6D03C406
			/// @DnDParent : 29929254
			/// @DnDArgument : "obj" "SpingeAttack"
			/// @DnDArgument : "not" "1"
			var l6D03C406_0 = false;
			l6D03C406_0 = instance_exists(SpingeAttack);
			if(!l6D03C406_0)
			{
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 52A88B26
				/// @DnDParent : 6D03C406
				/// @DnDArgument : "speed" "3"
				speed = 3;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 2EAEACA8
		/// @DnDParent : 303291B5
		/// @DnDArgument : "obj" "BoostTracker"
		var l2EAEACA8_0 = false;
		l2EAEACA8_0 = instance_exists(BoostTracker);
		if(l2EAEACA8_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 0C47F952
			/// @DnDParent : 2EAEACA8
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l0C47F952_0 = false;
			l0C47F952_0 = instance_exists(InvSwapper);
			if(!l0C47F952_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 3400BD7F
				/// @DnDParent : 0C47F952
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l3400BD7F_0 = false;
				l3400BD7F_0 = instance_exists(RainbowSpaceTracker);
				if(!l3400BD7F_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 48C5E690
					/// @DnDParent : 3400BD7F
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkRightBoost"
					sprite_index = CharacterSpingeWalkRightBoost;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 123B8A50
			/// @DnDParent : 2EAEACA8
			/// @DnDArgument : "speed" "5"
			speed = 5;
		}
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7980CE89
	/// @DnDParent : 468FE08A
	/// @DnDArgument : "direction" "0"
	direction = 0;
}