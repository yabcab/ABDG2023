/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5045ED2B
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0DB28F9D
/// @DnDArgument : "objectid" "TitleKeep1"
instance_create_layer(0, 0, "Instances", TitleKeep1);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 21727CA3
/// @DnDArgument : "objectid" "CharVarKeep2"
instance_create_layer(0, 0, "Instances", CharVarKeep2);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 58DD9D2E
/// @DnDArgument : "room" "HUB"
room_goto(HUB);