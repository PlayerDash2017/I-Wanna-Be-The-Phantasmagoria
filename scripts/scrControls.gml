///scrControls(type)
//This script contains every hardcoded block of code you need to update in order to add a new configurable control key
var type = argument0;

enum KEY
{
    LEFT,
    RIGHT,
    UP,
    DOWN,
    JUMP,
    SHOOT,
    RESTART,
    SKIP,
    SUICIDE,
    PAUSE,
    
    //Anything above this line is rebindable, anything below is not
    NUMBER,
    
    ALIGN_LEFT,
    ALIGN_RIGHT,
    MENU_LEFT,
    MENU_RIGHT,
    MENU_UP,
    MENU_DOWN,
    MENU_ACCEPT,
    MENU_BACK,
    MENU_OPTIONS
}

switch(type)
{
    case "loadControlConfig":
        //Gameplay
        global.controllerIndex[0] =                ini_read_real("Player_1",  "Index",    -1); //-1 means no controller
        global.controllerIndex[1] =                ini_read_real("Player_2",  "Index",    0); //-1 means no controller
        for (var i = 0; i <= 1; i ++)
        {
            global.controls[KEY.LEFT, i] =          ini_read_real("Player_"+string(i+1),  "Left",     scrTernary(i==0,vk_left,gp_padl));
            global.controls[KEY.RIGHT, i] =         ini_read_real("Player_"+string(i+1),  "Right",    scrTernary(i==0,vk_right,gp_padr));
            global.controls[KEY.UP, i] =            ini_read_real("Player_"+string(i+1),  "Up",       scrTernary(i==0,vk_up,gp_padu));
            global.controls[KEY.DOWN, i] =          ini_read_real("Player_"+string(i+1),  "Down",     scrTernary(i==0,vk_down,gp_padd));
            global.controls[KEY.JUMP, i] =          ini_read_real("Player_"+string(i+1),  "Jump",     scrTernary(i==0,vk_shift,gp_face1));
            global.controls[KEY.SHOOT, i] =         ini_read_real("Player_"+string(i+1),  "Shoot",    scrTernary(i==0,ord('Z'),gp_face3));
            global.controls[KEY.RESTART, i] =       ini_read_real("Player_"+string(i+1),  "Restart",  scrTernary(i==0,ord('R'),gp_face4));
            global.controls[KEY.SKIP, i] =          ini_read_real("Player_"+string(i+1),  "Skip",     scrTernary(i==0,ord('S'),gp_face2));
            global.controls[KEY.SUICIDE, i] =       ini_read_real("Player_"+string(i+1),  "Suicide",  scrTernary(i==0,ord('Q'),gp_select));
            global.controls[KEY.PAUSE, i] =         ini_read_real("Player_"+string(i+1),  "Pause",    scrTernary(i==0,ord('P'),gp_start));
        }
        
        //Menu
        global.controls[KEY.ALIGN_LEFT, 0] =    ord('A');
        global.controls[KEY.ALIGN_RIGHT, 0] =   ord('D');
        global.controls[KEY.MENU_LEFT, 0] =     vk_left;
        global.controls[KEY.MENU_RIGHT, 0] =    vk_right;
        global.controls[KEY.MENU_UP, 0] =       vk_up;
        global.controls[KEY.MENU_DOWN, 0] =     vk_down;
        global.controls[KEY.MENU_ACCEPT, 0] =   vk_shift;
        global.controls[KEY.MENU_BACK, 0] =     ord('Z');
        global.controls[KEY.MENU_OPTIONS, 0] =  vk_enter;

        global.controls[KEY.ALIGN_LEFT, 1] =    gp_shoulderl;
        global.controls[KEY.ALIGN_RIGHT, 1] =   gp_shoulderr;
        global.controls[KEY.ALIGN_LEFT, 1] =    ord('A');
        global.controls[KEY.ALIGN_RIGHT, 1] =   ord('D');
        global.controls[KEY.MENU_LEFT, 1] =     gp_padl;
        global.controls[KEY.MENU_RIGHT, 1] =    gp_padr;
        global.controls[KEY.MENU_UP, 1] =       gp_padu;
        global.controls[KEY.MENU_DOWN, 1] =     gp_padd;
        global.controls[KEY.MENU_ACCEPT, 1] =   gp_face1;
        global.controls[KEY.MENU_BACK, 1] =     gp_face2;
        global.controls[KEY.MENU_OPTIONS, 1] =  gp_select;
    break;

    case "saveControlConfig":
        for (var i = 0; i <= 1; i ++)
        {
            ini_write_real("Player_"+string(i+1),  "Left",     global.controls[KEY.LEFT, i]);
            ini_write_real("Player_"+string(i+1),  "Right",    global.controls[KEY.RIGHT, i]);
            ini_write_real("Player_"+string(i+1),  "Up",       global.controls[KEY.UP, i]);
            ini_write_real("Player_"+string(i+1),  "Down",     global.controls[KEY.DOWN, i]);
            ini_write_real("Player_"+string(i+1),  "Jump",     global.controls[KEY.JUMP, i]);
            ini_write_real("Player_"+string(i+1),  "Shoot",    global.controls[KEY.SHOOT, i]);
            ini_write_real("Player_"+string(i+1),  "Restart",  global.controls[KEY.RESTART, i]);
            ini_write_real("Player_"+string(i+1),  "Skip",     global.controls[KEY.SKIP, i]);
            ini_write_real("Player_"+string(i+1),  "Suicide",  global.controls[KEY.SUICIDE, i]);
            ini_write_real("Player_"+string(i+1),  "Pause",    global.controls[KEY.PAUSE, i]);
        }
    break;

    case "getControlNameArray":
        var buttonName;
        buttonName[0] = "Controller Index";
        buttonName[1] = "Player";
        buttonName[2] = "Left Button";
        buttonName[3] = "Right Button";
        buttonName[4] = "Up Button";
        buttonName[5] = "Down Button";
        buttonName[6] = "Jump Button";
        buttonName[7] = "Shoot Button";
        buttonName[8] = "Restart Button";
        buttonName[9] = "Skip Button";
        buttonName[10] = "Suicide Button";
        buttonName[11] = "Pause Button";
        return buttonName;
    
    case "setControlDefault":
        global.controls[KEY.LEFT, 0] =    vk_left;
        global.controls[KEY.RIGHT, 0] =   vk_right;
        global.controls[KEY.UP, 0] =      vk_up;
        global.controls[KEY.DOWN, 0] =    vk_down;
        global.controls[KEY.JUMP, 0] =    vk_shift;
        global.controls[KEY.SHOOT, 0] =   ord('Z');
        global.controls[KEY.RESTART, 0] = ord('R');
        global.controls[KEY.SKIP, 0] =    ord('S');
        global.controls[KEY.SUICIDE, 0] = ord('Q');
        global.controls[KEY.PAUSE, 0] =   ord('P');

        global.controls[KEY.LEFT, 1] =    gp_padl;
        global.controls[KEY.RIGHT, 1] =   gp_padr;
        global.controls[KEY.UP, 1] =      gp_padu;
        global.controls[KEY.DOWN, 1] =    gp_padd;
        global.controls[KEY.JUMP, 1] =    gp_face1;
        global.controls[KEY.SHOOT, 1] =   gp_face3;
        global.controls[KEY.RESTART, 1] = gp_face4;
        global.controls[KEY.SKIP, 1] =    gp_face2;
        global.controls[KEY.SUICIDE, 1] = gp_select;
        global.controls[KEY.PAUSE, 1] =   gp_start;
        break;
    
    case "setMenuControl":
        
        for (var i = 0; i <= 1; i ++)
        {
            var controlIndex = (global.controllerIndex[i] == -1 || !gamepad_is_connected(global.controllerIndex[i]));
            global.controls[KEY.ALIGN_LEFT, i] =    scrTernary(controlIndex == 1,ord('A'),gp_shoulderl);
            global.controls[KEY.ALIGN_RIGHT, i] =   scrTernary(controlIndex == 1,ord('D'),gp_shoulderr);
            global.controls[KEY.MENU_LEFT, i] =     scrTernary(controlIndex == 1,vk_left,gp_padl);
            global.controls[KEY.MENU_RIGHT, i] =    scrTernary(controlIndex == 1,vk_right,gp_padr);
            global.controls[KEY.MENU_UP, i] =       scrTernary(controlIndex == 1,vk_up,gp_padu);
            global.controls[KEY.MENU_DOWN, i] =     scrTernary(controlIndex == 1,vk_down,gp_padd);
            global.controls[KEY.MENU_ACCEPT, i] =   scrTernary(controlIndex == 1,vk_shift,gp_face1);
            global.controls[KEY.MENU_BACK, i] =     scrTernary(controlIndex == 1,ord('Z'),gp_face2);
            global.controls[KEY.MENU_OPTIONS, i] =  scrTernary(controlIndex == 1,vk_enter,gp_select);
        }
    break;
}

