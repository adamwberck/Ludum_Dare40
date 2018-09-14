///scCollideLines(target)
var target = argument0;

return
    !collision_line(x-8,y,target.x-8,target.y,oParSolid,false,false) &&
    !collision_line(x+8,y,target.x+8,target.y,oParSolid,false,false) &&
    !collision_line(x,y-8,target.x,target.y-8,oParSolid,false,false) &&
    !collision_line(x,y+8,target.x,target.y+8,oParSolid,false,false) ;/*&&
    distance_to_point(target.x,target.y)>16;
