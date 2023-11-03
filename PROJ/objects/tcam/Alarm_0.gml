/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2C395E60
/// @DnDArgument : "var" "RandVar"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "2"
RandVar = floor(random_range(0, 2 + 1));

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 6D570FD3
randomize();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4CC16F7C
/// @DnDArgument : "steps" "200"
alarm_set(0, 200);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 58A0E30C
/// @DnDArgument : "direction" "135,90,45,180,0,225,270,315"
direction = choose(135,90,45,180,0,225,270,315);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 06249E22
/// @DnDArgument : "speed" "2"
speed = 2;