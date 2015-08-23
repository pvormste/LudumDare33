var wave = argument0

switch(wave) {
    case 1:
        global.soldiers = round(4*wave*0.6);
        global.tanks = 0;
        break;
    case 2:
        global.soldiers = round(4*wave*0.6);
        global.tanks = round(2*wave*0.3);
    default:
        global.soldiers = round(4*wave*0.6);
        global.tanks = round(2*wave*0.3);
}

// Spawn soldiers
if(global.soldiers > 0)
    repeat(global.soldiers) scr_spawn(obj_soldier, 704);
    
if(global.tanks > 0)
    repeat(global.tanks) scr_spawn(obj_tank, 704);
