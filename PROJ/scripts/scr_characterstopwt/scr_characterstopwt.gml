/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 69AA015F
/// @DnDArgument : "funcName" "Scr_CharacterStopWT"
function Scr_CharacterStopWT() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6DE0D7E6
	/// @DnDParent : 69AA015F
	/// @DnDArgument : "obj" "CharVarKeep1"
	var l6DE0D7E6_0 = false;
	l6DE0D7E6_0 = instance_exists(CharVarKeep1);
	if(l6DE0D7E6_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 659C3E55
		/// @DnDParent : 6DE0D7E6
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
				/// @DnDArgument : "spriteind" "CharacterTopdownWTInv"
				sprite_index = CharacterTopdownWTInv;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 3B606CA5
		/// @DnDParent : 6DE0D7E6
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
				/// @DnDArgument : "spriteind" "CharacterTopdownWT"
				sprite_index = CharacterTopdownWT;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4E2F0182
	/// @DnDParent : 69AA015F
	/// @DnDArgument : "obj" "CharVarKeep2"
	var l4E2F0182_0 = false;
	l4E2F0182_0 = instance_exists(CharVarKeep2);
	if(l4E2F0182_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1345CBCB
		/// @DnDParent : 4E2F0182
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
				/// @DnDArgument : "spriteind" "CharacterAvoStillWTInv"
				sprite_index = CharacterAvoStillWTInv;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7B9AB818
		/// @DnDParent : 4E2F0182
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
				/// @DnDArgument : "spriteind" "CharacterAvoStillWT"
				sprite_index = CharacterAvoStillWT;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 535D1D6D
	/// @DnDParent : 69AA015F
	/// @DnDArgument : "obj" "CharVarKeep3"
	var l535D1D6D_0 = false;
	l535D1D6D_0 = instance_exists(CharVarKeep3);
	if(l535D1D6D_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 0898EC1E
		/// @DnDParent : 535D1D6D
		/// @DnDArgument : "obj" "InvSwapper"
		var l0898EC1E_0 = false;
		l0898EC1E_0 = instance_exists(InvSwapper);
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
				/// @DnDArgument : "spriteind" "CharacterSpingeTopdownWTInv"
				sprite_index = CharacterSpingeTopdownWTInv;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 57F73B28
		/// @DnDParent : 535D1D6D
		/// @DnDArgument : "obj" "InvSwapper"
		/// @DnDArgument : "not" "1"
		var l57F73B28_0 = false;
		l57F73B28_0 = instance_exists(InvSwapper);
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
				/// @DnDArgument : "spriteind" "CharacterSpingeTopdownWT"
				sprite_index = CharacterSpingeTopdownWT;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 52A88B26
	/// @DnDParent : 69AA015F
	speed = 0;
}