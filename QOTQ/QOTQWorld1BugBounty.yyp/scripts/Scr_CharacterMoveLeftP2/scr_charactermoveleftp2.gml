/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 172058FD
/// @DnDArgument : "funcName" "Scr_CharacterMoveLeftP2"
function Scr_CharacterMoveLeftP2() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6DE0D7E6
	/// @DnDParent : 172058FD
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
				/// @DnDArgument : "spriteind" "CharacterWalkLeftInv"
				sprite_index = CharacterWalkLeftInv;
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
				/// @DnDArgument : "spriteind" "CharacterWalkLeftInvRS"
				sprite_index = CharacterWalkLeftInvRS;
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
				/// @DnDArgument : "spriteind" "CharacterWalkLeft"
				sprite_index = CharacterWalkLeft;
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
				/// @DnDArgument : "spriteind" "CharacterWalkLeftRS"
				sprite_index = CharacterWalkLeftRS;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4E2F0182
	/// @DnDParent : 172058FD
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
				/// @DnDArgument : "spriteind" "CharacterAvoWalkLeftInv"
				sprite_index = CharacterAvoWalkLeftInv;
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
				/// @DnDArgument : "spriteind" "CharacterAvoWalkLeftRSInv"
				sprite_index = CharacterAvoWalkLeftRSInv;
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
				/// @DnDArgument : "spriteind" "CharacterAvoWalkLeft"
				sprite_index = CharacterAvoWalkLeft;
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
				/// @DnDArgument : "spriteind" "CharacterAvoWalkLeftRS"
				sprite_index = CharacterAvoWalkLeftRS;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 7A7939FD
	/// @DnDParent : 172058FD
	/// @DnDArgument : "obj" "CharVarKeep3P2"
	var l7A7939FD_0 = false;
	l7A7939FD_0 = instance_exists(CharVarKeep3P2);
	if(l7A7939FD_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 03988303
		/// @DnDParent : 7A7939FD
		/// @DnDArgument : "obj" "InvSwapperP2"
		var l03988303_0 = false;
		l03988303_0 = instance_exists(InvSwapperP2);
		if(l03988303_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 554E9B4C
			/// @DnDParent : 03988303
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l554E9B4C_0 = false;
			l554E9B4C_0 = instance_exists(RainbowSpaceTracker);
			if(!l554E9B4C_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 2F87C745
				/// @DnDParent : 554E9B4C
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoWalkLeftInv"
				sprite_index = CharacterAvoWalkLeftInv;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 056685B7
			/// @DnDParent : 03988303
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l056685B7_0 = false;
			l056685B7_0 = instance_exists(RainbowSpaceTracker);
			if(l056685B7_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 0599A6EA
				/// @DnDParent : 056685B7
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoWalkLeftRSInv"
				sprite_index = CharacterAvoWalkLeftRSInv;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 004F56BC
		/// @DnDParent : 7A7939FD
		/// @DnDArgument : "obj" "InvSwapperP2"
		/// @DnDArgument : "not" "1"
		var l004F56BC_0 = false;
		l004F56BC_0 = instance_exists(InvSwapperP2);
		if(!l004F56BC_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 3E90E2B5
			/// @DnDParent : 004F56BC
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l3E90E2B5_0 = false;
			l3E90E2B5_0 = instance_exists(RainbowSpaceTracker);
			if(!l3E90E2B5_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 403065F2
				/// @DnDParent : 3E90E2B5
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeWalkLeft"
				sprite_index = CharacterSpingeWalkLeft;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 6E595136
			/// @DnDParent : 004F56BC
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l6E595136_0 = false;
			l6E595136_0 = instance_exists(RainbowSpaceTracker);
			if(l6E595136_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 6AEED1C5
				/// @DnDParent : 6E595136
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeWalkLeftRS"
				sprite_index = CharacterSpingeWalkLeftRS;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 2F45D680
	/// @DnDParent : 172058FD
	/// @DnDArgument : "obj" "SpingeAttackP2"
	/// @DnDArgument : "not" "1"
	var l2F45D680_0 = false;
	l2F45D680_0 = instance_exists(SpingeAttackP2);
	if(!l2F45D680_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 52A88B26
		/// @DnDParent : 2F45D680
		/// @DnDArgument : "speed" "3"
		speed = 3;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7980CE89
	/// @DnDParent : 172058FD
	/// @DnDArgument : "direction" "180"
	direction = 180;
}