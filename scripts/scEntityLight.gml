///scEntityLight(brightness,entity);
var brightness = argument0;
var entity = argument1;

var dis = distance_to_object(entity);


var tempIllum = 1-dis/brightness;
with(entity){
    illumination = tempIllum;
    illuminated = true;
    }
