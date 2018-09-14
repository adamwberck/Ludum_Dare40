///scFindTarget()
scClearMarks();

if(scCollideLines(oPlayer)){
    return instance_nearest(x,y,oPlayer);
}else{
    var node = instance_nearest(oPlayer.x,oPlayer.y,oNode);
    node.marked=true;
    if(scCollideLines(node)){
        return node;
    }else{
        var node = scInstanceNearestNotmarked(node.x,node.y);
        if(instance_exists(node)){
            if(scCollideLines(node)){
                return node;
            }
            node.marked=true;
        }
    }
}
