/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2623E825
/// @DnDArgument : "funcName" "Scr_CharacterAttackP2"
function Scr_CharacterAttackP2() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 3AC0620E
	/// @DnDParent : 2623E825
	/// @DnDArgument : "obj" "CharVarKeep1P2"
	var l3AC0620E_0 = false;
	l3AC0620E_0 = instance_exists(CharVarKeep1P2);
	if(l3AC0620E_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 40B020FA
		/// @DnDParent : 3AC0620E
		/// @DnDArgument : "obj" "InvSwapperP2"
		/// @DnDArgument : "not" "1"
		var l40B020FA_0 = false;
		l40B020FA_0 = instance_exists(InvSwapperP2);
		if(!l40B020FA_0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 25DF5FDC
			/// @DnDParent : 40B020FA
			/// @DnDArgument : "key" "ord("A")"
			var l25DF5FDC_0;
			l25DF5FDC_0 = keyboard_check(ord("A"));
			if (l25DF5FDC_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 0AF6893D
				/// @DnDParent : 25DF5FDC
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l0AF6893D_0 = false;
				l0AF6893D_0 = instance_exists(RainbowSpaceTracker);
				if(!l0AF6893D_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 2CC90B8C
					/// @DnDParent : 0AF6893D
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSwingLeft"
					sprite_index = CharacterSwingLeft;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 4124586E
				/// @DnDParent : 25DF5FDC
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l4124586E_0 = false;
				l4124586E_0 = instance_exists(RainbowSpaceTracker);
				if(l4124586E_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 59B1991B
					/// @DnDParent : 4124586E
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSwingLeftRS"
					sprite_index = CharacterSwingLeftRS;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 10B166DC
				/// @DnDParent : 25DF5FDC
				/// @DnDArgument : "xpos" "-40"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "-30"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "SwingHitboxLeft"
				instance_create_layer(x + -40, y + -30, "Instances", SwingHitboxLeft);
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 03C6B700
			/// @DnDParent : 40B020FA
			/// @DnDArgument : "key" "ord("D")"
			var l03C6B700_0;
			l03C6B700_0 = keyboard_check(ord("D"));
			if (l03C6B700_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 3BE87948
				/// @DnDParent : 03C6B700
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l3BE87948_0 = false;
				l3BE87948_0 = instance_exists(RainbowSpaceTracker);
				if(!l3BE87948_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 043C5606
					/// @DnDParent : 3BE87948
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSwingRight"
					sprite_index = CharacterSwingRight;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 01116308
				/// @DnDParent : 03C6B700
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l01116308_0 = false;
				l01116308_0 = instance_exists(RainbowSpaceTracker);
				if(l01116308_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 648FBDFA
					/// @DnDParent : 01116308
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSwingRightRS"
					sprite_index = CharacterSwingRightRS;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 39A42F10
				/// @DnDParent : 03C6B700
				/// @DnDArgument : "xpos" "10"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "-30"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "SwingHitboxRight"
				instance_create_layer(x + 10, y + -30, "Instances", SwingHitboxRight);
			}
		}
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4407419F
		/// @DnDParent : 3AC0620E
		speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 3D7C9B76
		/// @DnDParent : 3AC0620E
		/// @DnDArgument : "obj" "InvSwapperP2"
		var l3D7C9B76_0 = false;
		l3D7C9B76_0 = instance_exists(InvSwapperP2);
		if(l3D7C9B76_0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 12979EE2
			/// @DnDParent : 3D7C9B76
			/// @DnDArgument : "key" "ord("A")"
			var l12979EE2_0;
			l12979EE2_0 = keyboard_check(ord("A"));
			if (l12979EE2_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 661E8772
				/// @DnDParent : 12979EE2
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l661E8772_0 = false;
				l661E8772_0 = instance_exists(RainbowSpaceTracker);
				if(!l661E8772_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 39B424D9
					/// @DnDParent : 661E8772
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSwingLeftinv"
					sprite_index = CharacterSwingLeftinv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 49468740
				/// @DnDParent : 12979EE2
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l49468740_0 = false;
				l49468740_0 = instance_exists(RainbowSpaceTracker);
				if(l49468740_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 56526CCB
					/// @DnDParent : 49468740
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSwingLeftInvRS"
					sprite_index = CharacterSwingLeftInvRS;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 51B84DF6
				/// @DnDParent : 12979EE2
				/// @DnDArgument : "xpos" "-40"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "-30"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "SwingHitboxLeft"
				instance_create_layer(x + -40, y + -30, "Instances", SwingHitboxLeft);
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 1109DD22
			/// @DnDParent : 3D7C9B76
			/// @DnDArgument : "key" "ord("D")"
			var l1109DD22_0;
			l1109DD22_0 = keyboard_check(ord("D"));
			if (l1109DD22_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 38D73F32
				/// @DnDParent : 1109DD22
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l38D73F32_0 = false;
				l38D73F32_0 = instance_exists(RainbowSpaceTracker);
				if(!l38D73F32_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 78B25074
					/// @DnDParent : 38D73F32
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSwingRightInv"
					sprite_index = CharacterSwingRightInv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 07498177
				/// @DnDParent : 1109DD22
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l07498177_0 = false;
				l07498177_0 = instance_exists(RainbowSpaceTracker);
				if(l07498177_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 3DC42503
					/// @DnDParent : 07498177
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSwingRightInvRS"
					sprite_index = CharacterSwingRightInvRS;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 0AC7D5AE
				/// @DnDParent : 1109DD22
				/// @DnDArgument : "xpos" "10"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "-30"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "SwingHitboxRight"
				instance_create_layer(x + 10, y + -30, "Instances", SwingHitboxRight);
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 534F1D3B
	/// @DnDParent : 2623E825
	/// @DnDArgument : "obj" "CharVarKeep2P2"
	var l534F1D3B_0 = false;
	l534F1D3B_0 = instance_exists(CharVarKeep2P2);
	if(l534F1D3B_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 2633866C
		/// @DnDParent : 534F1D3B
		/// @DnDArgument : "obj" "InvSwapperP2"
		/// @DnDArgument : "not" "1"
		var l2633866C_0 = false;
		l2633866C_0 = instance_exists(InvSwapperP2);
		if(!l2633866C_0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 5048E48B
			/// @DnDParent : 2633866C
			/// @DnDArgument : "key" "ord("A")"
			var l5048E48B_0;
			l5048E48B_0 = keyboard_check(ord("A"));
			if (l5048E48B_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 4EDB21AC
				/// @DnDParent : 5048E48B
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l4EDB21AC_0 = false;
				l4EDB21AC_0 = instance_exists(RainbowSpaceTracker);
				if(!l4EDB21AC_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 68D024A6
					/// @DnDParent : 4EDB21AC
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunLeft"
					sprite_index = CharacterAvoGunLeft;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 05630714
				/// @DnDParent : 5048E48B
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l05630714_0 = false;
				l05630714_0 = instance_exists(RainbowSpaceTracker);
				if(l05630714_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 4F9FFBD4
					/// @DnDParent : 05630714
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunLeftRS"
					sprite_index = CharacterAvoGunLeftRS;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 7F83CF15
			/// @DnDParent : 2633866C
			/// @DnDArgument : "key" "ord("D")"
			var l7F83CF15_0;
			l7F83CF15_0 = keyboard_check(ord("D"));
			if (l7F83CF15_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 5D3973BC
				/// @DnDParent : 7F83CF15
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l5D3973BC_0 = false;
				l5D3973BC_0 = instance_exists(RainbowSpaceTracker);
				if(!l5D3973BC_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 580ABAA1
					/// @DnDParent : 5D3973BC
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunRight"
					sprite_index = CharacterAvoGunRight;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 43FCD70D
				/// @DnDParent : 7F83CF15
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l43FCD70D_0 = false;
				l43FCD70D_0 = instance_exists(RainbowSpaceTracker);
				if(l43FCD70D_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 63F0D2F7
					/// @DnDParent : 43FCD70D
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunRightRS"
					sprite_index = CharacterAvoGunRightRS;
					image_index += 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 012513C4
		/// @DnDParent : 534F1D3B
		/// @DnDArgument : "obj" "InvSwapperP2"
		var l012513C4_0 = false;
		l012513C4_0 = instance_exists(InvSwapperP2);
		if(l012513C4_0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 35070C81
			/// @DnDParent : 012513C4
			/// @DnDArgument : "key" "ord("A")"
			var l35070C81_0;
			l35070C81_0 = keyboard_check(ord("A"));
			if (l35070C81_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 59561FD7
				/// @DnDParent : 35070C81
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l59561FD7_0 = false;
				l59561FD7_0 = instance_exists(RainbowSpaceTracker);
				if(!l59561FD7_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 1C1A285E
					/// @DnDParent : 59561FD7
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunLeftInv"
					sprite_index = CharacterAvoGunLeftInv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 7B0BD444
				/// @DnDParent : 35070C81
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l7B0BD444_0 = false;
				l7B0BD444_0 = instance_exists(RainbowSpaceTracker);
				if(l7B0BD444_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 2FB833B2
					/// @DnDParent : 7B0BD444
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunLeftRSInv"
					sprite_index = CharacterAvoGunLeftRSInv;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 2478746A
			/// @DnDParent : 012513C4
			/// @DnDArgument : "key" "ord("D")"
			var l2478746A_0;
			l2478746A_0 = keyboard_check(ord("D"));
			if (l2478746A_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 0194222E
				/// @DnDParent : 2478746A
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l0194222E_0 = false;
				l0194222E_0 = instance_exists(RainbowSpaceTracker);
				if(!l0194222E_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 11863BDA
					/// @DnDParent : 0194222E
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunRightInv"
					sprite_index = CharacterAvoGunRightInv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 552466DE
				/// @DnDParent : 2478746A
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l552466DE_0 = false;
				l552466DE_0 = instance_exists(RainbowSpaceTracker);
				if(!l552466DE_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 58A70F38
					/// @DnDParent : 552466DE
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunRightRSInv"
					sprite_index = CharacterAvoGunRightRSInv;
					image_index += 0;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 5062EA80
	/// @DnDParent : 2623E825
	/// @DnDArgument : "obj" "CharVarKeep3P2"
	var l5062EA80_0 = false;
	l5062EA80_0 = instance_exists(CharVarKeep3P2);
	if(l5062EA80_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2FCFFF56
		/// @DnDParent : 5062EA80
		/// @DnDArgument : "xpos" "-20"
		/// @DnDArgument : "objectid" "SpingeAttackP2"
		instance_create_layer(-20, 0, "Instances", SpingeAttackP2);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DEBE538
		/// @DnDParent : 5062EA80
		/// @DnDArgument : "var" "speed"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "5"
		if(!(speed >= 5))
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 09037BFF
			/// @DnDParent : 3DEBE538
			/// @DnDArgument : "key" "ord("A")"
			var l09037BFF_0;
			l09037BFF_0 = keyboard_check(ord("A"));
			if (l09037BFF_0)
			{
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 21A635FB
				/// @DnDParent : 09037BFF
				/// @DnDArgument : "speed" "0.1"
				/// @DnDArgument : "speed_relative" "1"
				speed += 0.1;
			
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 63EE076E
				/// @DnDParent : 09037BFF
				/// @DnDArgument : "direction" "180"
				direction = 180;
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 6CFE58B4
			/// @DnDParent : 3DEBE538
			/// @DnDArgument : "key" "ord("D")"
			var l6CFE58B4_0;
			l6CFE58B4_0 = keyboard_check(ord("D"));
			if (l6CFE58B4_0)
			{
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 23EF4B15
				/// @DnDParent : 6CFE58B4
				/// @DnDArgument : "speed" "0.1"
				/// @DnDArgument : "speed_relative" "1"
				speed += 0.1;
			
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 5B287DE5
				/// @DnDParent : 6CFE58B4
				/// @DnDArgument : "direction" "0"
				direction = 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 41630D18
		/// @DnDParent : 5062EA80
		/// @DnDArgument : "obj" "InvSwapperP2"
		/// @DnDArgument : "not" "1"
		var l41630D18_0 = false;
		l41630D18_0 = instance_exists(InvSwapperP2);
		if(!l41630D18_0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 039E9673
			/// @DnDParent : 41630D18
			/// @DnDArgument : "key" "ord("A")"
			var l039E9673_0;
			l039E9673_0 = keyboard_check(ord("A"));
			if (l039E9673_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 014CBD60
				/// @DnDParent : 039E9673
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l014CBD60_0 = false;
				l014CBD60_0 = instance_exists(RainbowSpaceTracker);
				if(!l014CBD60_0)
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 418959B5
					/// @DnDParent : 014CBD60
					/// @DnDArgument : "var" "speed"
					/// @DnDArgument : "op" "4"
					/// @DnDArgument : "value" "5"
					if(speed >= 5)
					{
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 55028B1A
						/// @DnDParent : 418959B5
						/// @DnDArgument : "imageind_relative" "1"
						/// @DnDArgument : "spriteind" "CharacterSpingeAttackLeft"
						sprite_index = CharacterSpingeAttackLeft;
						image_index += 0;
					}
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 30A747D5
					/// @DnDParent : 014CBD60
					/// @DnDArgument : "var" "speed"
					/// @DnDArgument : "not" "1"
					/// @DnDArgument : "op" "4"
					/// @DnDArgument : "value" "5"
					if(!(speed >= 5))
					{
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 615B5D00
						/// @DnDParent : 30A747D5
						/// @DnDArgument : "imageind_relative" "1"
						/// @DnDArgument : "spriteind" "CharacterSpingeAttackLeftStart"
						sprite_index = CharacterSpingeAttackLeftStart;
						image_index += 0;
					}
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 4AAA5BE3
				/// @DnDParent : 039E9673
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l4AAA5BE3_0 = false;
				l4AAA5BE3_0 = instance_exists(RainbowSpaceTracker);
				if(l4AAA5BE3_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 73BFB727
					/// @DnDParent : 4AAA5BE3
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSpingeAttackLeftRS"
					sprite_index = CharacterSpingeAttackLeftRS;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 01D63E88
				/// @DnDParent : 039E9673
				/// @DnDArgument : "var" "speed"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "5"
				if(speed >= 5)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 184A99E5
					/// @DnDParent : 01D63E88
					/// @DnDArgument : "xpos" "-40"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "-30"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "SwingHitboxLeft"
					instance_create_layer(x + -40, y + -30, "Instances", SwingHitboxLeft);
				}
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 4FD14417
			/// @DnDParent : 41630D18
			/// @DnDArgument : "key" "ord("D")"
			var l4FD14417_0;
			l4FD14417_0 = keyboard_check(ord("D"));
			if (l4FD14417_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 5DFA755D
				/// @DnDParent : 4FD14417
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l5DFA755D_0 = false;
				l5DFA755D_0 = instance_exists(RainbowSpaceTracker);
				if(!l5DFA755D_0)
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2F640013
					/// @DnDParent : 5DFA755D
					/// @DnDArgument : "var" "speed"
					/// @DnDArgument : "op" "4"
					/// @DnDArgument : "value" "5"
					if(speed >= 5)
					{
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 21ACD798
						/// @DnDParent : 2F640013
						/// @DnDArgument : "imageind_relative" "1"
						/// @DnDArgument : "spriteind" "CharacterSpingeAttackRight"
						sprite_index = CharacterSpingeAttackRight;
						image_index += 0;
					}
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 393075A4
					/// @DnDParent : 5DFA755D
					/// @DnDArgument : "var" "speed"
					/// @DnDArgument : "not" "1"
					/// @DnDArgument : "op" "4"
					/// @DnDArgument : "value" "5"
					if(!(speed >= 5))
					{
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 3F768965
						/// @DnDParent : 393075A4
						/// @DnDArgument : "imageind_relative" "1"
						/// @DnDArgument : "spriteind" "CharacterSpingeAttackRightStart"
						sprite_index = CharacterSpingeAttackRightStart;
						image_index += 0;
					}
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 6265B47E
				/// @DnDParent : 4FD14417
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l6265B47E_0 = false;
				l6265B47E_0 = instance_exists(RainbowSpaceTracker);
				if(l6265B47E_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 0429F962
					/// @DnDParent : 6265B47E
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterSpingeAttackRightRS"
					sprite_index = CharacterSpingeAttackRightRS;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 14649B4C
				/// @DnDParent : 4FD14417
				/// @DnDArgument : "var" "speed"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "5"
				if(speed >= 5)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 2481D3F4
					/// @DnDParent : 14649B4C
					/// @DnDArgument : "xpos" "10"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "-30"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "SwingHitboxRight"
					instance_create_layer(x + 10, y + -30, "Instances", SwingHitboxRight);
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 53D666CF
		/// @DnDParent : 5062EA80
		/// @DnDArgument : "obj" "InvSwapperP2"
		var l53D666CF_0 = false;
		l53D666CF_0 = instance_exists(InvSwapperP2);
		if(l53D666CF_0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 3CE7AFCD
			/// @DnDParent : 53D666CF
			/// @DnDArgument : "key" "ord("A")"
			var l3CE7AFCD_0;
			l3CE7AFCD_0 = keyboard_check(ord("A"));
			if (l3CE7AFCD_0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 4D2230CA
				/// @DnDParent : 3CE7AFCD
				/// @DnDArgument : "xpos" "-40"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "-30"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "SwingHitboxLeft"
				instance_create_layer(x + -40, y + -30, "Instances", SwingHitboxLeft);
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 1C111E9A
				/// @DnDParent : 3CE7AFCD
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l1C111E9A_0 = false;
				l1C111E9A_0 = instance_exists(RainbowSpaceTracker);
				if(!l1C111E9A_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 313F5299
					/// @DnDParent : 1C111E9A
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunLeftInv"
					sprite_index = CharacterAvoGunLeftInv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 2E440524
				/// @DnDParent : 3CE7AFCD
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				var l2E440524_0 = false;
				l2E440524_0 = instance_exists(RainbowSpaceTracker);
				if(l2E440524_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 4F099607
					/// @DnDParent : 2E440524
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunLeftRSInv"
					sprite_index = CharacterAvoGunLeftRSInv;
					image_index += 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 5B86D0D7
			/// @DnDParent : 53D666CF
			/// @DnDArgument : "key" "ord("D")"
			var l5B86D0D7_0;
			l5B86D0D7_0 = keyboard_check(ord("D"));
			if (l5B86D0D7_0)
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 70F8BCB6
				/// @DnDParent : 5B86D0D7
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l70F8BCB6_0 = false;
				l70F8BCB6_0 = instance_exists(RainbowSpaceTracker);
				if(!l70F8BCB6_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 5951D55C
					/// @DnDParent : 70F8BCB6
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunRightInv"
					sprite_index = CharacterAvoGunRightInv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 785D0B3A
				/// @DnDParent : 5B86D0D7
				/// @DnDArgument : "obj" "RainbowSpaceTracker"
				/// @DnDArgument : "not" "1"
				var l785D0B3A_0 = false;
				l785D0B3A_0 = instance_exists(RainbowSpaceTracker);
				if(!l785D0B3A_0)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 11930DC2
					/// @DnDParent : 785D0B3A
					/// @DnDArgument : "imageind_relative" "1"
					/// @DnDArgument : "spriteind" "CharacterAvoGunRightRSInv"
					sprite_index = CharacterAvoGunRightRSInv;
					image_index += 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 42824620
				/// @DnDParent : 5B86D0D7
				/// @DnDArgument : "xpos" "10"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "-30"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "SwingHitboxRight"
				instance_create_layer(x + 10, y + -30, "Instances", SwingHitboxRight);
			}
		}
	}
}