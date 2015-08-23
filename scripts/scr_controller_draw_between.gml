if(obj_controller.alarm[0] <= 3*room_speed && obj_controller.alarm[0] > 2*room_speed) {
    scr_draw_text_outline("Next wave in: 3", view_wview[0] / 2 - 45, 200);
}
else if(obj_controller.alarm[0] <= 2*room_speed && obj_controller.alarm[0] > 1*room_speed) {
    scr_draw_text_outline("Next wave in: 2", view_wview[0] / 2 - 45, 200);
}
else {
    scr_draw_text_outline("Next wave in: 1", view_wview[0] / 2 - 45, 200);
}
