raggio = obj_controller.place_radius[ano_id]
raggio_anomaly_fire = (raggio / 2)
repeat (3)
{
    var xx = irandom_range(((-raggio_anomaly_fire) * 16), (raggio_anomaly_fire * 16))
    var yy = irandom_range(((-raggio_anomaly_fire) * 16), (raggio_anomaly_fire * 16))
    instance_create_depth((x + xx), (y + yy), (-y), obj_chest_cristallo_blu)
}
instance_create_depth(x, y, 0, obj_light_anomaly_electric)
