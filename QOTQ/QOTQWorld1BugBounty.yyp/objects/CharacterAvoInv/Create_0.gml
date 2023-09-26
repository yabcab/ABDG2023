/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 411F752F
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l411F752F_0 = SurfingonaSineWave;
if (audio_is_playing(l411F752F_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0684C5CA
	/// @DnDParent : 411F752F
	/// @DnDArgument : "spriteind" "EnemySquareDeadRainbow"
	sprite_index = EnemySquareDeadRainbow;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 5C6D14F6
/// @DnDArgument : "path" "EnemyDieLeft"
/// @DnDArgument : "speed" "7"
path_start(EnemyDieLeft, 7, path_action_stop, false);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 48016B5B
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "CharacterAvoHitInv"
sprite_index = CharacterAvoHitInv;
image_index += 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 539CBAB8
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 615E9926
/// @DnDArgument : "steps" "90"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 90);