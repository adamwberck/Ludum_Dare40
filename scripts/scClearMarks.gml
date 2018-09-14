///scClearMarks()
for(var i=0;i<instance_number(oNode);i++){
    var node = instance_find(oNode,i);
    node.marked=false;
}
