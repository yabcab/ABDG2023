/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0DCBC557
/// @DnDArgument : "funcName" "Scr_CharacterMoveUp"
function Scr_CharacterMoveUp() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6DE0D7E6
	/// @DnDParent : 0DCBC557
	/// @DnDArgument : "obj" "CharVarKeep1"
	var l6DE0D7E6_0 = false;
	l6DE0D7E6_0 = instance_exists(CharVarKeep1);
	if(l6DE0D7E6_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 04C7B117
		/// @DnDParent : 6DE0D7E6
		/// @DnDArgument : "obj" "BoostTracker"
		/// @DnDArgument : "not" "1"
		var l04C7B117_0 = false;
		l04C7B117_0 = instance_exists(BoostTracker);
		if(!l04C7B117_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 558BB2FA
			/// @DnDParent : 04C7B117
			/// @DnDArgument : "speed" "3"
			speed = 3;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 659C3E55
			/// @DnDParent : 04C7B117
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
			/// @DnDParent : 04C7B117
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
		/// @DnDHash : 660BB6AC
		/// @DnDParent : 6DE0D7E6
		/// @DnDArgument : "obj" "BoostTracker"
		var l660BB6AC_0 = false;
		l660BB6AC_0 = instance_exists(BoostTracker);
		if(l660BB6AC_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 533BF6B4
			/// @DnDParent : 660BB6AC
			/// @DnDArgument : "speed" "5"
			speed = 5;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 1E2B543C
			/// @DnDParent : 660BB6AC
			/// @DnDArgument : "obj" "InvSwapper"
			var l1E2B543C_0 = false;
			l1E2B543C_0 = instance_exists(InvSwapper);
			if(l1E2B543C_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 1A33935C
				/// @DnDParent : 1E2B543C
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l1A33935C_0 = false;
				l1A33935C_0 = instance_exists(RainbowSpaceTracker);
				if(!l1A33935C_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 769089ED
					/// @DnDParent : 1A33935C
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterWalkUpInv"
					sprite_index = CharacterWalkUpInv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 6CE7822D
				/// @DnDParent : 1E2B543C
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l6CE7822D_0 = false;
				l6CE7822D_0 = instance_exists(RainbowSpaceTracker);
				if(l6CE7822D_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 0E90128F
					/// @DnDParent : 6CE7822D
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterWalkUpInvRS"
					sprite_index = CharacterWalkUpInvRS;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 1641B21F
			/// @DnDParent : 660BB6AC
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l1641B21F_0 = false;
			l1641B21F_0 = instance_exists(InvSwapper);
			if(!l1641B21F_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 19CC3E8E
				/// @DnDParent : 1641B21F
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l19CC3E8E_0 = false;
				l19CC3E8E_0 = instance_exists(RainbowSpaceTracker);
				if(!l19CC3E8E_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 4A92C138
					/// @DnDParent : 19CC3E8E
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterWalkUp"
					sprite_index = CharacterWalkUp;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 7B86E7FA
				/// @DnDParent : 1641B21F
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l7B86E7FA_0 = false;
				l7B86E7FA_0 = instance_exists(RainbowSpaceTracker);
				if(l7B86E7FA_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 0B08C9F2
					/// @DnDParent : 7B86E7FA
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterWalkUpRS"
					sprite_index = CharacterWalkUpRS;
					image_index += 0;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4E2F0182
	/// @DnDParent : 0DCBC557
	/// @DnDArgument : "obj" "CharVarKeep2"
	var l4E2F0182_0 = false;
	l4E2F0182_0 = instance_exists(CharVarKeep2);
	if(l4E2F0182_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1A5DE73C
		/// @DnDParent : 4E2F0182
		/// @DnDArgument : "obj" "BoostTracker"
		/// @DnDArgument : "not" "1"
		var l1A5DE73C_0 = false;
		l1A5DE73C_0 = instance_exists(BoostTracker);
		if(!l1A5DE73C_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 18216868
			/// @DnDParent : 1A5DE73C
			/// @DnDArgument : "speed" "3"
			speed = 3;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 1345CBCB
			/// @DnDParent : 1A5DE73C
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
			/// @DnDParent : 1A5DE73C
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
		/// @DnDHash : 43A97D9F
		/// @DnDParent : 4E2F0182
		/// @DnDArgument : "obj" "BoostTracker"
		var l43A97D9F_0 = false;
		l43A97D9F_0 = instance_exists(BoostTracker);
		if(l43A97D9F_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 0DFA0A1B
			/// @DnDParent : 43A97D9F
			/// @DnDArgument : "speed" "5"
			speed = 5;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 7AF8D1BB
			/// @DnDParent : 43A97D9F
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l7AF8D1BB_0 = false;
			l7AF8D1BB_0 = instance_exists(InvSwapper);
			if(!l7AF8D1BB_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 7422BC8A
				/// @DnDParent : 7AF8D1BB
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l7422BC8A_0 = false;
				l7422BC8A_0 = instance_exists(RainbowSpaceTracker);
				if(!l7422BC8A_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 23C0DFF0
					/// @DnDParent : 7422BC8A
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoWalkUpBoost"
					sprite_index = CharacterAvoWalkUpBoost;
					image_index += 0;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 77010E9C
	/// @DnDParent : 0DCBC557
	/// @DnDArgument : "obj" "CharVarKeep3"
	var l77010E9C_0 = false;
	l77010E9C_0 = instance_exists(CharVarKeep3);
	if(l77010E9C_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6BAA920B
		/// @DnDParent : 77010E9C
		/// @DnDArgument : "obj" "BoostTracker"
		/// @DnDArgument : "not" "1"
		var l6BAA920B_0 = false;
		l6BAA920B_0 = instance_exists(BoostTracker);
		if(!l6BAA920B_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 4558B6F7
			/// @DnDParent : 6BAA920B
			/// @DnDArgument : "speed" "3"
			speed = 3;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 7709948A
			/// @DnDParent : 6BAA920B
			/// @DnDArgument : "obj" "InvSwapper"
			var l7709948A_0 = false;
			l7709948A_0 = instance_exists(InvSwapper);
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
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkUpInv"
					sprite_index = CharacterSpingeWalkUpInv;
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
			/// @DnDParent : 6BAA920B
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l56E03DE1_0 = false;
			l56E03DE1_0 = instance_exists(InvSwapper);
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
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 73CA1F5E
		/// @DnDParent : 77010E9C
		/// @DnDArgument : "obj" "BoostTracker"
		var l73CA1F5E_0 = false;
		l73CA1F5E_0 = instance_exists(BoostTracker);
		if(l73CA1F5E_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 035852E1
			/// @DnDParent : 73CA1F5E
			/// @DnDArgument : "speed" "5"
			speed = 5;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 60A855E9
			/// @DnDParent : 73CA1F5E
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l60A855E9_0 = false;
			l60A855E9_0 = instance_exists(InvSwapper);
			if(!l60A855E9_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 0F320534
				/// @DnDParent : 60A855E9
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l0F320534_0 = false;
				l0F320534_0 = instance_exists(RainbowSpaceTracker);
				if(!l0F320534_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 23CB4E4D
					/// @DnDParent : 0F320534
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkUpBoost"
					sprite_index = CharacterSpingeWalkUpBoost;
					image_index += 0;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7980CE89
	/// @DnDParent : 0DCBC557
	/// @DnDArgument : "direction" "90"
	direction = 90;
}