/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6A57BB6C
/// @DnDArgument : "funcName" "Scr_CharacterMoveUpWT"
function Scr_CharacterMoveUpWT() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 59151C9E
	/// @DnDParent : 6A57BB6C
	/// @DnDArgument : "obj" "BoostTracker"
	var l59151C9E_0 = false;
	l59151C9E_0 = instance_exists(BoostTracker);
	if(l59151C9E_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7ABE60DB
		/// @DnDParent : 59151C9E
		/// @DnDArgument : "obj" "CharVarKeep1"
		var l7ABE60DB_0 = false;
		l7ABE60DB_0 = instance_exists(CharVarKeep1);
		if(l7ABE60DB_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 187DBB9C
			/// @DnDParent : 7ABE60DB
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterWalkUpBoostWT"
			sprite_index = CharacterWalkUpBoostWT;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 758087B4
		/// @DnDParent : 59151C9E
		/// @DnDArgument : "obj" "CharVarKeep2"
		var l758087B4_0 = false;
		l758087B4_0 = instance_exists(CharVarKeep2);
		if(l758087B4_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 5913E00E
			/// @DnDParent : 758087B4
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterAvoWalkUpBoostWT"
			sprite_index = CharacterAvoWalkUpBoostWT;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1CD4A90C
		/// @DnDParent : 59151C9E
		/// @DnDArgument : "obj" "CharVarKeep3"
		var l1CD4A90C_0 = false;
		l1CD4A90C_0 = instance_exists(CharVarKeep3);
		if(l1CD4A90C_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 77F108A1
			/// @DnDParent : 1CD4A90C
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterSpingeWalkUpBoostWT"
			sprite_index = CharacterSpingeWalkUpBoostWT;
			image_index += 0;
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 21E5B5EF
	/// @DnDParent : 6A57BB6C
	/// @DnDArgument : "obj" "BoostTracker"
	/// @DnDArgument : "not" "1"
	var l21E5B5EF_0 = false;
	l21E5B5EF_0 = instance_exists(BoostTracker);
	if(!l21E5B5EF_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6DE0D7E6
		/// @DnDParent : 21E5B5EF
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
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 433DEFB8
				/// @DnDParent : 659C3E55
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterWalkUpWTInv"
				sprite_index = CharacterWalkUpWTInv;
				image_index += 0;
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
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 5778F11B
				/// @DnDParent : 3B606CA5
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterWalkUpWT"
				sprite_index = CharacterWalkUpWT;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 4E2F0182
		/// @DnDParent : 21E5B5EF
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
					/// @DnDArgument : "spriteind" "CharacterAvoWalkUpWTInv"
					sprite_index = CharacterAvoWalkUpWTInv;
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
					/// @DnDArgument : "spriteind" "CharacterAvoWalkUpWT"
					sprite_index = CharacterAvoWalkUpWT;
					image_index += 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 77010E9C
		/// @DnDParent : 21E5B5EF
		/// @DnDArgument : "obj" "CharVarKeep3"
		var l77010E9C_0 = false;
		l77010E9C_0 = instance_exists(CharVarKeep3);
		if(l77010E9C_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 7709948A
			/// @DnDParent : 77010E9C
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
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkUpWTInv"
					sprite_index = CharacterSpingeWalkUpWTInv;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 56E03DE1
			/// @DnDParent : 77010E9C
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
					/// @DnDArgument : "spriteind" "CharacterSpingeWalkUpWT"
					sprite_index = CharacterSpingeWalkUpWT;
					image_index += 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 52A88B26
		/// @DnDParent : 21E5B5EF
		/// @DnDArgument : "speed" "2"
		speed = 2;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7980CE89
	/// @DnDParent : 6A57BB6C
	/// @DnDArgument : "direction" "90"
	direction = 90;
}