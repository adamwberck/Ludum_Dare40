///Hit check
var enemy = 0;
var above = place_meeting(x,y+1,oParEnemy);
var falling = vy>0;
var slidehit=false;
var enemy = instance_place(x,y+1,oParEnemy)

if(place_meeting(x+q,y+r,oParEnemy)){
    var enemy = instance_place(x+q,y+r,oParEnemy);
    var plHurt = oPlayer.hurt;
    if(!plHurt && enemy.dangerous){
        scPlDamage(1);
        var dir = point_direction(x,y,enemy.x,enemy.y);
        vx=lengthdir_x(3,(dir+180)%360);
        vy=lengthdir_y(3,(dir+180)%360);
    }
}
    
return false;
