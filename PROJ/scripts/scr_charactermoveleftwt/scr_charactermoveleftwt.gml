/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 56EBE2B2
/// @DnDArgument : "funcName" "Scr_CharacterMoveLeftWT"
function Scr_CharacterMoveLeftWT() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13E0D01B
	/// @DnDParent : 56EBE2B2
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "5"
	if(speed >= 5)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7E452699
		/// @DnDParent : 13E0D01B
		/// @DnDArgument : "obj" "CharVarKeep1"
		var l7E452699_0 = false;
		l7E452699_0 = instance_exists(CharVarKeep1);
		if(l7E452699_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 29FFDB8D
			/// @DnDParent : 7E452699
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterWalkLeftBoostWT"
			sprite_index = CharacterWalkLeftBoostWT;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 27ABEB2E
		/// @DnDParent : 13E0D01B
		/// @DnDArgument : "obj" "CharVarKeep2"
		var l27ABEB2E_0 = false;
		l27ABEB2E_0 = instance_exists(CharVarKeep2);
		if(l27ABEB2E_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 09FC6325
			/// @DnDParent : 27ABEB2E
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterAvoWalkLeftBoostWT"
			sprite_index = CharacterAvoWalkLeftBoostWT;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 40393EC6
		/// @DnDParent : 13E0D01B
		/// @DnDArgument : "obj" "CharVarKeep3"
		var l40393EC6_0 = false;
		l40393EC6_0 = instance_exists(CharVarKeep3);
		if(l40393EC6_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 10A93218
			/// @DnDParent : 40393EC6
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterSpingeWalkLeftBoostWT"
			sprite_index = CharacterSpingeWalkLeftBoostWT;
			image_index += 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79C8AD5A
	/// @DnDParent : 56EBE2B2
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(speed < 5)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6DE0D7E6
		/// @DnDParent : 79C8AD5A
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
				/// @DnDHash : 08FFFDE2
				/// @DnDParent : 659C3E55
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterWalkLeftWTInv"
				sprite_index = CharacterWalkLeftWTInv;
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
				/// @DnDArgument : "spriteind" "CharacterWalkLeftWT"
				sprite_index = CharacterWalkLeftWT;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7A7939FD
		/// @DnDParent : 79C8AD5A
		/// @DnDArgument : "obj" "CharVarKeep3"
		var l7A7939FD_0 = false;
		l7A7939FD_0 = instance_exists(CharVarKeep3);
		if(l7A7939FD_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 03988303
			/// @DnDParent : 7A7939FD
			/// @DnDArgument : "obj" "InvSwapper"
			var l03988303_0 = false;
			l03988303_0 = instance_exists(InvSwapper);
			if(l03988303_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 2F87C745
				/// @DnDParent : 03988303
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeWalkLeftWTInv"
				sprite_index = CharacterSpingeWalkLeftWTInv;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 004F56BC
			/// @DnDParent : 7A7939FD
			/// @DnDArgument : "obj" "InvSwapper"
			/// @DnDArgument : "not" "1"
			var l004F56BC_0 = false;
			l004F56BC_0 = instance_exists(InvSwapper);
			if(!l004F56BC_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 403065F2
				/// @DnDParent : 004F56BC
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterSpingeWalkLeftWT"
				sprite_index = CharacterSpingeWalkLeftWT;
				image_index += 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 2F45D680
			/// @DnDParent : 7A7939FD
			/// @DnDArgument : "obj" "SpingeAttack"
			/// @DnDArgument : "not" "1"
			var l2F45D680_0 = false;
			l2F45D680_0 = instance_exists(SpingeAttack);
			if(!l2F45D680_0)
			{
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 52A88B26
				/// @DnDParent : 2F45D680
				/// @DnDArgument : "speed" "2"
				speed = 2;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 4E2F0182
		/// @DnDParent : 79C8AD5A
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
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 0CBC6994
				/// @DnDParent : 1345CBCB
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoWalkWTInv"
				sprite_index = CharacterAvoWalkWTInv;
				image_index += 0;
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
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 10884236
				/// @DnDParent : 7B9AB818
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "CharacterAvoWalkWT"
				sprite_index = CharacterAvoWalkWT;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4E25C3E5
		/// @DnDParent : 79C8AD5A
		/// @DnDArgument : "speed" "2"
		speed = 2;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7980CE89
	/// @DnDParent : 56EBE2B2
	/// @DnDArgument : "direction" "180"
	direction = 180;
}