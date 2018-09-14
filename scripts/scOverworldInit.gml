///scOverworldInit();
var owCap = 20;
//oPlayer.overworldX=5;
//oPlayer.overworldY=5;
for(var i=0;i<owCap;i++){
    for(var j=0;j<owCap;j++){
        global.overworld[i,j] = -1;
    }
}




global.overworld[5,5] = rmAmbushTest;
global.overworld[5,4] = rmNorth;
global.overworld[6,5] = rmEast;
global.overworld[5,6] = rmSouth;
global.overworld[4,5] = rmWest;
