a = (-a)
var o = obj_controller
var h = (floor(o.sleep_h_hour[o.sleep_hour]) * 60)
var m = (frac(o.sleep_h_hour[o.sleep_hour]) * 60)
var tot_m = (h + m)
var k1 = 1
var k2 = 1
var k3 = 1
if (obj_player.x < 340 && obj_player.y > 846)
{
    k1 = global.sk_k[(50 << 0)]
    k2 = global.sk_k[(51 << 0)]
}
obj_player.fatigue += ((tot_m * obj_player.restore_fatigue) * k1)
obj_player.wound -= ((tot_m * obj_player.restore_wound) * k2)
obj_player.hp += (tot_m * obj_player.restore_hp)
obj_player.bleed -= 10
obj_player.energy -= (tot_m * obj_player.decay_energy)
obj_player.thirst -= (tot_m * obj_player.decay_thirst)
