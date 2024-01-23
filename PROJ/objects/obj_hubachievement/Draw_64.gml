draw_set_halign(fa_center)
draw_set_alpha(fade)
if isunlocked
{
	draw_text(480,400,"--" + ach_name + "--")
	draw_text(480,450,ach_desc)
}
else
{
	draw_text(480,400,"???")
	draw_text(480,450,"???")
}
draw_set_alpha(1)