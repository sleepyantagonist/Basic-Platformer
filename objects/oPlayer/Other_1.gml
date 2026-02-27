/// @description trigger room restart
if (bbox_top > room_height)
{
	instance_destroy();
	oControl.alarm[0] = room_speed / 7;
}