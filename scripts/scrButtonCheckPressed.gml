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
    return (gamepad_button_check_pressed(global.controllerIndex[playerControl], global.controls[button, playerControl]));
}
