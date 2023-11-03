/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2983BDF9
/// @DnDArgument : "obj" "CharVarKeep1"
var l2983BDF9_0 = false;
l2983BDF9_0 = instance_exists(CharVarKeep1);
if(l2983BDF9_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 75CB9BF8
	/// @DnDParent : 2983BDF9
	/// @DnDArgument : "obj" "RainbowSpaceTracker"
	/// @DnDArgument : "not" "1"
	var l75CB9BF8_0 = false;
	l75CB9BF8_0 = instance_exists(RainbowSpaceTracker);
	if(!l75CB9BF8_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 23B7947E
		/// @DnDParent : 75CB9BF8
		/// @DnDArgument : "obj" "InvSwapper"
		/// @DnDArgument : "not" "1"
		var l23B7947E_0 = false;
		l23B7947E_0 = instance_exists(InvSwapper);
		if(!l23B7947E_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 4D9B2FD7
			/// @DnDParent : 23B7947E
			/// @DnDArgument : "spriteind" "CharacterTopdown"
			sprite_index = CharacterTopdown;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 257007F2
		/// @DnDParent : 75CB9BF8
		/// @DnDArgument : "obj" "InvSwapper"
		var l257007F2_0 = false;
		l257007F2_0 = instance_exists(InvSwapper);
		if(l257007F2_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 0EAF5B6B
			/// @DnDParent : 257007F2
			/// @DnDArgument : "spriteind" "CharacterTopdownInv"
			sprite_index = CharacterTopdownInv;
			image_index = 0;
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 1EA0B779
	/// @DnDParent : 2983BDF9
	/// @DnDArgument : "obj" "RainbowSpaceTracker"
	var l1EA0B779_0 = false;
	l1EA0B779_0 = instance_exists(RainbowSpaceTracker);
	if(l1EA0B779_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 3E861643
		/// @DnDParent : 1EA0B779
		/// @DnDArgument : "obj" "InvSwapper"
		/// @DnDArgument : "not" "1"
		var l3E861643_0 = false;
		l3E861643_0 = instance_exists(InvSwapper);
		if(!l3E861643_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 4B328A50
			/// @DnDParent : 3E861643
			/// @DnDArgument : "spriteind" "CharacterTopdownRS"
			sprite_index = CharacterTopdownRS;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 3068BE3F
		/// @DnDParent : 1EA0B779
		/// @DnDArgument : "obj" "InvSwapper"
		var l3068BE3F_0 = false;
		l3068BE3F_0 = instance_exists(InvSwapper);
		if(l3068BE3F_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 147E0A3D
			/// @DnDParent : 3068BE3F
			/// @DnDArgument : "spriteind" "CharacterTopdownInvRS"
			sprite_index = CharacterTopdownInvRS;
			image_index = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5966B550
/// @DnDArgument : "obj" "CharVarKeep2"
var l5966B550_0 = false;
l5966B550_0 = instance_exists(CharVarKeep2);
if(l5966B550_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 7A169C46
	/// @DnDParent : 5966B550
	/// @DnDArgument : "obj" "RainbowSpaceTracker"
	/// @DnDArgument : "not" "1"
	var l7A169C46_0 = false;
	l7A169C46_0 = instance_exists(RainbowSpaceTracker);
	if(!l7A169C46_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 5003862D
		/// @DnDParent : 7A169C46
		/// @DnDArgument : "obj" "InvSwapper"
		/// @DnDArgument : "not" "1"
		var l5003862D_0 = false;
		l5003862D_0 = instance_exists(InvSwapper);
		if(!l5003862D_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 2448DC89
			/// @DnDParent : 5003862D
			/// @DnDArgument : "spriteind" "CharacterAvoStill"
			sprite_index = CharacterAvoStill;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 5AC88E01
		/// @DnDParent : 7A169C46
		/// @DnDArgument : "obj" "InvSwapper"
		var l5AC88E01_0 = false;
		l5AC88E01_0 = instance_exists(InvSwapper);
		if(l5AC88E01_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 4219B8F3
			/// @DnDParent : 5AC88E01
			/// @DnDArgument : "spriteind" "CharacterAvoStillInv"
			sprite_index = CharacterAvoStillInv;
			image_index = 0;
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 1F5FED03
	/// @DnDParent : 5966B550
	/// @DnDArgument : "obj" "RainbowSpaceTracker"
	var l1F5FED03_0 = false;
	l1F5FED03_0 = instance_exists(RainbowSpaceTracker);
	if(l1F5FED03_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 088E7F77
		/// @DnDParent : 1F5FED03
		/// @DnDArgument : "obj" "InvSwapper"
		/// @DnDArgument : "not" "1"
		var l088E7F77_0 = false;
		l088E7F77_0 = instance_exists(InvSwapper);
		if(!l088E7F77_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 00B24C91
			/// @DnDParent : 088E7F77
			/// @DnDArgument : "spriteind" "CharacterAvoStillRS"
			sprite_index = CharacterAvoStillRS;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 0980CC4B
		/// @DnDParent : 1F5FED03
		/// @DnDArgument : "obj" "InvSwapper"
		var l0980CC4B_0 = false;
		l0980CC4B_0 = instance_exists(InvSwapper);
		if(l0980CC4B_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 07D681C6
			/// @DnDParent : 0980CC4B
			/// @DnDArgument : "spriteind" "CharacterAvoStillRSInv"
			sprite_index = CharacterAvoStillRSInv;
			image_index = 0;
		}
	}
}