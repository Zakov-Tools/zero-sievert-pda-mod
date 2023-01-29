var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
x = camx
y = camy
depth = -9850
a += (a_increase * a_factor)
if (a >= a_max)
    a_factor = (-a_factor)
if (a < 0)
    instance_destroy()
