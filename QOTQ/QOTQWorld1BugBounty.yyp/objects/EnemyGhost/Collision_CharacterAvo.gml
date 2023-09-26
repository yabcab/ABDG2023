/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 200ED177
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 23742AEA
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "SmokeCloud"
instance_create_layer(x + 0, y + 0, "Instances", SmokeCloud);

/// @DnDAction : YoYo Games.Cameras.Set_View_Var
/// @DnDVersion : 1
/// @DnDHash : 6D161DC8
/// @DnDArgument : "var" "1"
/// @DnDArgument : "view" "2"
/// @DnDArgument : "value" "1"
view_set_visible(2, 1);