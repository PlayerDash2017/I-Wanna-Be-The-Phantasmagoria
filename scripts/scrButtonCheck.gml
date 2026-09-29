///scrButtonCheck(button,playerID)
//Checks whether a button is currently being pressed

var button = argument[0];
var playerControl = 0;
if (argument_count > 1) playerControl = argument[1];

if (global.controllerIndex[playerControl] == -1)
{
    return (keyboard_check(global.controls[button, playerControl]));
}
else
{
    var controlIndex = global.controllerIndex[playerControl];
    var axis_x = gamepad_axis_value(controlIndex, gp_axislh);
    var axis_y = gamepad_axis_value(controlIndex, gp_axislv);
    var threshold = 0.3;
    
    switch (button)
    {
        case KEY.LEFT:  return (axis_x < -threshold) || gamepad_button_check(controlIndex, global.controls[button, playerControl]);
        case KEY.RIGHT: return (axis_x > threshold) || gamepad_button_check(controlIndex, global.controls[button, playerControl]);
        case KEY.UP:    return (axis_y < -threshold) || gamepad_button_check(controlIndex, global.controls[button, playerControl]);
        case KEY.DOWN:  return (axis_y > threshold) || gamepad_button_check(controlIndex, global.controls[button, playerControl]);
    }
    
    return gamepad_button_check(controlIndex, global.controls[button, playerControl]);
}
