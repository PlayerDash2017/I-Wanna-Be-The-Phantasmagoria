///scrButtonCheckPressed(button,playerID)
//Checks whether a button is being pressed this frame

var button = argument[0];
var playerControl = 0;
if (argument_count > 1) playerControl = argument[1];


if (global.controllerIndex[playerControl] == -1 || !gamepad_is_connected(global.controllerIndex[playerControl]))
{
    return (keyboard_check_pressed(global.controls[button, playerControl]));
}
else
{
    var controlIndex = global.controllerIndex[playerControl];
    var prev_x = global.stick_prev_x;
    var prev_y = global.stick_prev_y;
    var axis_x = gamepad_axis_value(controlIndex, gp_axislh);
    var axis_y = gamepad_axis_value(controlIndex, gp_axislv);
    var threshold = 0.3;
    
    switch (button)
    {
        case KEY.LEFT:  return (prev_x > -threshold) && (axis_x < -threshold) || gamepad_button_check_pressed(controlIndex, global.controls[button, playerControl]);
        case KEY.RIGHT: return (prev_x < threshold) && (axis_x > threshold) || gamepad_button_check_pressed(controlIndex, global.controls[button, playerControl]);
        case KEY.UP:    return (prev_y > -threshold) && (axis_y < -threshold) || gamepad_button_check_pressed(controlIndex, global.controls[button, playerControl]);
        case KEY.DOWN:  return (prev_y < threshold) && (axis_y > threshold) || gamepad_button_check_pressed(controlIndex, global.controls[button, playerControl]);
    }
    
    return gamepad_button_check_pressed(controlIndex, global.controls[button, playerControl]);
    //return (gamepad_button_check_pressed(global.controllerIndex[playerControl], global.controls[button, playerControl]));
}
