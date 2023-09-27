/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2CCDA246
/// @DnDArgument : "funcName" "Scr_CharacterMoveRightWT"
function Scr_CharacterMoveRightWT() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6425E409
	/// @DnDParent : 2CCDA246
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "5"
	if(speed >= 5)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 4C0C02AF
		/// @DnDParent : 6425E409
		/// @DnDArgument : "obj" "CharVarKeep1"
		var l4C0C02AF_0 = false;
		l4C0C02AF_0 = instance_exists(CharVarKeep1);
		if(l4C0C02AF_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 501CE9B6
			/// @DnDParent : 4C0C02AF
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterWalkRightBoostWT"
			sprite_index = CharacterWalkRightBoostWT;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1760F13F
		/// @DnDParent : 6425E409
		/// @DnDArgument : "obj" "CharVarKeep2"
		var l1760F13F_0 = false;
		l1760F13F_0 = instance_exists(CharVarKeep2);
		if(l1760F13F_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 7D64A03E
			/// @DnDParent : 1760F13F
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterAvoWalkRightBoostWT"
			sprite_index = CharacterAvoWalkRightBoostWT;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 2C05BE12
		/// @DnDParent : 6425E409
		/// @DnDArgument : "obj" "CharVarKeep3"
		var l2C05BE12_0 = false;
		l2C05BE12_0 = instance_exists(CharVarKeep3);
		if(l2C05BE12_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3E58E4A3
			/// @DnDParent : 2C05BE12
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterSpingeWalkRightBoostWT"
			sprite_index = CharacterSpingeWalkRightBoostWT;
			image_index += 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A369623
	/// @DnDParent : 2CCDA246
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(speed < 5)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6DE0D7E6
		/// @DnDParent : 6A369623
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
				/// @DnDHash : 0CBA7D5B
				/// @DnDParent : 659C3E55
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterWalkRightWTInv"
				sprite_index = CharacterWalkRightWTInv;
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
				/// @DnDArgument : "spriteind" "CharacterWalkRightWT"
				sprite_index = CharacterWalkRightWT;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 303291B5
		/// @DnDParent : 6A369623
		/// @DnDArgument : "obj" "CharVarKeep3"
		var l303291B5_0 = false;
		l303291B5_0 = instance_exists(CharVarKeep3);
		if(l303291B5_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 75EB3532
			/// @DnDParent : 303291B5
			/// @DnDArgument : "obj" "InvSwapper"
			var l75EB3532_0 = false;
			l75EB3532_0 = instance_exists(InvSwapper);
			if(l75EB3532_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 5E1C4A71
				/// @DnDParent : 75EB3532
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeWalkRightWTInv"
				sprite_index = CharacterSpingeWalkRightWTInv;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 2350579C
			/// @DnDParent : 303291B5
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l2350579C_0 = false;
			l2350579C_0 = instance_exists(InvSwapper);
			if(!l2350579C_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 1D89AC2C
				/// @DnDParent : 2350579C
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeWalkRightWT"
				sprite_index = CharacterSpingeWalkRightWT;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 4E2F0182
		/// @DnDParent : 6A369623
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
					/// @DnDArgument : "spriteind" "CharacterAvoWalkRightWTInv"
					sprite_index = CharacterAvoWalkRightWTInv;
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
					/// @DnDArgument : "spriteind" "CharacterAvoWalkRightWT"
					sprite_index = CharacterAvoWalkRightWT;
					image_index += 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6D03C406
		/// @DnDParent : 6A369623
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
			/// @DnDArgument : "speed" "2"
			speed = 2;
		}
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7980CE89
	/// @DnDParent : 2CCDA246
	/// @DnDArgument : "direction" "0"
	direction = 0;
}