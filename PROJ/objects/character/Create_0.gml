var l1AED2369_0 = false;
l1AED2369_0 = instance_exists(CharVarKeep1);
if(!l1AED2369_0)
{
	var l43D4D7E3_0 = false;
	l43D4D7E3_0 = instance_exists(CharVarKeep2);
	if(!l43D4D7E3_0)
	{
		var l77C2C2D4_0 = false;
		l77C2C2D4_0 = instance_exists(CharVarKeep3);
		if(!l77C2C2D4_0)
		{
			instance_create_layer(0, 0, "Instances", CharVarKeep1);
		}
	}
}

alarm_set(2, 1);

alarm_set(1, 1);

joy_h_p = 0
joy_v_p = 0