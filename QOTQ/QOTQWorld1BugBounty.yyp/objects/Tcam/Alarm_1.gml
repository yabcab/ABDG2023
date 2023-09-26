/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09DBE564
/// @DnDArgument : "var" "RandVar"
if(RandVar == 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7CB8F561
	/// @DnDParent : 09DBE564
	/// @DnDArgument : "room" "TitleRoom1"
	room_goto(TitleRoom1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E9D7251
/// @DnDArgument : "var" "RandVar"
/// @DnDArgument : "value" "1"
if(RandVar == 1)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 50454EE7
	/// @DnDParent : 2E9D7251
	/// @DnDArgument : "room" "TitleRoom2"
	room_goto(TitleRoom2);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B746E7E
/// @DnDArgument : "var" "RandVar"
/// @DnDArgument : "value" "2"
if(RandVar == 2)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 36C5CF38
	/// @DnDParent : 6B746E7E
	/// @DnDArgument : "room" "TitleRoom3"
	room_goto(TitleRoom3);
}