/*switch(type)
{
    case "loadKeyboardConfig":
        global.controls[KEY.LEFT, 0] =          ini_read_real("Keyboard",  "Left",     vk_left);
        global.controls[KEY.RIGHT, 0] =         ini_read_real("Keyboard",  "Right",    vk_right);
        global.controls[KEY.UP, 0] =            ini_read_real("Keyboard",  "Up",       vk_up);
        global.controls[KEY.DOWN, 0] =          ini_read_real("Keyboard",  "Down",     vk_down);
        global.controls[KEY.JUMP, 0] =          ini_read_real("Keyboard",  "Jump",     vk_shift);
        global.controls[KEY.SHOOT, 0] =         ini_read_real("Keyboard",  "Shoot",    ord('Z'));
        global.controls[KEY.RESTART, 0] =       ini_read_real("Keyboard",  "Restart",  ord('R'));
        global.controls[KEY.SKIP, 0] =          ini_read_real("Keyboard",  "Skip",     ord('S'));
        global.controls[KEY.SUICIDE, 0] =       ini_read_real("Keyboard",  "Suicide",  ord('Q'));
        global.controls[KEY.PAUSE, 0] =         ini_read_real("Keyboard",  "Pause",    ord('P'));
        global.controls[KEY.ALIGN_LEFT, 0] =    ord('A');
        global.controls[KEY.ALIGN_RIGHT, 0] =   ord('D');
        global.controls[KEY.MENU_LEFT, 0] =     vk_left;
        global.controls[KEY.MENU_RIGHT, 0] =    vk_right;
        global.controls[KEY.MENU_UP, 0] =       vk_up;
        global.controls[KEY.MENU_DOWN, 0] =     vk_down;
        global.controls[KEY.MENU_ACCEPT, 0] =   vk_shift;
        global.controls[KEY.MENU_BACK, 0] =     ord('Z');
        global.controls[KEY.MENU_OPTIONS, 0] =  vk_enter;
        break; 
        
    case "loadControllerConfig":
        global.controllerIndex =                ini_read_real("Controller",  "Index",    -1); //-1 means no controller
        global.controls[KEY.LEFT, 1] =          ini_read_real("Controller",  "Left",     gp_padl);
        global.controls[KEY.RIGHT, 1] =         ini_read_real("Controller",  "Right",    gp_padr);
        global.controls[KEY.UP, 1] =            ini_read_real("Controller",  "Up",       gp_padu);
        global.controls[KEY.DOWN, 1] =          ini_read_real("Controller",  "Down",     gp_padd);
        global.controls[KEY.JUMP, 1] =          ini_read_real("Controller",  "Jump",     gp_face1);
        global.controls[KEY.SHOOT, 1] =         ini_read_real("Controller",  "Shoot",    gp_face3);
        global.controls[KEY.RESTART, 1] =       ini_read_real("Controller",  "Restart",  gp_face4);
        global.controls[KEY.SKIP, 1] =          ini_read_real("Controller",  "Skip",     gp_face2);
        global.controls[KEY.SUICIDE, 1] =       ini_read_real("Controller",  "Suicide",  gp_select);
        global.controls[KEY.PAUSE, 1] =         ini_read_real("Controller",  "Pause",    gp_start);
        global.controls[KEY.ALIGN_LEFT, 1] =    gp_shoulderl;
        global.controls[KEY.ALIGN_RIGHT, 1] =   gp_shoulderr;
        global.controls[KEY.ALIGN_LEFT, 1] =    ord('A');
        global.controls[KEY.ALIGN_RIGHT, 1] =   ord('D');
        global.controls[KEY.MENU_LEFT, 1] =     gp_padl;
        global.controls[KEY.MENU_RIGHT, 1] =    gp_padr;
        global.controls[KEY.MENU_UP, 1] =       gp_padu;
        global.controls[KEY.MENU_DOWN, 1] =     gp_padd;
        global.controls[KEY.MENU_ACCEPT, 1] =   gp_face1;
        global.controls[KEY.MENU_BACK, 1] =     gp_face2;
        global.controls[KEY.MENU_OPTIONS, 1] =  gp_select;
        break;
        
        
    case "saveKeyboardConfig":
        ini_write_real("Keyboard",  "Left",     global.controls[KEY.LEFT, 0]);
        ini_write_real("Keyboard",  "Right",    global.controls[KEY.RIGHT, 0]);
        ini_write_real("Keyboard",  "Up",       global.controls[KEY.UP, 0]);
        ini_write_real("Keyboard",  "Down",     global.controls[KEY.DOWN, 0]);
        ini_write_real("Keyboard",  "Jump",     global.controls[KEY.JUMP, 0]);
        ini_write_real("Keyboard",  "Shoot",    global.controls[KEY.SHOOT, 0]);
        ini_write_real("Keyboard",  "Restart",  global.controls[KEY.RESTART, 0]);
        ini_write_real("Keyboard",  "Skip",     global.controls[KEY.SKIP, 0]);
        ini_write_real("Keyboard",  "Suicide",  global.controls[KEY.SUICIDE, 0]);
        ini_write_real("Keyboard",  "Pause",    global.controls[KEY.PAUSE, 0]);
        break;
        
    case "saveControllerConfig":
        ini_write_real("Controller",  "Left",     global.controls[KEY.LEFT, 1]);
        ini_write_real("Controller",  "Right",    global.controls[KEY.RIGHT, 1]);
        ini_write_real("Controller",  "Up",       global.controls[KEY.UP, 1]);
        ini_write_real("Controller",  "Down",     global.controls[KEY.DOWN, 1]);
        ini_write_real("Controller",  "Jump",     global.controls[KEY.JUMP, 1]);
        ini_write_real("Controller",  "Shoot",    global.controls[KEY.SHOOT, 1]);
        ini_write_real("Controller",  "Restart",  global.controls[KEY.RESTART, 1]);
        ini_write_real("Controller",  "Skip",     global.controls[KEY.SKIP, 1]);
        ini_write_real("Controller",  "Suicide",  global.controls[KEY.SUICIDE, 1]);
        ini_write_real("Controller",  "Pause",    global.controls[KEY.PAUSE, 1]);
        break;
              
        
    case "getKeyboardNameArray":
        var buttonName;
        buttonName[0] = "Left Button";
        buttonName[1] = "Right Button";
        buttonName[2] = "Up Button";
        buttonName[3] = "Down Button";
        buttonName[4] = "Jump Button";
        buttonName[5] = "Shoot Button";
        buttonName[6] = "Restart Button";
        buttonName[7] = "Skip Button";
        buttonName[8] = "Suicide Button";
        buttonName[9] = "Pause Button";
        return buttonName;
        
    case "getControllerNameArray":
        var buttonName;
        buttonName[0] = "Controller Index";
        buttonName[1] = "Left Button";
        buttonName[2] = "Right Button";
        buttonName[3] = "Up Button";
        buttonName[4] = "Down Button";
        buttonName[5] = "Jump Button";
        buttonName[6] = "Shoot Button";
        buttonName[7] = "Restart Button";
        buttonName[8] = "Skip Button";
        buttonName[9] = "Suicide Button";
        buttonName[10] = "Pause Button";
        return buttonName;
        
        
    case "setKeyboardDefault":
        global.controls[KEY.LEFT, 0] =    vk_left;
        global.controls[KEY.RIGHT, 0] =   vk_right;
        global.controls[KEY.UP, 0] =      vk_up;
        global.controls[KEY.DOWN, 0] =    vk_down;
        global.controls[KEY.JUMP, 0] =    vk_shift;
        global.controls[KEY.SHOOT, 0] =   ord('Z');
        global.controls[KEY.RESTART, 0] = ord('R');
        global.controls[KEY.SKIP, 0] =    ord('S');
        global.controls[KEY.SUICIDE, 0] = ord('Q');
        global.controls[KEY.PAUSE, 0] =   ord('P');
        break;
        
    case "setControllerDefault":
        global.controls[KEY.LEFT, 1] =    gp_padl;
        global.controls[KEY.RIGHT, 1] =   gp_padr;
        global.controls[KEY.UP, 1] =      gp_padu;
        global.controls[KEY.DOWN, 1] =    gp_padd;
        global.controls[KEY.JUMP, 1] =    gp_face1;
        global.controls[KEY.SHOOT, 1] =   gp_face3;
        global.controls[KEY.RESTART, 1] = gp_face4;
        global.controls[KEY.SKIP, 1] =    gp_face2;
        global.controls[KEY.SUICIDE, 1] = gp_select;
        global.controls[KEY.PAUSE, 1] =   gp_start;
        break;
}*/
