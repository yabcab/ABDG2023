function Scr_CharacterMoveLeft() 
{
	var l6DE0D7E6_0 = false;
	l6DE0D7E6_0 = instance_exists(CharVarKeep1);
	if(l6DE0D7E6_0)
	{
		var l77F49FDF_0 = false;
		l77F49FDF_0 = instance_exists(BoostTracker);
		if(!l77F49FDF_0)
		{
			speed = 3;
		
			var l659C3E55_0 = false;
			l659C3E55_0 = instance_exists(InvSwapper);
			if(l659C3E55_0)
			{
				var l1843E621_0 = false;
				l1843E621_0 = instance_exists(RainbowSpaceTracker);
				if(!l1843E621_0)
				{
					sprite_index = CharacterWalkLeftInv;
					image_index += 0;
				}
			
				var l68010860_0 = false;
				l68010860_0 = instance_exists(RainbowSpaceTracker);
				if(l68010860_0)
				{
					sprite_index = CharacterWalkLeftInvRS;
					image_index += 0;
				}
			}
		
			var l3B606CA5_0 = false;
			l3B606CA5_0 = instance_exists(InvSwapper);
			if(!l3B606CA5_0)
			{
				var l0E8CBF4D_0 = false;
				l0E8CBF4D_0 = instance_exists(RainbowSpaceTracker);
				if(!l0E8CBF4D_0)
				{
					sprite_index = CharacterWalkLeft;
					image_index += 0;
				}
			
				var l26B0DFBA_0 = false;
				l26B0DFBA_0 = instance_exists(RainbowSpaceTracker);
				if(l26B0DFBA_0)
				{
					sprite_index = CharacterWalkLeftRS;
					image_index += 0;
				}
			}
		}
	
		var l08C7B7FD_0 = false;
		l08C7B7FD_0 = instance_exists(BoostTracker);
		if(l08C7B7FD_0)
		{
			speed = 5;
		
			sprite_index = CharacterWalkLeftBoost;
			image_index += 0;
		}
	}

	var l4E2F0182_0 = false;
	l4E2F0182_0 = instance_exists(CharVarKeep2);
	if(l4E2F0182_0)
	{
		speed = 3;
	
		var l68732581_0 = false;
		l68732581_0 = instance_exists(BoostTracker);
		if(!l68732581_0)
		{
			var l1345CBCB_0 = false;
			l1345CBCB_0 = instance_exists(InvSwapper);
			if(l1345CBCB_0)
			{
				var l718ADF7F_0 = false;
				l718ADF7F_0 = instance_exists(RainbowSpaceTracker);
				if(!l718ADF7F_0)
				{
					sprite_index = CharacterAvoWalkLeftInv;
					image_index += 0;
				}
			
				var l3114FC19_0 = false;
				l3114FC19_0 = instance_exists(RainbowSpaceTracker);
				if(l3114FC19_0)
				{
					sprite_index = CharacterAvoWalkLeftRSInv;
					image_index += 0;
				}
			}
		
			var l7B9AB818_0 = false;
			l7B9AB818_0 = instance_exists(InvSwapper);
			if(!l7B9AB818_0)
			{
				var l431A57F9_0 = false;
				l431A57F9_0 = instance_exists(RainbowSpaceTracker);
				if(!l431A57F9_0)
				{
					sprite_index = CharacterAvoWalkLeft;
					image_index += 0;
				}
			
				var l453C0746_0 = false;
				l453C0746_0 = instance_exists(RainbowSpaceTracker);
				if(l453C0746_0)
				{
					sprite_index = CharacterAvoWalkLeftRS;
					image_index += 0;
				}
			}
		}
	
		var l51EFDD0D_0 = false;
		l51EFDD0D_0 = instance_exists(BoostTracker);
		if(l51EFDD0D_0)
		{
			speed = 5;
		
			var l09654E57_0 = false;
			l09654E57_0 = instance_exists(InvSwapper);
			if(!l09654E57_0)
			{
				var l1E14AA80_0 = false;
				l1E14AA80_0 = instance_exists(RainbowSpaceTracker);
				if(!l1E14AA80_0)
				{
					sprite_index = CharacterAvoWalkLeftBoost;
					image_index += 0;
				}
			}
		}
	}

	var l7A7939FD_0 = false;
	l7A7939FD_0 = instance_exists(CharVarKeep3);
	if(l7A7939FD_0)
	{
		var l15CF2C35_0 = false;
		l15CF2C35_0 = instance_exists(BoostTracker);
		if(!l15CF2C35_0)
		{
			var l03988303_0 = false;
			l03988303_0 = instance_exists(InvSwapper);
			if(l03988303_0)
			{
				var l554E9B4C_0 = false;
				l554E9B4C_0 = instance_exists(RainbowSpaceTracker);
				if(!l554E9B4C_0)
				{
					sprite_index = CharacterSpingeWalkLeftInv;
					image_index += 0;
				}
			
				var l056685B7_0 = false;
				l056685B7_0 = instance_exists(RainbowSpaceTracker);
				if(l056685B7_0)
				{
					sprite_index = CharacterAvoWalkLeftRSInv;
					image_index += 0;
				}
			}
		
			var l004F56BC_0 = false;
			l004F56BC_0 = instance_exists(InvSwapper);
			if(!l004F56BC_0)
			{
				var l3E90E2B5_0 = false;
				l3E90E2B5_0 = instance_exists(RainbowSpaceTracker);
				if(!l3E90E2B5_0)
				{
					sprite_index = CharacterSpingeWalkLeft;
					image_index += 0;
				}
			
				var l6E595136_0 = false;
				l6E595136_0 = instance_exists(RainbowSpaceTracker);
				if(l6E595136_0)
				{
					sprite_index = CharacterSpingeWalkLeftRS;
					image_index += 0;
				}
			}
		
			var l2F45D680_0 = false;
			l2F45D680_0 = instance_exists(SpingeAttack);
			if(!l2F45D680_0)
			{
				speed = 3;
			}
		}
	
		var l7321E890_0 = false;
		l7321E890_0 = instance_exists(BoostTracker);
		if(l7321E890_0)
		{
			var l0F784197_0 = false;
			l0F784197_0 = instance_exists(InvSwapper);
			if(!l0F784197_0)
			{
				var l13B76585_0 = false;
				l13B76585_0 = instance_exists(RainbowSpaceTracker);
				if(!l13B76585_0)
				{
					sprite_index = CharacterSpingeWalkLeftBoost;
					image_index += 0;
				}
			}
		
			speed = 5;
		}
	}

	direction = 180;
}