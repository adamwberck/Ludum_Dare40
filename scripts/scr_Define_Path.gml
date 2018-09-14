///scr_Define_Path(target)
var target = argument0;
var sx = x
var sy = y
var fx = target.x
var fy = target.y

if (!mp_grid_path(global.AI_grid,path, sx,sy,fx,fy,true))
{
    //show_message("NO PATH");
    return false;
}
else
{
    path_set_kind(path,1);
    path_set_kind(path,8);
    return true;
}
