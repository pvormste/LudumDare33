if(obj_controller.alarm[0] <= 3*room_speed && obj_controller.alarm[0] > 2*room_speed) {
    scr_draw_text_outline("Next wave in: 3", view_wview[0] / 2 - 45, 200);
    
    if(!obj_controller.sndC1played) {
        audio_play_sound(snd_countdown1, 10, false);
        obj_controller.sndC1played = true;
    }
    
}
else if(obj_controller.alarm[0] <= 2*room_speed && obj_controller.alarm[0] > 1*room_speed) {
    scr_draw_text_outline("Next wave in: 2", view_wview[0] / 2 - 45, 200);
    
    if(!obj_controller.sndC2played) {
        audio_play_sound(snd_countdown1, 10, false);
        obj_controller.sndC2played = true;
    }
}

else if(obj_controller.alarm[0] <= 1*room_speed && obj_controller.alarm[0] > 1) {
    scr_draw_text_outline("Next wave in: 1", view_wview[0] / 2 - 45, 200);
    
    if(!obj_controller.sndC3played) {
        audio_play_sound(snd_countdown1, 10, false);
        obj_controller.sndC3played = true;
    }
}

else if(obj_controller.alarm[0] <= 1 && !obj_controller.sndC4played) {
    audio_play_sound(snd_countdown2, 10, false);
    obj_controller.sndC4played = true;
}


