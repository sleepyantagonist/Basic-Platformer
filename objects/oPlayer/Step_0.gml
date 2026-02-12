/// @desc Core Player Logic

// Get player inputss
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_space);

// Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x, y + 1, oWall)) && (key_jump)
{
	vsp = -jumpsp;
}

// Horizontal collision
if (place_meeting (x + hsp, y, oWall))
{
	while (!place_meeting (x + sign(hsp), y, oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical collision
if (place_meeting (x, y + vsp, oWall))
{
	while (!place_meeting (x, y + sign(vsp), oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;