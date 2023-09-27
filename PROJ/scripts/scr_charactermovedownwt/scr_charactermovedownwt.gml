/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5F7CC4FF
/// @DnDArgument : "funcName" "Scr_CharacterMoveDownWT"
function Scr_CharacterMoveDownWT() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AE23F79
	/// @DnDParent : 5F7CC4FF
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "5"
	if(speed >= 5)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 239D0960
		/// @DnDParent : 3AE23F79
		/// @DnDArgument : "obj" "CharVarKeep1"
		var l239D0960_0 = false;
		l239D0960_0 = instance_exists(CharVarKeep1);
		if(l239D0960_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 7B93382A
			/// @DnDParent : 239D0960
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterWalkDownBoostWT"
			sprite_index = CharacterWalkDownBoostWT;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 06E77634
		/// @DnDParent : 3AE23F79
		/// @DnDArgument : "obj" "CharVarKeep2"
		var l06E77634_0 = false;
		l06E77634_0 = instance_exists(CharVarKeep2);
		if(l06E77634_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 2E067344
			/// @DnDParent : 06E77634
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterAvoWalkDownBoostWT"
			sprite_index = CharacterAvoWalkDownBoostWT;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 47851B6B
		/// @DnDParent : 3AE23F79
		/// @DnDArgument : "obj" "CharVarKeep3"
		var l47851B6B_0 = false;
		l47851B6B_0 = instance_exists(CharVarKeep3);
		if(l47851B6B_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 48F1E80B
			/// @DnDParent : 47851B6B
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterSpingeWalkDownBoostWT"
			sprite_index = CharacterSpingeWalkDownBoostWT;
			image_index += 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AA692C8
	/// @DnDParent : 5F7CC4FF
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(speed < 5)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6DE0D7E6
		/// @DnDParent : 6AA692C8
		/// @DnDArgument : "obj" "CharVarKeep1"
		var l6DE0D7E6_0 = false;
		l6DE0D7E6_0 = instance_exists(CharVarKeep1);
		if(l6DE0D7E6_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 52A88B26
			/// @DnDParent : 6DE0D7E6
			/// @DnDArgument : "speed" "2"
			speed = 2;
		
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
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 7580E725
					/// @DnDParent : 659C3E55
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterWalkDownWTInv"
					sprite_index = CharacterWalkDownWTInv;
					image_index += 0;
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
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 5778F11B
					/// @DnDParent : 3B606CA5
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterWalkDownWT"
					sprite_index = CharacterWalkDownWT;
					image_index += 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 4E2F0182
		/// @DnDParent : 6AA692C8
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
				/// @DnDArgument : "speed" "2"
				speed = 2;
			
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
					/// @DnDHash : 3114FC19
					/// @DnDParent : 1345CBCB
					/// @DnDArgument : "obj" "RainbowSpaceTracker"
					/// @DnDArgument : "not" "1"
					var l3114FC19_0 = false;
					l3114FC19_0 = instance_exists(RainbowSpaceTracker);
					if(!l3114FC19_0)
					{
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 2E8A5EF9
						/// @DnDParent : 3114FC19
						/// @DnDArgument : "imageind_relative" "1"
						/// @DnDArgument : "spriteind" "CharacterAvoWalkDownWTInv"
						sprite_index = CharacterAvoWalkDownWTInv;
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
						/// @DnDArgument : "spriteind" "CharacterAvoWalkDownWT"
						sprite_index = CharacterAvoWalkDownWT;
						image_index += 0;
					}
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 0F9B430A
		/// @DnDParent : 6AA692C8
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
				/// @DnDArgument : "speed" "2"
				speed = 2;
			
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
						/// @DnDArgument : "spriteind" "CharacterSpingeWalkDownWTInv"
						sprite_index = CharacterSpingeWalkDownWTInv;
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
						/// @DnDArgument : "spriteind" "CharacterSpingeWalkDownWT"
						sprite_index = CharacterSpingeWalkDownWT;
						image_index += 0;
					}
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7980CE89
	/// @DnDParent : 5F7CC4FF
	/// @DnDArgument : "direction" "270"
	direction = 270;
}