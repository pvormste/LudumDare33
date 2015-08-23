obj = argument0;
spawnY = argument1;

// Spawn outside screen
leftBorder = view_xview[0];
rightBorder = view_xview[0] + view_wview[0];

if(irandom(9) % 2 == 0) {
    spawnX = irandom(leftBorder);
}
else {
    spawnX = irandom_range(rightBorder, room_width);
}

instance_create(spawnX, spawnY, obj);
