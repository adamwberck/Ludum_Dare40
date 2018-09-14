///pickup(pick)

var tempPickup=argument0;
pickup=object_get_name(tempPickup.object_index);


with(tempPickup) instance_destroy();

sprite_index=sPlayer;
