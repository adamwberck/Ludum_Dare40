///scMoveRoom(x,y)
/*
var vX=argument0;
var vY=argument1;

var rm = global.overworld[oPlayerStats.overworldX+vX,oPlayerStats.overworldY+vY];

var xpos =min(max(x,10,),room_width-10);
var ypos =min(max(y,10),room_height-10);

if(rm!=-1){
    //room_goto(rm);
    oPlayerStats.overworldX+=vX;
    oPlayerStats.overworldY+=vY;
}
if(vY==0){
    scTransition(1,vX,rm);
}else{
    scTransition(0,vY,rm);
}

/*
if(vX==1) {xpos=10}
if(vX==-1){xpos=room_width-10}
if(vY==1) {ypos=10}
if(vY==-1){ypos=room_height-10}


oPlayerStats.xpos = xpos;
oPlayerStats.ypos = ypos;
