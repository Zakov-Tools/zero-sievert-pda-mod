var a1 = 3
var a2 = 6
var a3 = 10
amount = choose(a1, a1, a1, a2, a2, a3)
repeat amount
    instance_create_depth(x, y, 0, obj_enemy_crow)
