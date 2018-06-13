// ONLY TO BE USED BY obj_controller !!

global.turn = 1 - global.turn;
global.actionClear = 1;

if (global.turn == global.firstTurn) {
    var _ballHandler = global.ballHandler;
    if (_ballHandler.throwIn & !canTurnover) {
        canTurnover = 1;
        alarm[1] = room_speed*2;
    }
    else {
        turns--;
        shotClock--;
    }
}

for(i=0; i<global.playerCount; i++) {
    if (player[i].team == global.turn) {
        player[i].canMove = 1;
        player[i].canUndo = 1;
        player[i].react = 0;
        player[i].pick = 0;
        player[i].pickDirection = -1;
    }
    else {
        player[i].canMove = 0;
        player[i].canUndo = 0;
        player[i].react = 1;
        player[i].selected = 0;
        player[i].resetX = player[i].x;
        player[i].resetY = player[i].y;
    }
}
