///scPlayerInRoom()
var x1 = floor(x / view_wview) * view_wview+16
var y1 = floor(y / view_hview) * view_hview+16
var x2 = x1+view_wview-32;
var y2 = y1+view_hview-32;

return point_in_rectangle(oPlayer.x, oPlayer.y, x1, y1, 
    x2, y2);
