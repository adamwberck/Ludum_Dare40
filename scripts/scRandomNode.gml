///scRandomNode()
var x1 = floor(x / view_wview) * view_wview
var y1 = floor(y / view_hview) * view_hview
var x2 = x1+view_wview;
var y2 = y1+view_hview;

var node=noone;

x1=clamp(x1,x-40,x+40);
x2=clamp(x2,x-40,x+40);
y1=clamp(y1,y-40,y+40);
y2=clamp(y2,y-40,y+40);
while(!instance_exists(node)){
    var xx=random_range(x1,x2);
    var yy=random_range(y1,y2);
    node = instance_create(xx,yy,oNode);
    with(node){
        if(!place_meeting(x,y,oParSolid)){
            return node;
        }else{
            instance_destroy();
        }
    }
}
