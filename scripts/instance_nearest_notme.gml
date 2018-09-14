///instance_nearest_notme(x, y, obj)
{
var xx, yy, obj, nearest;
xx = argument[0];
yy = argument[1];
obj = argument[2];
nearest = noone;
dist = -1;
for (ii=0; ii<instance_number(obj); ii+=1) {
    var o, d;
    o = instance_find(obj, ii);
    d = point_distance(xx, yy, o.x, o.y);
    if (o != id) {
    if (nearest == noone || d < dist) {
     nearest = o; dist = d; }
      }
    }
return nearest;
}
