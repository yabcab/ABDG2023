/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 0B2C8977
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l0B2C8977_0 = SurfingonaSineWave;
if (audio_is_playing(l0B2C8977_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7EB511D9
	/// @DnDParent : 0B2C8977
	/// @DnDArgument : "spriteind" "DeformedDeadRainbow"
	sprite_index = DeformedDeadRainbow;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 63450602
/// @DnDArgument : "soundid" "Hit1"
/// @DnDArgument : "not" "1"
var l63450602_0 = Hit1;
if (!audio_is_playing(l63450602_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 491E1F4E
	/// @DnDParent : 63450602
	/// @DnDArgument : "soundid" "Hit1"
	audio_play_sound(Hit1, 0, 0);
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 13D274DA
/// @DnDArgument : "soundid" "SurfingonaSineWave"
/// @DnDArgument : "not" "1"
var l13D274DA_0 = SurfingonaSineWave;
if (!audio_is_playing(l13D274DA_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5C429FE4
	/// @DnDParent : 13D274DA
	/// @DnDArgument : "spriteind" "DeformedDead"
	sprite_index = DeformedDead;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1DA6B325
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 2C2F512E
/// @DnDArgument : "path" "EnemyDieLeft"
/// @DnDArgument : "speed" "6"
path_start(EnemyDieLeft, 6, path_action_stop, false);