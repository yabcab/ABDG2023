/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5785BC77
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3523ED20
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "CharacterAvo"
instance_create_layer(x + 0, y + 0, "Instances", CharacterAvo);

/// @DnDAction : YoYo Games.Cameras.Set_View_Var
/// @DnDVersion : 1
/// @DnDHash : 3E6D9A63
/// @DnDArgument : "var" "1"
/// @DnDArgument : "view" "2"
view_set_visible(2, 0);