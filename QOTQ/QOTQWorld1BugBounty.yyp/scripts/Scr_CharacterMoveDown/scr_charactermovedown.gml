/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4AFFD6AF
/// @DnDArgument : "funcName" "Scr_CharacterMoveDown"
function Scr_CharacterMoveDown() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6DE0D7E6
	/// @DnDParent : 4AFFD6AF
	/// @DnDArgument : "obj" "CharVarKeep1"
	var l6DE0D7E6_0 = false;
	l6DE0D7E6_0 = instance_exists(CharVarKeep1);
	if(l6DE0D7E6_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 52A88B26
		/// @DnDParent : 6DE0D7E6
		/// @DnDArgument : "speed" "3"
		speed = 3;
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 683687B6
		/// @DnDParent : 6DE0D7E6
		/// @DnDArgument : "obj" "BoostTracker"
		/// @DnDArgument : "not" "1"
		var l683687B6_0 = false;
		l683687B6_0 = instance_exists(BoostTracker);
		if(!l683687B6_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 659C3E55
			/// @DnDParent : 683687B6
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
					/// @DnDArgument : "spriteind" "CharacterWalkDownInv"
					sprite_index = CharacterWalkDownInv;
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
					/// @DnDArgument : "spriteind" "CharacterWalkDownInvRS"
					sprite_index = CharacterWalkDownInvRS;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 3B606CA5
			/// @DnDParent : 683687B6
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
					/// @DnDArgument : "spriteind" "CharacterWalkDown"
					sprite_index = CharacterWalkDown;
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
					/// @DnDArgument : "spriteind" "CharacterWalkDownRS"
					sprite_index = CharacterWalkDownRS;
					image_index += 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 74ADD2D4
		/// @DnDParent : 6DE0D7E6
		/// @DnDArgument : "obj" "BoostTracker"
		var l74ADD2D4_0 = false;
		l74ADD2D4_0 = instance_exists(BoostTracker);
		if(l74ADD2D4_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 64839594
			/// @DnDParent : 74ADD2D4
			/// @DnDArgument : "speed" "6"
			speed = 6;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 4D29EEB8
			/// @DnDParent : 74ADD2D4
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterWalkDownBoost"
			sprite_index = CharacterWalkDownBoost;
			image_index += 0;
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4E2F0182
	/// @DnDParent : 4AFFD6AF
	/// @DnDArgument : "obj" "CharVarKeep2"
	var l4E2F0182_0 = false;
	l4E2F0182_0 = instance_exists(CharVarKeep2);
	if(l4E2F0182_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 606005F0
		/// @DnDParent : 4E2F0182
		/// @DnDArgument : "obj" "BoostTracker"
		/// @DnDArgument : "not" "1"
		var l606005F0_0 = false;
		l606005F0_0 = instance_exists(BoostTracker);
		if(!l606005F0_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 24433AF7
			/// @DnDParent : 606005F0
			/// @DnDArgument : "speed" "3"
			speed = 3;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 1345CBCB
			/// @DnDParent : 606005F0
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
					/// @DnDArgument : "spriteind" "CharacterAvoWalkDownInv"
					sprite_index = CharacterAvoWalkDownInv;
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
					/// @DnDArgument : "spriteind" "CharacterAvoWalkDownRSInv"
					sprite_index = CharacterAvoWalkDownRSInv;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 7B9AB818
			/// @DnDParent : 606005F0
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
					/// @DnDArgument : "spriteind" "CharacterAvoWalkDown"
					sprite_index = CharacterAvoWalkDown;
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
					/// @DnDArgument : "spriteind" "CharacterAvoWalkDownRS"
					sprite_index = CharacterAvoWalkDownRS;
					image_index += 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6B133019
		/// @DnDParent : 4E2F0182
		/// @DnDArgument : "obj" "BoostTracker"
		var l6B133019_0 = false;
		l6B133019_0 = instance_exists(BoostTracker);
		if(l6B133019_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 36198978
			/// @DnDParent : 6B133019
			/// @DnDArgument : "speed" "6"
			speed = 6;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 198501EB
			/// @DnDParent : 6B133019
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l198501EB_0 = false;
			l198501EB_0 = instance_exists(InvSwapper);
			if(!l198501EB_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 594DD5DF
				/// @DnDParent : 198501EB
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l594DD5DF_0 = false;
				l594DD5DF_0 = instance_exists(RainbowSpaceTracker);
				if(!l594DD5DF_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 7D89D6E5
					/// @DnDParent : 594DD5DF
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoWalkDownBoost"
					sprite_index = CharacterAvoWalkDownBoost;
					image_index += 0;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0F9B430A
	/// @DnDParent : 4AFFD6AF
	/// @DnDArgument : "obj" "CharVarKeep3"
	var l0F9B430A_0 = false;
	l0F9B430A_0 = instance_exists(CharVarKeep3);
	if(l0F9B430A_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 291E6081
		/// @DnDParent : 0F9B430A
		/// @DnDArgument : "obj" "BoostTracker"
		/// @DnDArgument : "not" "1"
		var l291E6081_0 = false;
		l291E6081_0 = instance_exists(BoostTracker);
		if(!l291E6081_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 471B1C7C
			/// @DnDParent : 291E6081
			/// @DnDArgument : "speed" "3"
			speed = 3;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 453F2A39
			/// @DnDParent : 291E6081
			/// @DnDArgument : "obj" "InvSwapper"
			var l453F2A39_0 = false;
			l453F2A39_0 = instance_exists(InvSwapper);
			if(l453F2A39_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 3683218B
				/// @DnDParent : 453F2A39
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l3683218B_0 = false;
				l3683218B_0 = instance_exists(RainbowSpaceTracker);
				if(!l3683218B_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 0AE2A4BE
					/// @DnDParent : 3683218B
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkDownInv"
					sprite_index = CharacterSpingeWalkDownInv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 37380C53
				/// @DnDParent : 453F2A39
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l37380C53_0 = false;
				l37380C53_0 = instance_exists(RainbowSpaceTracker);
				if(l37380C53_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 7A0D25FB
					/// @DnDParent : 37380C53
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoWalkDownRSInv"
					sprite_index = CharacterAvoWalkDownRSInv;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 0E69394C
			/// @DnDParent : 291E6081
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l0E69394C_0 = false;
			l0E69394C_0 = instance_exists(InvSwapper);
			if(!l0E69394C_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 2E7B7D83
				/// @DnDParent : 0E69394C
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l2E7B7D83_0 = false;
				l2E7B7D83_0 = instance_exists(RainbowSpaceTracker);
				if(!l2E7B7D83_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 627FBBD7
					/// @DnDParent : 2E7B7D83
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkDown"
					sprite_index = CharacterSpingeWalkDown;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 2CC163C0
				/// @DnDParent : 0E69394C
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l2CC163C0_0 = false;
				l2CC163C0_0 = instance_exists(RainbowSpaceTracker);
				if(l2CC163C0_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 0F820BF6
					/// @DnDParent : 2CC163C0
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkDownRS"
					sprite_index = CharacterSpingeWalkDownRS;
					image_index += 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7F88881D
		/// @DnDParent : 0F9B430A
		/// @DnDArgument : "obj" "BoostTracker"
		var l7F88881D_0 = false;
		l7F88881D_0 = instance_exists(BoostTracker);
		if(l7F88881D_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 12C716C4
			/// @DnDParent : 7F88881D
			/// @DnDArgument : "speed" "6"
			speed = 6;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 64DC80C5
			/// @DnDParent : 7F88881D
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l64DC80C5_0 = false;
			l64DC80C5_0 = instance_exists(InvSwapper);
			if(!l64DC80C5_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 32191D9F
				/// @DnDParent : 64DC80C5
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l32191D9F_0 = false;
				l32191D9F_0 = instance_exists(RainbowSpaceTracker);
				if(!l32191D9F_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 6246B51F
					/// @DnDParent : 32191D9F
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkDownBoost"
					sprite_index = CharacterSpingeWalkDownBoost;
					image_index += 0;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7980CE89
	/// @DnDParent : 4AFFD6AF
	/// @DnDArgument : "direction" "270"
	direction = 270;
}