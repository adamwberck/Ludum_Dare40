/// Movement
var prevAction = action;


var oldFacing  = facing;
var oldFacingY = facingY;
// Input //////////////////////////////////////////////////////////////////////

var kLeft, kRight, kUp, kDown, kJump, kJumpRelease,kYtest;

kLeft          = keyboard_check(vk_left)           || gamepad_axis_value(0, gp_axislh) < -0.40 || keyboard_check(ord("A"));
kRight         = keyboard_check(vk_right)          || gamepad_axis_value(0, gp_axislh) >  0.40 || keyboard_check(ord("D"));
kUp            = keyboard_check(vk_up)             || gamepad_axis_value(0, gp_axislv) < -0.40 || keyboard_check(ord("W"));;
kDown          = keyboard_check(vk_down)           || gamepad_axis_value(0, gp_axislv) >  0.75 || keyboard_check(ord("S"));
kDownPressed   = keyboard_check_pressed(vk_down)   || gamepad_axis_value(0, gp_axislv) >  0.75 || keyboard_check_pressed(ord("S")); 
kYtest         = false;//keyboard_check_pressed(ord('Y'))  || false;

kJump          = false;//keyboard_check_pressed(ord('X'))  || gamepad_button_check_pressed(0, gp_face1)  || keyboard_check_pressed(ord("W"))  ||keyboard_check_pressed(vk_up);
kJumpRelease   = false;//keyboard_check_released(ord('X')) || gamepad_button_check_released(0, gp_face1) || keyboard_check_released(ord("W")) ||keyboard_check_released(vk_up);
kJumpHeld      = false;//keyboard_check(ord('X'))          || gamepad_button_check(0, gp_face1)          || keyboard_check(ord("W"))          ||keyboard_check(vk_up);

kAction        = keyboard_check(ord('Z'))          || gamepad_button_check_pressed(0, gp_face1)  || keyboard_check(vk_space);
kActionRelease = keyboard_check_released(ord('Z')) || gamepad_button_check_pressed(0, gp_face1)  || keyboard_check_released(vk_space);
kActionPress   = keyboard_check_pressed(ord('Z'))  || gamepad_button_check_pressed(0, gp_face1);

k2Action       = keyboard_check(ord('X'))          || gamepad_button_check_pressed(0, gp_face2);
k2ActionRelease= keyboard_check_released(ord('X')) || gamepad_button_check_pressed(0, gp_face2);
k2ActionPress  = keyboard_check_pressed(ord('X'))  || gamepad_button_check_pressed(0, gp_face2);

k3Action       = keyboard_check(ord('C'))          || gamepad_button_check_pressed(0, gp_face3);
k3ActionRelease= keyboard_check_released(ord('C')) || gamepad_button_check_pressed(0, gp_face3);
k3ActionPress  = keyboard_check_pressed(ord('C'))  || gamepad_button_check_pressed(0, gp_face3);

/*
clickOne       = mouse_check_button(mb_left) || gamepad_button_check(0,gp_shoulderrb);
clickTwo       = mouse_check_button(mb_right)|| gamepad_button_check(0,gp_shoulderlb);
click          = clickOne                    || clickTwo;*/

// Movement ///////////////////////////////////////////////////////////////////

// Apply the correct form of acceleration and friction
var tempAccel, tempFric, tempSkid, tempVxMax;

tempAccel = groundAccel;
tempFric  = groundFric;
tempSkid  = groundSkid;

tempVxMax = vxMax;
tempVyMax = vxMax;


//Check for diagonals
if((kLeft || kRight)&&(kUp||kDown)){
    tempAccel /= sqrt(2);
    tempFric  /= sqrt(2);
    tempSkid  /= sqrt(2);

    tempVxMax /= sqrt(2);
    tempVyMax /= sqrt(2);
}
// Left 
if (kLeft && !kRight) {
    angle = 180;
    swordBBOX = bbox_left;
    facing =-1;
    // Apply acceleration left
    if (vx > 0) {
        vx = Approach(vx, 0, tempSkid);
        action = SKID;
    } else {
        vx = Approach(vx, -tempVxMax, tempAccel);
        action  = RUN;
    } 
// Right
} else if (kRight && !kLeft) {
    angle=0;
    swordBBOX = bbox_right;
    facing = 1;
    // Apply acceleration right
    if (vx < 0){
            vx = Approach(vx, 0, tempSkid);   
            action = SKID;
        } 
    else{
        vx = Approach(vx, tempVxMax, tempAccel);
        action  = RUN;
    }
}
// Friction
else{
    facing = 0;
    vx = Approach(vx,0,tempFric);
}

// Up
if (kUp && !kDown) {
    angle=90;
    swordBBOX = bbox_top;
    facingY =-1;
    // Apply acceleration left
    if (vy > 0) {
        vy = Approach(vy, 0, tempSkid);
        action = SKID;
    } else {
        vy = Approach(vy, -tempVyMax, tempAccel);
        action  = RUN;
    } 
// Down
} else if (kDown && !kUp) {
    angle=270;
    swordBBOX = bbox_bottom;
    facingY = 1;
    // Apply acceleration right
    if (vy < 0){
            vy = Approach(vy, 0, tempSkid);   
            action = SKID;
        } 
    else{
        vy = Approach(vy, tempVyMax, tempAccel);
        action  = RUN;
    }
}
//Friction
else{
    facingY = 0;
    vy = Approach(vy,0,tempFric);
}

//Facing
if(facing==0&&facingY=0){
    facing = oldFacing;
    facingY = oldFacingY;
}

if(facing!=0 && facingY!=0){
    facingY=0;
    angle = abs((90*facing)-90);
}

//Stop when swinging
if(wack){
    vx=0;
    vy=0;
}
