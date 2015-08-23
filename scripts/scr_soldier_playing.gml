// Movement
move_towards_point(obj_monster.x, y, spd);

var dtm = distance_to_object(obj_monster);
var dte = distance_to_object(obj_enemy);

if((dtm < 100 || abs(obj_monster.x - x) < 100)  && !goBack) {
    speed = 0;
}

if(dte < 15 && !goBack) {
    goBack = true;
}
else if(dte >= 15 && goBack) {
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
    alarm[0] = 2*room_speed;

    with(instance_create(x, y, obj_s_bullet)) {
        aim_x = obj_monster.x;
        aim_y = obj_monster.y - 30;
        direction = point_direction(x, y, aim_x, aim_y);
        image_angle = point_direction(x, y, aim_x, aim_y);      
    }
}
