var player;
if (homeNearest < awayNearest) {
    player = instance_nearest(x, y, obj_homePlayer);
}
else {
    player = instance_nearest(x, y, obj_awayPlayer);
}

if (player.x < 32 || player.x > room_width - 160 - 32 || player.x < 32 || player.y > room_height - 32) turnover();

player.ballHandler = 1;
player.pick = 0;

if (player.team != global.possession) {
    global.possession = player.team;
    global.turn = 1-global.possession;
    obj_controller.shotClock = obj_controller.shotClockMax;
    
    //Change turns upon in-game turnover? Hmm...
    //with(obj_controller) next_turn();
}

global.actionClear = 1;
instance_destroy();
