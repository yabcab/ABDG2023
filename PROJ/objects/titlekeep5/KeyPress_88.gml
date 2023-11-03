/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 53E34131
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2CD963F7
/// @DnDArgument : "objectid" "CharVarKeep3"
instance_create_layer(0, 0, "Instances", CharVarKeep3);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 42EA2C4F
/// @DnDArgument : "objectid" "TitleKeep1"
instance_create_layer(0, 0, "Instances", TitleKeep1);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 3FFCB9AF
/// @DnDArgument : "room" "HUB"
room_goto(HUB);