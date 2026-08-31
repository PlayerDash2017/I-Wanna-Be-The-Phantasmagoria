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
    return (gamepad_button_check(global.controllerIndex[playerControl], global.controls[button, playerControl]));
}
