// ONLY TO BE USED BY obj_controller !!

for(i=0; i<global.playerCount; i++) {
    if (player[i].team == global.turn) {
        player[i].x = player[i].resetX;
        player[i].y = player[i].resetY;
        player[i].originX = player[i].resetX;
        player[i].originY = player[i].resetY;
        player[i].canMove = 1;
    }
}
