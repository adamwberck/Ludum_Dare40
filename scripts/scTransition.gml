///scTransition(vert=0/horz=1,direction=-1/1,nextroom)
var orientation=argument0;
var dir=argument1;
var nextroom=argument2;
if(orientation=0){
    room_instance_clear(rmVertTransition);
    var ypos = room_height*abs(max(dir-1,-1));
    var limit = instance_number(all);
    for (i = 0; i < instance_number(all); i++){
        var obj = instance_find(all,i);
        if(instance_exists(obj)){
            room_instance_add(rmVertTransition,obj.x,obj.y+ypos,obj.object_index);
        }
    }
    room_goto(nextroom);
    var ypos = room_height*abs(min(dir+1,1));
    for (i = 0; i < instance_number(all); i++){
        var obj = instance_find(all,i);
        if(instance_exists(obj)){
            room_instance_add(rmVertTransition,obj.x,obj.y+ypos,obj.object_index);
        }
    }
    room_goto(rmVertTransition);
}

