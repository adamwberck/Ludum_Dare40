///scInstanceNearestNotmarked(x, y)
{
var xx, yy, nearest;
xx = argument[0];
yy = argument[1];
nearest = noone;
var dist = -1;
for (var i=0; i<instance_number(oNode); i+=1) {
    var o, d;
    o = instance_find(oNode, i);
    if (o != id&&!o.marked) {
        d = point_distance(xx, yy, o.x, o.y);
        if (nearest == noone || d < dist) {
            nearest = o; dist = d; 
        }
        if(d<=16){
            return nearest;
        }
    }
}
return nearest;
}
