///scrButtonCheckReleased(button,playerID)
//Checks whether a button is being released this frame

var button = argument0;
var playerControl = 0;
if (argument_count > 1) playerControl = argument[1];

    if (global.controllerIndex[playerControl] == -1)
    {
        return (keyboard_check_released(global.controls[button, playerControl]));
    }
    else
    {
        return (gamepad_button_check_released(global.controllerIndex[playerControl], global.controls[button, playerControl]));
    }
