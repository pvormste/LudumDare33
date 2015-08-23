scr_check_input();

// Movement
var isCollidingWithBuilding = !place_free(x - hspd, y) || !place_free(x + hspd, y)

if (left_key && !isCollidingWithBuilding) {
    hspeed = -hspd;
}
else if (right_key && !isCollidingWithBuilding) {
    hspeed = hspd;
}
else
    hspeed = 0;

// Mouse
if(mouse_x < x) {
    image_xscale = -1;
}
else {
    image_xscale = 1;
}
    
// Collision Check
x = min(x, room_width);
x = max(sprite_width/2, x);


repeat abs(vspd) if place_free(x, y + sign(vspd)) y += sign(vspd);



// Jump
if(!isCollidingWithBuilding) {
    if(canJump && !isJumping && jump_key) {
        vspeed = -2.2*vspd;
        gravity = 1
        canJump = false;
        isJumping = true;
    }
    else if(!canJump && isJumping && !place_free(x, y+1)) {
        canJump = true;
        isJumping = false;
        vspeed = 0;
    }
    else if(isJumping && vspeed >= 0) {
        gravity = 0;
        vspeed = 0;
    }
}
else {
    vspeed = -2.2*vspd;
    gravity = 1
    canJump = false;
    isJumping = true;
}


// Shoot
if(canShoot && fire_key) {
    canShoot = false;
    alarm[0] = 0.8*room_speed;
    
    if(image_xscale = 1) {
        inst = instance_create(x+28, y-106, obj_fire);
    }
    else {
        inst = instance_create(x-28, y-106, obj_fire);
    }
    
    with(inst){
        aim_x = mouse_x;
        aim_y = mouse_y;
        direction = point_direction(x, y, aim_x, aim_y);
        image_angle = point_direction(x, y, aim_x, aim_y);
    }
}


