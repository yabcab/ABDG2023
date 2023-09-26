/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3BD118F7
/// @DnDArgument : "funcName" "Scr_CharacterStopP2"
function Scr_CharacterStopP2() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6DE0D7E6
	/// @DnDParent : 3BD118F7
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
				/// @DnDArgument : "spriteind" "CharacterTopdownInv"
				sprite_index = CharacterTopdownInv;
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
				/// @DnDArgument : "spriteind" "CharacterTopdownInvRS"
				sprite_index = CharacterTopdownInvRS;
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
				/// @DnDArgument : "spriteind" "CharacterTopdown"
				sprite_index = CharacterTopdown;
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
				/// @DnDArgument : "spriteind" "CharacterTopdownRS"
				sprite_index = CharacterTopdownRS;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4E2F0182
	/// @DnDParent : 3BD118F7
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
				/// @DnDArgument : "spriteind" "CharacterAvoStillInv"
				sprite_index = CharacterAvoStillInv;
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
				/// @DnDArgument : "spriteind" "CharacterAvoStillRSInv"
				sprite_index = CharacterAvoStillRSInv;
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
				/// @DnDArgument : "spriteind" "CharacterAvoStill"
				sprite_index = CharacterAvoStill;
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
				/// @DnDArgument : "spriteind" "CharacterAvoStillRS"
				sprite_index = CharacterAvoStillRS;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 535D1D6D
	/// @DnDParent : 3BD118F7
	/// @DnDArgument : "obj" "CharVarKeep3P2"
	var l535D1D6D_0 = false;
	l535D1D6D_0 = instance_exists(CharVarKeep3P2);
	if(l535D1D6D_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 0898EC1E
		/// @DnDParent : 535D1D6D
		/// @DnDArgument : "obj" "InvSwapperP2"
		var l0898EC1E_0 = false;
		l0898EC1E_0 = instance_exists(InvSwapperP2);
		if(l0898EC1E_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 1FF82278
			/// @DnDParent : 0898EC1E
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l1FF82278_0 = false;
			l1FF82278_0 = instance_exists(RainbowSpaceTracker);
			if(!l1FF82278_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 648FBC14
				/// @DnDParent : 1FF82278
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoStillInv"
				sprite_index = CharacterAvoStillInv;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 7088BF65
			/// @DnDParent : 0898EC1E
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l7088BF65_0 = false;
			l7088BF65_0 = instance_exists(RainbowSpaceTracker);
			if(l7088BF65_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 28969BB9
				/// @DnDParent : 7088BF65
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoStillRSInv"
				sprite_index = CharacterAvoStillRSInv;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 57F73B28
		/// @DnDParent : 535D1D6D
		/// @DnDArgument : "obj" "InvSwapperP2"
		/// @DnDArgument : "not" "1"
		var l57F73B28_0 = false;
		l57F73B28_0 = instance_exists(InvSwapperP2);
		if(!l57F73B28_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 31D3CD14
			/// @DnDParent : 57F73B28
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			/// @DnDArgument : "not" "1"
			var l31D3CD14_0 = false;
			l31D3CD14_0 = instance_exists(RainbowSpaceTracker);
			if(!l31D3CD14_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 5AC43B2B
				/// @DnDParent : 31D3CD14
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeTopdown"
				sprite_index = CharacterSpingeTopdown;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 4B63175E
			/// @DnDParent : 57F73B28
			/// @DnDArgument : "obj" "RainbowSpaceTracker"
			var l4B63175E_0 = false;
			l4B63175E_0 = instance_exists(RainbowSpaceTracker);
			if(l4B63175E_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 21D4F2A0
				/// @DnDParent : 4B63175E
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeTopdownRS"
				sprite_index = CharacterSpingeTopdownRS;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 52A88B26
	/// @DnDParent : 3BD118F7
	speed = 0;
}