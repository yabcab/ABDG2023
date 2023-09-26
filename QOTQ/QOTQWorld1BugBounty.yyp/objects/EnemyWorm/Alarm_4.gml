/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 74306952
/// @DnDArgument : "spriteind" "EnemyWormDead"
sprite_index = EnemyWormDead;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 58D0879B
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7ECC8F3D
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "SmokeCloud"
instance_create_layer(x + 0, y + 0, "Instances", SmokeCloud);