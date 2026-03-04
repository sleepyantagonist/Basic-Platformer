if (spawn)
{
    if (keyboard_check_pressed(vk_space))
    {
		step += 1;
		if (step == 3)
		{
			step = 0;
	        spawn = false;
	        alarm[0] = game_get_speed(gamespeed_fps);
	        instance_create_layer(random(room_width), random(room_height), "Instances", oBomb);
		}
	}
}
if (keyboard_check(ord("R")))
{
	instance_destroy(oBomb);
	instance_create_layer(random(room_width), random(room_height), "Instances", oBomb);
	global.score = 0;
}