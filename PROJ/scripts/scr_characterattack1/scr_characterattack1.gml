function scr_characterAttack1() 
{
	speed = 0;

	if direction = 180
	{
		var l11616FED_0 = false;
		l11616FED_0 = instance_exists(RainbowSpaceTracker);
		if(!l11616FED_0)
		{
			var l389CF38B_0 = false;
			l389CF38B_0 = instance_exists(InvSwapper);
			if(!l389CF38B_0)
			{
				sprite_index = CharacterSwingLeft;
				image_index += 0;
			}
		
			var l09B09A2D_0 = false;
			l09B09A2D_0 = instance_exists(InvSwapper);
			if(l09B09A2D_0)
			{
				sprite_index = CharacterSwingLeftinv;
				image_index += 0;
			}
		}
	
		var l20FCB106_0 = false;
		l20FCB106_0 = instance_exists(RainbowSpaceTracker);
		if(l20FCB106_0)
		{
			var l3121D14F_0 = false;
			l3121D14F_0 = instance_exists(InvSwapper);
			if(!l3121D14F_0)
			{
				sprite_index = CharacterSwingLeftRS;
				image_index += 0;
			}
		
			var l0C132259_0 = false;
			l0C132259_0 = instance_exists(InvSwapper);
			if(l0C132259_0)
			{
				sprite_index = CharacterSwingLeftinvRS;
				image_index += 0;
			}
		}
	
		instance_create_layer(x + -45, y + -30, "Instances", SwingHitboxLeft);
	}

	if direction = 0
	{
		var l15B4B807_0 = false;
		l15B4B807_0 = instance_exists(RainbowSpaceTracker);
		if(!l15B4B807_0)
		{
			var l3FED65D5_0 = false;
			l3FED65D5_0 = instance_exists(InvSwapper);
			if(!l3FED65D5_0)
			{
				sprite_index = CharacterSwingRight;
				image_index += 0;
			}
		
			var l75090E7F_0 = false;
			l75090E7F_0 = instance_exists(InvSwapper);
			if(l75090E7F_0)
			{
				sprite_index = CharacterSwingRightInv;
				image_index += 0;
			}
		}
	
		var l738A9C46_0 = false;
		l738A9C46_0 = instance_exists(RainbowSpaceTracker);
		if(l738A9C46_0)
		{
			var l007D6EEE_0 = false;
			l007D6EEE_0 = instance_exists(InvSwapper);
			if(!l007D6EEE_0)
			{
				sprite_index = CharacterSwingRightRS;
				image_index += 0;
			}
		
			var l775445FB_0 = false;
			l775445FB_0 = instance_exists(InvSwapper);
			if(l775445FB_0)
			{
				sprite_index = CharacterSwingRightInvRS;
				image_index += 0;
			}
		}
	
		instance_create_layer(x + 10, y + -30, "Instances", SwingHitboxRight);
	}

	if direction = 90
	{
		var l67BE5F0E_0 = false;
		l67BE5F0E_0 = instance_exists(RainbowSpaceTracker);
		if(l67BE5F0E_0)
		{
			var l3D2184C5_0 = false;
			l3D2184C5_0 = instance_exists(InvSwapper);
			if(!l3D2184C5_0)
			{
				sprite_index = CharacterSwingUpRS;
				image_index += 0;
			}
		
			var l2C1BA347_0 = false;
			l2C1BA347_0 = instance_exists(InvSwapper);
			if(l2C1BA347_0)
			{
				sprite_index = CharacterSwingUpInvRS;
				image_index += 0;
			}
		}
	
		var l0CC47700_0 = false;
		l0CC47700_0 = instance_exists(RainbowSpaceTracker);
		if(!l0CC47700_0)
		{
			var l16DBD2CE_0 = false;
			l16DBD2CE_0 = instance_exists(InvSwapper);
			if(!l16DBD2CE_0)
			{
				sprite_index = CharacterSwingUp;
				image_index += 0;
			}
		
			var l3A16F638_0 = false;
			l3A16F638_0 = instance_exists(InvSwapper);
			if(l3A16F638_0)
			{
				sprite_index = CharacterSwingUpInv;
				image_index += 0;
			}
		}
	
		instance_create_layer(x + -30, y + -50, "Instances", SwingHitboxUp);
	}

	if direction = 270
	{
		var l6EBB3DE3_0 = false;
		l6EBB3DE3_0 = instance_exists(RainbowSpaceTracker);
		if(l6EBB3DE3_0)
		{
			var l5F261291_0 = false;
			l5F261291_0 = instance_exists(InvSwapper);
			if(!l5F261291_0)
			{
				sprite_index = CharacterSwingDownRS;
				image_index += 0;
			}
		
			var l3ECE9D18_0 = false;
			l3ECE9D18_0 = instance_exists(InvSwapper);
			if(l3ECE9D18_0)
			{
				sprite_index = CharacterSwingDownInvRS;
				image_index += 0;
			}
		}
	
		var l528DC77D_0 = false;
		l528DC77D_0 = instance_exists(RainbowSpaceTracker);
		if(!l528DC77D_0)
		{
			var l34F975E8_0 = false;
			l34F975E8_0 = instance_exists(InvSwapper);
			if(!l34F975E8_0)
			{
				sprite_index = CharacterSwingDown;
				image_index += 0;
			}
		
			var l7E4C3BDE_0 = false;
			l7E4C3BDE_0 = instance_exists(InvSwapper);
			if(l7E4C3BDE_0)
			{
				sprite_index = CharacterSwingDownInv;
				image_index += 0;
			}
		}
	
		instance_create_layer(x + -30, y + 25, "Instances", SwingHitboxDown);
	}
}