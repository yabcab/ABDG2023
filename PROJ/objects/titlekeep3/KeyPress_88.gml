/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 36345C19
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 221D44BA
/// @DnDArgument : "objectid" "TitleKeep1"
instance_create_layer(0, 0, "Instances", TitleKeep1);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5ECDD8CF
/// @DnDArgument : "objectid" "CharVarKeep1"
instance_create_layer(0, 0, "Instances", CharVarKeep1);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 369F420E
/// @DnDArgument : "room" "HUB"
room_goto(HUB);