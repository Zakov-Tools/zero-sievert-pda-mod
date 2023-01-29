hspd = lengthdir_x(spd, dir)
vspd = lengthdir_y(spd, dir)
scr_collision()
spd -= frizione
if (abs(spd) < (frizione + 0.1))
    spd = 0
depth = ((-y) + 8)
