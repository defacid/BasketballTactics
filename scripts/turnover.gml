global.possession = 1-global.possession;

with(obj_controller) {
    canTurnover = 0;
    turns -= 1;
    //Set turns and posession
    global.turn = global.possession;
    shotClock = shotClockMax;
    
    //Clear Players
    for(i=0; i<global.playerCount; i++) {
        if (player[i].team == global.turn) {
            player[i].canMove = 1;
            player[i].canUndo = 1;
            player[i].react = 0;
            player[i].pick = 0;
            player[i].pickDirection = -1;
        }
        else {
            player[i].ballHandler = 0;
            player[i].canMove = 0;
            player[i].canUndo = 0;
            player[i].react = 1;
            player[i].resetX = player[i].x;
            player[i].resetY = player[i].y;
        }
    }
    
    var offGoal = obj_homeHoop, offForwardOne = noone, offForwardTwo = noone, offGuardOne = noone, offGuardTwo = noone, offCenter = noone, defForwardOne = noone, defForwardTwo = noone, defGuardOne = noone, defGuardTwo = noone, defCenter = noone;
    if (global.possession) offGoal = obj_awayHoop;
    
    for(i=0; i < global.playerCount; i++) {
        player[i].ballHandler = 0;
        player[i].selected = 0;
        player[i].pick = 0;
        player[i].passing = 0;
        player[i].throwIn = 0;
        
        if (global.possession == player[i].team) {
            //Set Positions for offense
            switch(player[i].position) {
                case "Forward":
                    if (offForwardOne != noone) offForwardTwo = player[i];
                    else offForwardOne = player[i];
                break;
                case "Guard":
                    if (offGuardOne != noone) offGuardTwo = player[i];
                    else offGuardOne = player[i];
                break;
                case "Center":
                    offCenter = player[i];
                break;
                default:
            }
        }
        else {
            //Set Positions for defense
            switch(player[i].position) {
                case "Forward":
                    if (defForwardOne != noone) defForwardTwo = player[i];
                    else defForwardOne = player[i];
                break;
                case "Guard":
                    if (defGuardOne != noone) defGuardTwo = player[i];
                    else defGuardOne = player[i];
                break;
                case "Center":
                    defCenter = player[i];
                break;
                default:
            }
        }
    }
    
    var left, right, back;
    left = 180 + 180*global.possession;
    right = 180*global.possession;
    back = 90 + 180*global.possession;
    
    //OFFENSE
    offForwardOne.x = offGoal.x + lengthdir_x(32 * 4, left);// Catching the throw-in
    offForwardOne.y = offGoal.y + lengthdir_y(640 - 32 * 6, back);
    
    offForwardTwo.x = offGoal.x + lengthdir_x(32 * 4, left);
    offForwardTwo.y = offGoal.y + lengthdir_y(32 * 2, back);
    
    offCenter.x = offGoal.x + lengthdir_x(32 * 3, left);
    offCenter.y = offGoal.y + lengthdir_y(32 * 6, back);
    
    offGuardOne.x = offGoal.x + lengthdir_x(32 * 3, left); // Passing the throw-in
    offGuardOne.y = offGoal.y + lengthdir_y(640 - 32*2, back);
    obj_controller.selected = 1;
    offGuardOne.selected = 1;
    offGuardOne.ballHandler = 1;
    offGuardOne.throwIn = 1;
    offGuardOne.passing = 1;
    
    offGuardTwo.x = offGoal.x + lengthdir_x(32 * 3, right);
    offGuardTwo.y = offGoal.y + lengthdir_y(32 * 6, back);
    
    //DEFENSE
    defForwardOne.x = offGoal.x + lengthdir_x(32*2, right);
    defForwardOne.y = offGoal.y + lengthdir_y(32, back);
    
    defForwardTwo.x = offGoal.x + lengthdir_x(32*3, left);
    defForwardTwo.y = offGoal.y + lengthdir_y(32, back);
    
    defCenter.x = offGoal.x + lengthdir_x(32 * 2, left);
    defCenter.y = offGoal.y + lengthdir_y(32 * 5, back);
    
    defGuardOne.x = offGoal.x + lengthdir_x(32 * 2, right);
    defGuardOne.y = offGoal.y + lengthdir_y(32 * 5, back);
    
    defGuardTwo.x = offGoal.x + lengthdir_x(0, left);
    defGuardTwo.y = offGoal.y + lengthdir_y(32 * 6, back);
    
    for(i=0; i < global.playerCount; i++) {
        player[i].originX = player[i].x;
        player[i].originY = player[i].y;
        player[i].resetX = player[i].x;
        player[i].resetY = player[i].y;
    }
    
}

global.actionClear = 0;
