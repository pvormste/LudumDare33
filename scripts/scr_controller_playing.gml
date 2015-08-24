if (!obj_controller.firstStart && !obj_controller.next && global.soldiers == 0 && global.tanks == 0) {
    obj_controller.next = true;
    obj_controller.alarm[0] = 3*room_speed;
    global.state = State.between;
    
    // Sound
    obj_controller.sndC1played = false;
    obj_controller.sndC2played = false;
    obj_controller.sndC3played = false;
    obj_controller.sndC4played = false;
}
