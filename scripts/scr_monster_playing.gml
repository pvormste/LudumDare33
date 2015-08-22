scr_check_input();

if (left_key) {
    hspeed = -hspd;
    image_xscale = -1;
}
else if (right_key) {
    hspeed = hspd;
    image_xscale = 1;
}
else
    hspeed = 0;

    
// Collision Check
repeat abs(vspd) if place_free(x, y + sign(vspd)) y += sign(vspd);

// Jump
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


