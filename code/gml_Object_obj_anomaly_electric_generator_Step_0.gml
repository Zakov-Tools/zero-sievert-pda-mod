if scr_chance(100)
{
    var d = 10
    var a = (19 << 0)
    var c = obj_particles_controller
    part_emitter_region(c.particles_system[a], c.partciles_emitter[a], (x - d), (x + d), (y - d), (y + d), 1, 1)
    part_emitter_burst(c.particles_system[a], c.partciles_emitter[a], c.particles_type[a], c.particle_amount[a])
}
var normal_spark = 80
if instance_exists(obj_player)
{
    if (point_distance(obj_player.x, obj_player.y, x, y) < 112)
    {
        normal_spark = 4
        if scr_chance(35)
        {
            var dis_ = (point_distance(obj_player.x, obj_player.y, x, y) + irandom_range(-4, 10))
            var dir_ = point_direction(x, y, obj_player.x, obj_player.y)
            scr_create_spark(dis_, dir_)
            scr_anomaly_damage(damage)
            with (obj_player)
            {
                scr_sound_at_position(snd_electric_spark, false, 96, 16)
                instance_create_depth(x, y, 0, obj_hud_get_hit)
                obj_player.hit_shader = 1
                obj_player.alarm[3] = obj_player.hit_shader_time
            }
        }
    }
}
if instance_exists(obj_npc_parent)
{
    var near = instance_nearest(x, y, obj_npc_parent)
    if (point_distance(near.x, near.y, x, y) < 112)
    {
        normal_spark = 4
        if scr_chance(35)
        {
            dis_ = (point_distance(near.x, near.y, x, y) + irandom_range(-4, 10))
            dir_ = point_direction(x, y, near.x, near.y)
            scr_create_spark(dis_, dir_)
            with (near)
            {
                hp -= 0.6
                scr_sound_at_position(snd_electric_spark, false, 96, 16)
            }
        }
    }
}
if scr_chance(normal_spark)
{
    if scr_chance(70)
    {
        var cc = choose(372, 371)
        scr_sound_at_position(cc, false, 380, 96)
    }
    dis_ = (irandom(96) + 32)
    dir_ = irandom(360)
    scr_create_spark(dis_, dir_)
}
