/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 05420DCB
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 4727BC5E
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l4727BC5E_0 = SurfingonaSineWave;
if (audio_is_playing(l4727BC5E_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6F88BD72
	/// @DnDParent : 4727BC5E
	/// @DnDArgument : "spriteind" "EnemyTriangleDeadRainbow"
	sprite_index = EnemyTriangleDeadRainbow;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0C39229B
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 35E4DA0E
/// @DnDArgument : "path" "EmemyDieUp"
/// @DnDArgument : "speed" "7"
path_start(EmemyDieUp, 7, path_action_stop, false);