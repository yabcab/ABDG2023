/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1F9C6BBF
/// @DnDArgument : "funcName" "scr_CircleAngerCheck"
function scr_CircleAngerCheck() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 532DC73A
	/// @DnDParent : 1F9C6BBF
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "CharProxTracker"
	var l532DC73A_0 = instance_place(x + 0, y + 0, CharProxTracker);
	if ((l532DC73A_0 > 0))
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 637F6267
		/// @DnDParent : 532DC73A
		/// @DnDArgument : "obj" "EnemyCircleNotLivingLeft"
		var l637F6267_0 = false;
		l637F6267_0 = instance_exists(EnemyCircleNotLivingLeft);
		if(l637F6267_0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1F7D7B64
			/// @DnDParent : 637F6267
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7943F4B7
			/// @DnDParent : 637F6267
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "EnemyCircleAnger"
			instance_create_layer(x + 0, y + 0, "Instances", EnemyCircleAnger);
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 3C00EFC2
		/// @DnDParent : 532DC73A
		/// @DnDArgument : "obj" "EnemyCircleNotLivingRight"
		var l3C00EFC2_0 = false;
		l3C00EFC2_0 = instance_exists(EnemyCircleNotLivingRight);
		if(l3C00EFC2_0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2D696433
			/// @DnDParent : 3C00EFC2
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5049DD6E
			/// @DnDParent : 3C00EFC2
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "EnemyCircleAnger"
			instance_create_layer(x + 0, y + 0, "Instances", EnemyCircleAnger);
		}
	}
}