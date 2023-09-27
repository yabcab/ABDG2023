/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4D62E6A4
/// @DnDArgument : "funcName" "Scr_CharacterDamageP2"
function Scr_CharacterDamageP2() 
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 556C53BE
	/// @DnDParent : 4D62E6A4
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "4"
	alarm_set(4, 1);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 71FF9113
	/// @DnDParent : 4D62E6A4
	/// @DnDArgument : "soundid" "Hit2"
	audio_play_sound(Hit2, 0, 0);

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6DE0D7E6
	/// @DnDParent : 4D62E6A4
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
		/// @DnDArgument : "not" "1"
		var l659C3E55_0 = false;
		l659C3E55_0 = instance_exists(InvSwapperP2);
		if(!l659C3E55_0)
		{
			/// @DnDAction : YoYo Games.Paths.Start_Path
			/// @DnDVersion : 1.1
			/// @DnDHash : 3558B0F4
			/// @DnDParent : 659C3E55
			/// @DnDArgument : "path" "EnemyDieLeft"
			/// @DnDArgument : "speed" "6"
			path_start(EnemyDieLeft, 6, path_action_stop, false);
		
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
				/// @DnDArgument : "spriteind" "CharacterHurtInvRS"
				sprite_index = CharacterHurtInvRS;
				image_index += 0;
			}
		
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
				/// @DnDArgument : "spriteind" "CharacterHurtInv"
				sprite_index = CharacterHurtInv;
				image_index += 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4E2F0182
	/// @DnDParent : 4D62E6A4
	/// @DnDArgument : "obj" "CharVarKeep2P2"
	var l4E2F0182_0 = false;
	l4E2F0182_0 = instance_exists(CharVarKeep2P2);
	if(l4E2F0182_0)
	{
		/// @DnDAction : YoYo Games.Paths.Start_Path
		/// @DnDVersion : 1.1
		/// @DnDHash : 1F0CEEB9
		/// @DnDParent : 4E2F0182
		/// @DnDArgument : "path" "EnemyDieLeft"
		/// @DnDArgument : "speed" "6"
		path_start(EnemyDieLeft, 6, path_action_stop, false);
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1345CBCB
		/// @DnDParent : 4E2F0182
		/// @DnDArgument : "obj" "InvSwapperP2"
		/// @DnDArgument : "not" "1"
		var l1345CBCB_0 = false;
		l1345CBCB_0 = instance_exists(InvSwapperP2);
		if(!l1345CBCB_0)
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
				/// @DnDArgument : "spriteind" "CharacterAvoHitInv"
				sprite_index = CharacterAvoHitInv;
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
	}
}