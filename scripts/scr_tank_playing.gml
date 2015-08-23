move_towards_point(obj_monster.x, y, spd);

var dtm = distance_to_object(obj_monster);
var dtt = distance_to_object(obj_tank);

if(dtm < 300 && !goBack) {
    speed = 0;
}

if(dtt < 25 && !goBack) {
    goBack = true;
}
else if(dtt >= 25 && goBack) {
    goBack = false;
}

if(goBack) {
    if(image_xscale == -1) {
        x += 1;
    }    
    else {
        x -= 1;
    }
}

// Shooting
if(canShoot) {
    canShoot = false;
    alarm[0] = 4.5*room_speed;

    with(instance_create(x, y, obj_s_bullet)) {
        aim_x = obj_monster.x;
        aim_y = obj_monster.y - 30;
        direction = point_direction(x, y, aim_x, aim_y);
        image_angle = point_direction(x, y, aim_x, aim_y);      
    }
}
