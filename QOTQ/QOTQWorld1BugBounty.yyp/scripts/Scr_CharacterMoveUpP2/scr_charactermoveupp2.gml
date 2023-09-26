/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1C944A07
/// @DnDArgument : "funcName" "Scr_CharacterMoveUpP2"
function Scr_CharacterMoveUpP2() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6DE0D7E6
	/// @DnDParent : 1C944A07
	/// @DnDArgument : "obj" "CharVarKeep1P2"
	var l6DE0D7E6_0 = false;
	l6DE0D7E6_0 = instance_exists(CharVarKeep1P2);
	if(l6DE0D7E6_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 659C3E55
		/// @DnDParent : 6DE0D7E6
		/// @DnDArgument : "obj" "InvSwapperP2"
		var l659C3E55_0 = false;
		l659C3E55_0 = instance_exists(InvSwapperP2);
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
				/// @DnDArgument : "spriteind" "CharacterWalkUpInv"
				sprite_index = CharacterWalkUpInv;
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
				/// @DnDArgument : "spriteind" "CharacterWalkUpInvRS"
				sprite_index = CharacterWalkUpInvRS;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 3B606CA5
		/// @DnDParent : 6DE0D7E6
		/// @DnDArgument : "obj" "InvSwapperP2"
		/// @DnDArgument : "not" "1"
		var l3B606CA5_0 = false;
		l3B606CA5_0 = instance_exists(InvSwapperP2);
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
				/// @DnDArgument : "spriteind" "CharacterWalkUp"
				sprite_index = CharacterWalkUp;
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
				/// @DnDArgument : "spriteind" "CharacterWalkUpRS"
				sprite_index = CharacterWalkUpRS;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4E2F0182
	/// @DnDParent : 1C944A07
	/// @DnDArgument : "obj" "CharVarKeep2P2"
	var l4E2F0182_0 = false;
	l4E2F0182_0 = instance_exists(CharVarKeep2P2);
	if(l4E2F0182_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1345CBCB
		/// @DnDParent : 4E2F0182
		/// @DnDArgument : "obj" "InvSwapperP2"
		var l1345CBCB_0 = false;
		l1345CBCB_0 = instance_exists(InvSwapperP2);
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
				/// @DnDArgument : "spriteind" "CharacterAvoWalkUpInv"
				sprite_index = CharacterAvoWalkUpInv;
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
				/// @DnDArgument : "spriteind" "CharacterAvoWalkUpRSInv"
				sprite_index = CharacterAvoWalkUpRSInv;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7B9AB818
		/// @DnDParent : 4E2F0182
		/// @DnDArgument : "obj" "InvSwapperP2"
		/// @DnDArgument : "not" "1"
		var l7B9AB818_0 = false;
		l7B9AB818_0 = instance_exists(InvSwapperP2);
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
				/// @DnDArgument : "spriteind" "CharacterAvoWalkUp"
				sprite_index = CharacterAvoWalkUp;
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
				/// @DnDArgument : "spriteind" "CharacterAvoWalkUpRS"
				sprite_index = CharacterAvoWalkUpRS;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 77010E9C
	/// @DnDParent : 1C944A07
	/// @DnDArgument : "obj" "CharVarKeep3P2 "
	var l77010E9C_0 = false;
	l77010E9C_0 = instance_exists(CharVarKeep3P2 );
	if(l77010E9C_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7709948A
		/// @DnDParent : 77010E9C
		/// @DnDArgument : "obj" "InvSwapperP2"
		var l7709948A_0 = false;
		l7709948A_0 = instance_exists(InvSwapperP2);
		if(l7709948A_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 23B9F416
			/// @DnDParent : 7709948A
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l23B9F416_0 = false;
			l23B9F416_0 = instance_exists(RainbowSpaceTracker);
			if(!l23B9F416_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 75C73DDB
				/// @DnDParent : 23B9F416
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoWalkUpInv"
				sprite_index = CharacterAvoWalkUpInv;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 25BC79DA
			/// @DnDParent : 7709948A
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l25BC79DA_0 = false;
			l25BC79DA_0 = instance_exists(RainbowSpaceTracker);
			if(l25BC79DA_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 557A195E
				/// @DnDParent : 25BC79DA
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoWalkUpRSInv"
				sprite_index = CharacterAvoWalkUpRSInv;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 56E03DE1
		/// @DnDParent : 77010E9C
		/// @DnDArgument : "obj" "InvSwapperP2"
		/// @DnDArgument : "not" "1"
		var l56E03DE1_0 = false;
		l56E03DE1_0 = instance_exists(InvSwapperP2);
		if(!l56E03DE1_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 76DAEF1F
			/// @DnDParent : 56E03DE1
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l76DAEF1F_0 = false;
			l76DAEF1F_0 = instance_exists(RainbowSpaceTracker);
			if(!l76DAEF1F_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 6231051F
				/// @DnDParent : 76DAEF1F
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeWalkUp"
				sprite_index = CharacterSpingeWalkUp;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 7AAF193E
			/// @DnDParent : 56E03DE1
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l7AAF193E_0 = false;
			l7AAF193E_0 = instance_exists(RainbowSpaceTracker);
			if(l7AAF193E_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 40F7E15E
				/// @DnDParent : 7AAF193E
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeWalkUpRS"
				sprite_index = CharacterSpingeWalkUpRS;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7980CE89
	/// @DnDParent : 1C944A07
	/// @DnDArgument : "direction" "90"
	direction = 90;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 52A88B26
	/// @DnDParent : 1C944A07
	/// @DnDArgument : "speed" "3"
	speed = 3;
}