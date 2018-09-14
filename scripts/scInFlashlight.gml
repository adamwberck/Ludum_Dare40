///scInFlashlight(brightness,entity,click);
var brightness = argument0;
var entity = argument1;
var click  = argument2; 

var dis = distance_to_object(entity);


var tempIllum = 1-((dis/brightness));
var noEnemy = true;
with(entity){
    illumination = tempIllum;
    illuminated = true;
    if(click==2 && object_is_ancestor(object_index,oParEnemy)){
        audio_stop_sound(buzz1);
        audio_stop_sound(buzz2);
        if(!audio_is_playing(buzz3)){
            audio_play_sound(buzz3,34,true);
        }
        scEnDamage(((1-dis/200))+1);
    }
}
