/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7FF265E0
/// @DnDArgument : "key" "vk_left"
var l7FF265E0_0;
l7FF265E0_0 = keyboard_check(vk_left);
if (l7FF265E0_0)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 4DBE7D69
	/// @DnDParent : 7FF265E0
	/// @DnDArgument : "soundid" "SurfingonaSineWave"
	var l4DBE7D69_0 = SurfingonaSineWave;
	if (audio_is_playing(l4DBE7D69_0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 15B40A3D
		/// @DnDParent : 4DBE7D69
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "CharacterAvoGunLeftRS"
		sprite_index = CharacterAvoGunLeftRS;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 1EA587C0
	/// @DnDParent : 7FF265E0
	/// @DnDArgument : "soundid" "SurfingonaSineWave"
	/// @DnDArgument : "not" "1"
	var l1EA587C0_0 = SurfingonaSineWave;
	if (!audio_is_playing(l1EA587C0_0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 66515596
		/// @DnDParent : 1EA587C0
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "CharacterAvoGunLeft"
		sprite_index = CharacterAvoGunLeft;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 49EB580C
	/// @DnDParent : 7FF265E0
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 15);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 57EEA75F
/// @DnDArgument : "key" "vk_right"
var l57EEA75F_0;
l57EEA75F_0 = keyboard_check(vk_right);
if (l57EEA75F_0)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 200B0371
	/// @DnDParent : 57EEA75F
	/// @DnDArgument : "soundid" "SurfingonaSineWave"
	var l200B0371_0 = SurfingonaSineWave;
	if (audio_is_playing(l200B0371_0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 27A1B3E1
		/// @DnDParent : 200B0371
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "CharacterAvoGunRightRS"
		sprite_index = CharacterAvoGunRightRS;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 79BAE35F
	/// @DnDParent : 57EEA75F
	/// @DnDArgument : "soundid" "SurfingonaSineWave"
	/// @DnDArgument : "not" "1"
	var l79BAE35F_0 = SurfingonaSineWave;
	if (!audio_is_playing(l79BAE35F_0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 526636F7
		/// @DnDParent : 79BAE35F
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "CharacterAvoGunRight"
		sprite_index = CharacterAvoGunRight;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 075EF76B
	/// @DnDParent : 57EEA75F
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 15);
}