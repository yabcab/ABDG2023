if !debug
	exit;

draw_text(10,10,"Use shoulder buttons to cycle pages. \nPAGE: " + debug_ret_page_name(page))

switch page
{
	case 0:
	{
		var buildtype
		if os_type = os_windows
			buildtype = "Windows x64"
		if os_type = os_macosx
			buildtype = "MacOS x64"
		if os_type = os_uwp
			buildtype = "Univ. Windows Program x64"
		
		draw_text(10,100,"buildType: " + buildtype + "\nframeRate: " + string(fps) + "\nframeRateReal: " + string(fps_real) + "\ncurrentRoom: " + room_get_name(room))
	}
	break;
	
	case 1:
	{
		var playerexists = instance_exists(obj_player)
		if playerexists
		{
			var px = string(obj_player.x)
			var py = string(obj_player.y)
			var ps = string(obj_player.state)
			var pt = string(obj_player.talking)
		}
		
		if playerexists
			draw_text(10,100,"playerX: " + px + "\nplayerY: " + py + "\nplayerState: " + ps + "\nplayerTalkToNPC: " + pt)
		else
			draw_text(10,100,"No player instance active.")
	}
	break;
	
	case 2:
	{
		var sh = colorblind_shader
		if sh != noone
			sh = shader_get_name(sh)
		else sh = "none"
		
		draw_text(10,100,"globalNPCDyslexia: " + string(global_npc_dyslexia) + "\ncolorBlindShader: " + sh + "\nfuckedUpMode: " + string(fucked_up_mode))
	}
	break;
}