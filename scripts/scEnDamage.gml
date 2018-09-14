//scEnDamage(damage)
var damage = argument0;

hp-=damage;
damaged=true;

var dir = point_direction(x,y,other.x,other.y);
vx=lengthdir_x(3,(dir+180)%360);
vy=lengthdir_y(3,(dir+180)%360);

if(object_index!=oGhost01){
    audio_play_sound(hurtMonSound,3,false);
}
