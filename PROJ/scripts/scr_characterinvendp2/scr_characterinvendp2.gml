/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 15EC9974
/// @DnDArgument : "funcName" "Scr_CharacterInvEndP2"
function Scr_CharacterInvEndP2() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6DE0D7E6
	/// @DnDParent : 15EC9974
	/// @DnDArgument : "obj" "CharVarKeep1P2"
	var l6DE0D7E6_0 = false;
	l6DE0D7E6_0 = instance_exists(CharVarKeep1P2);
	if(l6DE0D7E6_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 26B0DFBA
		/// @DnDParent : 6DE0D7E6
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
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 0E8CBF4D
		/// @DnDParent : 6DE0D7E6
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
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4E2F0182
	/// @DnDParent : 15EC9974
	/// @DnDArgument : "obj" "CharVarKeep2P2"
	var l4E2F0182_0 = false;
	l4E2F0182_0 = instance_exists(CharVarKeep2P2);
	if(l4E2F0182_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 453C0746
		/// @DnDParent : 4E2F0182
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
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 431A57F9
		/// @DnDParent : 4E2F0182
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
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 264E3709
	/// @DnDParent : 15EC9974
	/// @DnDArgument : "obj" "CharVarKeep3P2"
	var l264E3709_0 = false;
	l264E3709_0 = instance_exists(CharVarKeep3P2);
	if(l264E3709_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 36C46BAF
		/// @DnDParent : 264E3709
		/// @DnDArgument : "obj" "RainbowSpaceTracker"
		var l36C46BAF_0 = false;
		l36C46BAF_0 = instance_exists(RainbowSpaceTracker);
		if(l36C46BAF_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3AC259CF
			/// @DnDParent : 36C46BAF
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterSpingeTopdownRS"
			sprite_index = CharacterSpingeTopdownRS;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 4C915E54
		/// @DnDParent : 264E3709
		/// @DnDArgument : "obj" "RainbowSpaceTracker"
		/// @DnDArgument : "not" "1"
		var l4C915E54_0 = false;
		l4C915E54_0 = instance_exists(RainbowSpaceTracker);
		if(!l4C915E54_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 60593C56
			/// @DnDParent : 4C915E54
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "CharacterSpingeTopdown"
			sprite_index = CharacterSpingeTopdown;
			image_index += 0;
		}
	}
}