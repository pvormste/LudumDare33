if (!obj_controller.firstStart && !obj_controller.next && global.soldiers == 0 && global.tanks == 0) {
    obj_controller.next = true;
    obj_controller.alarm[0] = 3*room_speed;
    global.state = State.between;
}
